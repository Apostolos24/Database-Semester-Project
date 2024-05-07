CREATE DATABASE cooking_show;
USE cooking_show;

CREATE TABLE countries (
    country_name VARCHAR(20),
    PRIMARY KEY (country_name)
);

CREATE TABLE recipes (
    recipe_name VARCHAR(30),
    recipe_type ENUM('Cooking','Pastry') NOT NULL,
    recipe_difficulty TINYINT NOT NULL,
    recipe_desc TEXT NOT NULL,
    recipe_tip1 VARCHAR(100),
    recipe_tip2 VARCHAR(100),
    recipe_tip3 VARCHAR(100),
    recipe_proteins NUMERIC(6,2),
    recipe_carbs NUMERIC(6,2),
    recipe_fats NUMERIC(6,2),
    recipe_calories NUMERIC(6,2), -- Calculated through a function
    country_name VARCHAR(20),
    recipe_photo VARCHAR(200),
    recipe_photo_desc TEXT,
    prep_time SMALLINT UNSIGNED,
    execution_time SMALLINT UNSIGNED,
    FOREIGN KEY (country_name) REFERENCES countries(country_name),
    PRIMARY KEY (recipe_name)
);

CREATE TABLE meal_type (
    recipe_name VARCHAR(30),
    meal VARCHAR(20),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),   -- CONSTRAINT fk_meal_type FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),
    PRIMARY KEY (recipe_name,meal)                                -- CONSTRAINT pk_meal_type PRIMARY KEY (recipe,meal)
);

CREATE TABLE tags (
    recipe_name VARCHAR(30),
    tag_name VARCHAR(20),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    PRIMARY KEY (recipe_name,tag_name)
);

CREATE TABLE thematic_section (
    sec_name VARCHAR(20),
    sec_desc VARCHAR(100),
    PRIMARY KEY (sec_name)
);

CREATE TABLE recipe_belongs_to (
    recipe_name VARCHAR(30),
    sec_name VARCHAR(20),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    FOREIGN KEY (sec_name) REFERENCES thematic_section (sec_name),
    PRIMARY KEY (recipe_name,sec_name)
);

CREATE TABLE equipment (
    eq_name VARCHAR(50),
    eq_instructions VARCHAR(100),
    eq_photo VARCHAR(200),
    eq_photo_desc VARCHAR(50),
    PRIMARY KEY (eq_name)
);

CREATE TABLE requires_eq (
    recipe_name VARCHAR(30),
    eq_name VARCHAR(20),
    quantity TINYINT UNSIGNED NOT NULL,
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (eq_name) REFERENCES equipment(eq_name),
    PRIMARY KEY (recipe_name,eq_name)
);

CREATE TABLE food_groups (
    group_name VARCHAR(80),
    group_desc VARCHAR(1000),
    recipe_characterisation VARCHAR(30),
    PRIMARY KEY (group_name)
);

CREATE TABLE ingredients (
    ingr_name VARCHAR(20),
    ingr_calories NUMERIC(6,2),
    allows_loose_units TINYINT,
    group_name VARCHAR(80),
    unit ENUM('gr','ml',''),
    FOREIGN KEY (group_name) REFERENCES food_groups(group_name),
    PRIMARY KEY (ingr_name)
);

CREATE TABLE requires_ingr (
    recipe_name VARCHAR(30),
    ingr_name VARCHAR(20),
    quantity SMALLINT UNSIGNED,
    undefined_quantity ENUM ('Some'),
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (ingr_name) REFERENCES ingredients(ingr_name),
    PRIMARY KEY (recipe_name,ingr_name)
);

CREATE TABLE main_ingr (
    recipe_name VARCHAR(30),
    ingr_name VARCHAR(20),
    FOREIGN KEY (recipe_name) REFERENCES recipes(recipe_name),
    FOREIGN KEY (ingr_name) REFERENCES ingredients(ingr_name),
    PRIMARY KEY (recipe_name,ingr_name)
);


CREATE TABLE recipe_steps (
    recipe_name VARCHAR(30),
    instruction TEXT,
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
    cook_photo VARCHAR(200),
    PRIMARY KEY (first_name,last_name)
);


