CREATE DATABASE cooking_show;
USE cooking_show;

CREATE TABLE countries (
    country_name VARCHAR(20),
    PRIMARY KEY (country_name)
);

CREATE TABLE recipes (
    recipe_name VARCHAR(30),
    recipe_type ENUM('Cooking','Pastry') NOT NULL,
    recipe_difficulty TINYINT(5) NOT NULL,
    recipe_desc TEXT NOT NULL,
    recipe_tip1 VARCHAR(100),
    recipe_tip2 VARCHAR(100),
    recipe_tip3 VARCHAR(100),
    recipe_proteins NUMERIC(6,2),
    recipe_carbs NUMERIC(6,2),
    recipe_calories NUMERIC(6,2), -- Calculated through a function
    recipe_country VARCHAR(20),
    recipe_photo VARCHAR(200),
    recipe_photo_desc TEXT,
    FOREIGN KEY (recipe_country) REFERENCES countries(country_name),
    PRIMARY KEY (recipe_name)
);

-- Recipe table needs images

CREATE TABLE meal_type (
    recipe VARCHAR(30),
    meal VARCHAR(20),
    FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),   -- CONSTRAINT fk_meal_type FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),
    PRIMARY KEY (recipe,meal)                                -- CONSTRAINT pk_meal_type PRIMARY KEY (recipe,meal)
);

CREATE TABLE tags (
    recipe VARCHAR(30),
    tag_name VARCHAR(20),
    FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),
    PRIMARY KEY (recipe,tag_name)
);

CREATE TABLE thematic_section (
    sec_name VARCHAR(20),
    sec_desc VARCHAR(100),
    PRIMARY KEY (sec_name)
);

CREATE TABLE recipe_belongs_to (
    recipe VARCHAR(30),
    them_sec VARCHAR(20),
    FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),
    FOREIGN KEY (them_sec) REFERENCES thematic_section (sec_name),
    PRIMARY KEY (recipe,them_sec)
);

CREATE TABLE equipment (
    eq_name VARCHAR(50),
    eq_instructions VARCHAR(100),
    eq_photo VARCHAR(200),
    eq_photo_desc VARCHAR(50),
    PRIMARY KEY (eq_name)
);

-- Equipment table requires images

CREATE TABLE requires_eq (
    recipe VARCHAR(30),
    eq_name VARCHAR(20),
    quantity INT UNSIGNED NOT NULL,
    FOREIGN KEY (recipe) REFERENCES recipes(recipe_name),
    FOREIGN KEY (eq_name) REFERENCES equipment(eq_name),
    PRIMARY KEY (recipe,eq_name)
);

CREATE TABLE food_groups (
    group_name VARCHAR(20),
    group_desc VARCHAR(100),
    recipe_characterisation VARCHAR(30),
    PRIMARY KEY (group_name)
);

CREATE TABLE ingredients (
    ingr_name VARCHAR(20),
    ingr_calories NUMERIC(6,2),
    allows_loose_units INT,
    group_name VARCHAR(20),
    FOREIGN KEY (group_name) REFERENCES groups(group_name),
    PRIMARY KEY (ingr_name)
);

-- Ingredients table requires images

CREATE TABLE requires_ingr (
    recipe VARCHAR(30),
    ingr_name VARCHAR(20),
    quantity INT UNSIGNED,
    undefined_quantity ENUM ('Some'),
    FOREIGN KEY (recipe) REFERENCES recipes(recipe_name),
    FOREIGN KEY (ingr_name) REFERENCES ingredients(ingr_name),
    PRIMARY KEY (recipe,ingr_name)
);

CREATE TABLE main_ingr (
    recipe VARCHAR(30),
    ingr_name VARCHAR(20),
    FOREIGN KEY (recipe) REFERENCES recipes(recipe_name),
    FOREIGN KEY (ingr_name) REFERENCES ingredients(ingr_name),
    PRIMARY KEY (recipe,ingr_name)
);

CREATE TABLE steps (
    instruction VARCHAR(50),
    PRIMARY KEY (instruction)
);

CREATE TABLE recipe_steps (
    recipe VARCHAR(30),
    step VARCHAR(20),
    step_num INT UNSIGNED,
    FOREIGN KEY (recipe) REFERENCES recipes(recipe_name),
    FOREIGN KEY (step) REFERENCES steps(instruction),
    PRIMARY KEY (recipe,step)
);

CREATE TABLE cook (
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    phone_number INT UNSIGNED UNIQUE,
    birthdate DATE DEFAULT(STR_TO_DATE("January 1 1900", "%M %d %Y")),
    age INT, -- Calculated through a function
    cook_status ENUM('C Cook','B Cook','A Cook','Sous Chef','Chef') NOT NULL,
    cook_photo VARCHAR(200),
    PRIMARY KEY (first_name,last_name)
);

-- Cook table requires images

CREATE TABLE expertise (
    cook_first_name VARCHAR(20),
    cook_last_name VARCHAR(20),
    country VARCHAR(20),
    FOREIGN KEY (country) REFERENCES countries(country_name),
    FOREIGN KEY (cook_first_name,cook_last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (cook_first_name,cook_last_name,country)
);

CREATE TABLE episodes (
    episode INT,
    ep_image VARCHAR(200),
    PRIMARY KEY (episode)
);

-- Episodes table requires images

CREATE TABLE is_a_critic (
    ep_num INT,
    cook_first_name VARCHAR(20),
    cook_last_name VARCHAR(20),
    id TINYINT(3),
    FOREIGN KEY (ep_num) REFERENCES episodes(episode),
    FOREIGN KEY (cook_first_name,cook_last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (ep_num,cook_first_name,cook_last_name)
);

CREATE TABLE is_a_contestant (
    ep_num INT,
    cook_first_name VARCHAR(20),
    cook_last_name VARCHAR(20),
    recipe VARCHAR(30),
    grade1 TINYINT(5),
    grade2 TINYINT(5),
    grade3 TINYINT(5),
    FOREIGN KEY (recipe) REFERENCES recipes (recipe_name),
    FOREIGN KEY (ep_num) REFERENCES episodes(episode),
    FOREIGN KEY (cook_first_name,cook_last_name) REFERENCES cook (first_name,last_name),
    PRIMARY KEY (ep_num,cook_first_name,cook_last_name)
);

CREATE TABLE ep_countries (
    ep_num INT,
    ep_country VARCHAR(20),
    FOREIGN KEY (ep_country) REFERENCES countries(country_name),
    FOREIGN KEY (ep_num) REFERENCES episodes(episode),
    PRIMARY KEY (ep_num,ep_country)
);


-- INSERT INTO cook VALUES ('Gordon','Ramsay',4536136,STR_TO_DATE("August 10 2017", "%M %d %Y"),TIMESTAMPDIFF(YEAR,STR_TO_DATE("August 10 2017", "%M %d %Y"),CURRENT_DATE()),'Chef');
