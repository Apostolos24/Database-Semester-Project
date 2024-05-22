-- DROP DATABASE IF EXISTS cooking_show;

CREATE DATABASE cooking_show;
USE cooking_show;

CREATE TABLE countries (
    country_name VARCHAR(20),
    PRIMARY KEY (country_name)
);

CREATE TABLE recipes (
    recipe_name VARCHAR(60),
    recipe_type ENUM('Cooking','Pastry','Beverage') NOT NULL,
    recipe_difficulty TINYINT NOT NULL,
    recipe_desc TEXT NOT NULL,
    recipe_tip1 VARCHAR(300),
    recipe_tip2 VARCHAR(300),
    recipe_tip3 VARCHAR(300),
    recipe_proteins NUMERIC(6,2),
    recipe_carbs NUMERIC(6,2),
    recipe_fats NUMERIC(6,2),
    recipe_calories NUMERIC(7,2), -- Calculated through a function (per portion)
    country_name VARCHAR(20),
    recipe_photo VARCHAR(200),
    recipe_photo_desc TEXT,
    prep_time SMALLINT UNSIGNED,
    execution_time SMALLINT UNSIGNED,
    portions TINYINT UNSIGNED,
    FOREIGN KEY (country_name) REFERENCES countries(country_name),
    PRIMARY KEY (recipe_name)
);

CREATE INDEX find_recipes ON recipes (recipe_name);

CREATE TABLE meal_type (
    recipe_name VARCHAR(60),
    meal VARCHAR(20),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),   -- CONSTRAINT fk_meal_type FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),
    PRIMARY KEY (recipe_name,meal)                                -- CONSTRAINT pk_meal_type PRIMARY KEY (recipe,meal)
);

CREATE TABLE tags (
    recipe_name VARCHAR(60),
    tag_name VARCHAR(20),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    PRIMARY KEY (recipe_name,tag_name)
);

CREATE INDEX get_tags ON tags (recipe_name);

CREATE TABLE thematic_section (
    sec_name VARCHAR(50),
    sec_desc VARCHAR(200),
    PRIMARY KEY (sec_name)
);

CREATE TABLE recipe_belongs_to (
    recipe_name VARCHAR(60),
    sec_name VARCHAR(50),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    FOREIGN KEY (sec_name) REFERENCES thematic_section (sec_name),
    PRIMARY KEY (recipe_name,sec_name)
);

CREATE TABLE equipment (
    eq_name VARCHAR(50),
    eq_instructions VARCHAR(100),
    eq_photo VARCHAR(400),
    eq_photo_desc VARCHAR(50),
    PRIMARY KEY (eq_name)
);

CREATE TABLE requires_eq (
    recipe_name VARCHAR(60),
    eq_name VARCHAR(50),
    quantity TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (eq_name) REFERENCES equipment(eq_name),
    PRIMARY KEY (recipe_name,eq_name)
);

CREATE INDEX get_equipment ON requires_eq (recipe_name);

CREATE TABLE food_groups (
    group_name VARCHAR(80),
    group_desc VARCHAR(1000),
    recipe_characterisation VARCHAR(30),
    PRIMARY KEY (group_name)
);

CREATE TABLE ingredients (
    ingr_name VARCHAR(50) UNIQUE,
    ingr_calories NUMERIC(6,2),  -- per gr or ml tsp or tbsp or unit or cup
    allows_loose_units TINYINT,
    group_name VARCHAR(80),
    unit ENUM('gr','ml','tsp','tbsp','unit','cups'),
    FOREIGN KEY (group_name) REFERENCES food_groups(group_name),
    PRIMARY KEY (ingr_name)
);

CREATE INDEX get_ingredients ON ingredients (ingr_name);

CREATE TABLE requires_ingr (
    recipe_name VARCHAR(60),
    ingr_name VARCHAR(50),
    quantity SMALLINT UNSIGNED,
    undefined_quantity ENUM ('Some','Little','Much','A lot','pinch','to taste','as needed','to garnish','slices','stalks','cloves'),
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (ingr_name) REFERENCES ingredients(ingr_name),
    PRIMARY KEY (recipe_name,ingr_name)
);

CREATE INDEX find_recipe_ingredients ON requires_ingr (recipe_name);

CREATE TABLE main_ingr (
    recipe_name VARCHAR(60),
    ingr_name VARCHAR(50),
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (ingr_name) REFERENCES ingredients(ingr_name),
    PRIMARY KEY (recipe_name,ingr_name)
);