CREATE TABLE expertise (
    first_name VARCHAR(20),
    ast_name VARCHAR(20),
    country_name VARCHAR(20),
    FOREIGN KEY (country_name) REFERENCES countries(country_name),
    FOREIGN KEY (first_name,last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (first_name,last_name,country_name)
);

CREATE TABLE episodes (
    episode TINYINT UNSIGNED,
    episode_year SMALLINT UNSIGNED,
    ep_image VARCHAR(200),
    PRIMARY KEY (episode_year,episode)
);


CREATE TABLE is_a_critic (
	episode TINYINT UNSIGNED,
    episode_year SMALLINT UNSIGNED,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    id TINYINT UNSIGNED,
    FOREIGN KEY (episode_year,episode) REFERENCES episodes(episode_year,episode),
    FOREIGN KEY (first_name, last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (episode,episode_year,first_name,last_name)
);


CREATE TABLE is_a_contestant (
    episode TINYINT UNSIGNED,
    episode_year SMALLINT UNSIGNED,
    country_name VARCHAR(20),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    recipe_name VARCHAR(30),
    grade1 TINYINT UNSIGNED,
    grade2 TINYINT UNSIGNED,
    grade3 TINYINT UNSIGNED,
    FOREIGN KEY (country_name) REFERENCES countries(country_name),
    FOREIGN KEY (recipe_name) REFERENCES recipes (recipe_name),
    FOREIGN KEY (episode_year,episode) REFERENCES episodes(episode_year,episode),
    FOREIGN KEY (first_name,last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (episode_year,episode,country_name)
);

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

-- Trigger for updating recipe calories when adding an igredient to it
DELIMITER //
CREATE TRIGGER recipe_calories BEFORE INSERT ON requires_ingr FOR EACH ROW 
BEGIN
    DECLARE calories NUMERIC(6,2);
    DECLARE quantity INT;
    SELECT (CASE WHEN new.undefined_quantity IS NULL THEN new.quantity ELSE 0 END) INTO quantity; 
    SELECT (CASE WHEN new.undefined_quantity IS NULL THEN ingr_calories ELSE 0 END) 
    INTO calories FROM ingredients WHERE ingr_name=new.ingr_name; 
    UPDATE recipes
    SET recipe_calories=recipe_calories+calories*quantity
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
    DECLARE cur CURSOR FOR SELECT * FROM countries ORDER BY RAND() LIMIT 10;
    OPEN cur;
    SET count=0;
    REPEAT
        FETCH cur INTO current_country;
        INSERT INTO is_a_contestant (episode_year,episode,country_name) VALUES (episode_year,episode_num,current_country);
        SET count=count+1;
    UNTIL count=10
    END REPEAT;
    CLOSE cur;
END //
DELIMITER ;


-- Stored procedure that generates 1 episode while checking for duplicates of previous episodes
DELIMITER //
CREATE PROCEDURE create_episode2 ( INOUT episode_num INT, IN episode_year INT )
BEGIN
    DECLARE count INT;
    DECLARE current_country VARCHAR(20);
    DECLARE cur CURSOR FOR SELECT country_name FROM countries WHERE country_name NOT IN (SELECT country_name FROM is_a_contestant WHERE (episode=episode-1 OR episode=episode-2) AND episode_year=episode_year)  ORDER BY RAND() LIMIT 10;

    OPEN cur;
    SET count=0;
    REPEAT
        FETCH cur INTO current_country;
        INSERT INTO is_a_contestant (episode_year,episode,country_name) VALUES (episode_year,episode_num,current_country);
        SET count=count+1;
    UNTIL count=10
    END REPEAT;
    CLOSE cur;
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

CREATE TABLE test (
    ttest VARCHAR(100)
);

INSERT INTO test VALUES ('Greece'),('Italy'),('France'),('Spain'),('Japan'),('India'),('Sweden'),('Jamaica'),('Portugal'),('China'),('Arabia'),('Brazil'),('Argetina'),
('Poland'),('Russia'),('Hungary'),('Germany'),('Thailand'),('Turkey');

-- SELECT * from countries ORDER BY RAND() LIMIT 10;

-- SELECT * FROM food_groups LIMIT 1 OFFSET n-1;

-- SELECT country_name from countries WHERE country_name NOT IN (SELECT * FROM test) ORDER BY RAND() LIMIT 10;

-- INSERT INTO cook VALUES ('Gordon','Ramsay',4536136,STR_TO_DATE("August 10 2017", "%M %d %Y"),TIMESTAMPDIFF(YEAR,STR_TO_DATE("August 10 2017", "%M %d %Y"),CURRENT_DATE()),'Chef');