CREATE INDEX get_main_ingredient ON main_ingr (recipe_name);

CREATE TABLE recipe_steps (
    recipe_name VARCHAR(60),
    instruction VARCHAR(1000),
    step_num INT UNSIGNED,
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    PRIMARY KEY (recipe_name,step_num)
);

CREATE TABLE cook (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    phone_number VARCHAR(15) UNIQUE,
    birthdate DATE,
    age TINYINT UNSIGNED, -- Calculated through a function
    years_of_expertise TINYINT UNSIGNED,
    cook_status ENUM('C Cook','B Cook','A Cook','Sous Chef','Chef') NOT NULL DEFAULT 'C Cook',
    cook_photo VARCHAR(400),
    PRIMARY KEY (first_name,last_name)
);

CREATE INDEX find_cook ON cook (last_name);


CREATE TABLE expertise (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    country_name VARCHAR(20),
    FOREIGN KEY (country_name) REFERENCES countries(country_name),
    FOREIGN KEY (first_name,last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (first_name,last_name,country_name)
);

CREATE TABLE episodes (
    episode INT,
    episode_year INT UNSIGNED,
    ep_image VARCHAR(200),
    PRIMARY KEY (episode_year,episode)
);


CREATE TABLE is_a_critic (
    episode_year INT UNSIGNED,
    episode INT,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    id TINYINT UNSIGNED,
    FOREIGN KEY (episode_year,episode) REFERENCES episodes(episode_year,episode),
    FOREIGN KEY (first_name, last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (episode_year,episode,first_name,last_name)
);

CREATE INDEX critic_cook_name ON is_a_critic (last_name);

CREATE TABLE is_a_contestant (
    episode_year INT UNSIGNED,
    episode INT,
    country_name VARCHAR(20),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    recipe_name VARCHAR(60),
    grade1 TINYINT UNSIGNED,
    grade2 TINYINT UNSIGNED,
    grade3 TINYINT UNSIGNED,
    FOREIGN KEY (country_name) REFERENCES countries(country_name),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    FOREIGN KEY (episode_year,episode) REFERENCES episodes(episode_year,episode),
    FOREIGN KEY (first_name,last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (episode_year,episode,country_name)
);

CREATE INDEX contest_cook_name ON is_a_contestant (last_name);
CREATE INDEX contest_country_name ON is_a_contestant (country_name);

-- Function to turn cook status into int
DELIMITER //
CREATE FUNCTION status_to_int (cook_status ENUM('C Cook','B Cook','A Cook','Sous Chef','Chef'))
RETURNS INT 
DETERMINISTIC
BEGIN 
    DECLARE stat INT;
    IF cook_status = 'C Cook' THEN 
        SET stat = 1;
    ELSEIF cook_status = 'B Cook' THEN
        SET stat = 2; 
    ELSEIF cook_status = 'A Cook' THEN
        SET stat = 3; 
    ELSEIF cook_status = 'Sous Chef' THEN
        SET stat = 4;
    ELSEIF cook_status = 'Chef' THEN
        SET stat = 5; 
    END IF;
    RETURN (stat);
END//
DELIMITER ;

-- Trigger for adding age to cooks
DELIMITER //
CREATE TRIGGER cook_age BEFORE INSERT ON cook FOR EACH ROW 
BEGIN
    SET new.age=TIMESTAMPDIFF(YEAR,new.birthdate,CURRENT_DATE());
END;
//
DELIMITER ;

-- Trigger for initializing calories of a recipe to 0
DELIMITER //
CREATE TRIGGER initialize_calories BEFORE INSERT ON recipes FOR EACH ROW 
BEGIN
    SET new.recipe_calories=0; 
END;
//
DELIMITER ;

-- Trigger for setting ingredient quantity to NULL when an ingredient doesn't have defined quantity 
DELIMITER //
CREATE TRIGGER some_quantity BEFORE INSERT ON requires_ingr FOR EACH ROW 
BEGIN
    DECLARE result INT;
    SELECT (CASE WHEN new.undefined_quantity IS NULL THEN new.quantity ELSE NULL END) INTO result;
    SET new.quantity=result; 
END;
//
DELIMITER ;


-- Trigger for updating recipe calories when adding an igredient to it TEST
DELIMITER //
CREATE TRIGGER recipe_calories BEFORE INSERT ON requires_ingr FOR EACH ROW 
BEGIN
    DECLARE calories NUMERIC(10,2);
    DECLARE quantity_ INT;
    DECLARE unit_ VARCHAR(10);
    DECLARE portions_ TINYINT UNSIGNED;
    
    SELECT (CASE WHEN new.undefined_quantity IS NULL THEN new.quantity ELSE 0 END) INTO quantity_;  -- an ingeredient's calories will only contribute to the meal's calories if its quantity is well defined
    SELECT unit INTO unit_ FROM ingredients WHERE ingr_name=new.ingr_name;
    SELECT portions INTO portions_ FROM recipes WHERE recipe_name=new.recipe_name;
    SELECT ingr_calories INTO calories FROM ingredients WHERE ingr_name=new.ingr_name;
    
    IF unit_ = 'gr' OR unit_='ml' THEN
        SET calories = calories/100;
	ELSEIF unit_ IS NULL THEN
		SET calories = 0;
    END IF;
    
    UPDATE recipes
    SET recipe_calories=recipe_calories+calories*quantity_/portions_
    WHERE recipe_name=new.recipe_name;
END;
//
DELIMITER ;


-- POPULATING EPISODES

-- Table that sotres the year of the last season
CREATE TABLE current_year (
    ep_year INT PRIMARY KEY
);
INSERT INTO current_year VALUES (2023);

-- Stored procedure that generates 1 episode whithout checking for duplicates of previous episodes
DELIMITER //
CREATE PROCEDURE create_episode1 ( INOUT episode_num INT, IN episode_year INT )
BEGIN
    DECLARE count INT;
    DECLARE current_country VARCHAR(20);
    DECLARE cook_first_name VARCHAR(20);
    DECLARE cook_last_name VARCHAR(20);
    DECLARE recipe VARCHAR(60);
    DECLARE gradea INT;
    DECLARE gradeb INT;
    DECLARE gradec INT;
    DECLARE cur CURSOR FOR SELECT * FROM countries ORDER BY RAND() LIMIT 10;
    DECLARE cur2 CURSOR FOR SELECT first_name,last_name FROM cook ORDER BY RAND() LIMIT 3;

    OPEN cur;
    SET count=0;
    REPEAT
        FETCH cur INTO current_country;
        SELECT FLOOR(RAND() * 11) INTO gradea;
        SELECT FLOOR(RAND() * 11) INTO gradeb;
        SELECT FLOOR(RAND() * 11) INTO gradec;
        SELECT recipe_name INTO recipe FROM recipes WHERE country_name=current_country ORDER BY RAND() LIMIT 1;
        SELECT first_name,last_name INTO cook_first_name,cook_last_name FROM expertise WHERE country_name=current_country ORDER BY RAND() LIMIT 1; 
        INSERT INTO is_a_contestant (episode_year,episode,country_name,first_name,last_name,recipe_name,grade1,grade2,grade3) VALUES (episode_year,episode_num,current_country,cook_first_name,cook_last_name,recipe,gradea,gradeb,gradec);
        SET count=count+1;
    UNTIL count=10
    END REPEAT;
    CLOSE cur;

    SET count=1;
    OPEN cur2;
    REPEAT
        FETCH NEXT FROM cur2 INTO cook_first_name,cook_last_name;
        INSERT INTO is_a_critic VALUES (episode_year,episode_num,cook_first_name,cook_last_name,count);
        SET count=count+1;
    UNTIL count=4
    END REPEAT;
    CLOSE cur2;
END //
DELIMITER ;


-- Stored procedure that generates 1 episode while checking for duplicates of previous episodes
DELIMITER //
CREATE PROCEDURE create_episode2 ( INOUT episode_num INT, IN episode_year_ INT )
BEGIN
    DECLARE count INT;
    DECLARE current_country VARCHAR(20);
    DECLARE cook_first_name VARCHAR(20);
    DECLARE cook_last_name VARCHAR(20);
    DECLARE recipe VARCHAR(600);
    DECLARE gradea INT;
    DECLARE gradeb INT;
    DECLARE gradec INT;
    DECLARE cur CURSOR FOR SELECT country_name FROM countries WHERE country_name NOT IN (SELECT country_name FROM is_a_contestant WHERE (episode=episode_num-1 OR episode=episode_num-2) AND episode_year=episode_year_)  ORDER BY RAND() LIMIT 10;
    DECLARE cur2 CURSOR FOR SELECT first_name,last_name FROM cook WHERE CONCAT(first_name,' ',last_name) NOT IN (SELECT CONCAT(first_name,' ',last_name) FROM is_a_critic WHERE episode_year=episode_year_ AND (episode=episode-1 OR episode=episode-2)) ORDER BY RAND() LIMIT 3;

    OPEN cur;
    SET count=0;
    REPEAT
        FETCH cur INTO current_country;
        SELECT FLOOR(RAND() * 11) INTO gradea;
        SELECT FLOOR(RAND() * 11) INTO gradeb;
        SELECT FLOOR(RAND() * 11) INTO gradec;
        SELECT recipe_name INTO recipe FROM recipes WHERE country_name=current_country ORDER BY RAND() LIMIT 1;
        SELECT first_name,last_name INTO cook_first_name,cook_last_name FROM expertise WHERE (country_name=current_country AND CONCAT(first_name,' ',last_name) NOT IN (SELECT CONCAT(first_name,' ',last_name) FROM is_a_contestant WHERE episode_year=episode_year_ AND (episode=episode-1 OR episode=episode-2))) ORDER BY RAND() LIMIT 1;
        INSERT INTO is_a_contestant (episode_year,episode,country_name,first_name,last_name,recipe_name,grade1,grade2,grade3) VALUES (episode_year_,episode_num,current_country,cook_first_name,cook_last_name,recipe,gradea,gradeb,gradec);
        SET count=count+1;
    UNTIL count=10
    END REPEAT;
    CLOSE cur;

    SET count=1;
    OPEN cur2;
    REPEAT
        FETCH NEXT FROM cur2 INTO cook_first_name,cook_last_name;
        INSERT INTO is_a_critic VALUES (episode_year_,episode_num,cook_first_name,cook_last_name,count);
        SET count=count+1;
    UNTIL count=4
    END REPEAT;
    CLOSE cur2;
END //
DELIMITER ;

-- Stored procedure that creates the episodes of a season
DELIMITER //

CREATE PROCEDURE create_season ()
BEGIN 
    DECLARE current_yr INT;
    DECLARE ep INT;
    DECLARE current_country VARCHAR(20);

    -- Populating episodes table
    SET current_yr=(SELECT ep_year FROM current_year);
    SET current_yr=current_yr+1;
    UPDATE current_year SET ep_year=current_yr;
    SET ep=0;
    insert_episodes: LOOP
        SET ep=ep+1;
        INSERT INTO episodes(episode_year,episode) VALUES (current_yr,ep);
        IF ep=10 THEN 
            LEAVE insert_episodes;
        END IF;
    END LOOP;

    -- Populating is_a_contestant table
    SET ep=0;
    REPEAT 
        SET ep=ep+1;
        IF ep<3 THEN 
            CALL create_episode1(ep,current_yr);
        ELSE 
            CALL create_episode2(ep,current_yr);
        END IF;
    UNTIL ep=10
    END REPEAT;
END //

DELIMITER ;

-- Grant permissions
-- CREATE ROLE IF NOT EXISTS administrator; 
-- GRANT ALL ON cooking_show.* TO administrator;

-- CREATE USER IF NOT EXISTS 'apodimanos'@'localhost' IDENTIFIED BY 'dd';
-- GRANT ALL ON cooking_show.* TO 'apodimanos'@'localhost';

-- SELECT * from countries ORDER BY RAND() LIMIT 10;

-- SELECT * FROM food_groups LIMIT 1 OFFSET n-1;

-- SELECT country_name from countries WHERE country_name NOT IN (SELECT * FROM test) ORDER BY RAND() LIMIT 10;

-- INSERT INTO cook VALUES ('Gordon','Ramsay',4536136,STR_TO_DATE("August 10 2017", "%M %d %Y"),TIMESTAMPDIFF(YEAR,STR_TO_DATE("August 10 2017", "%M %d %Y"),CURRENT_DATE()),'Chef');
-- INSERT INTO cook VALUES ('Gordon','Ramsay',4536136,STR_TO_DATE("August 10 2017", "%M %d %Y"),TIMESTAMPDIFF(YEAR,STR_TO_DATE("August 10 2017", "%M %d %Y"),CURRENT_DATE()),'Chef');
