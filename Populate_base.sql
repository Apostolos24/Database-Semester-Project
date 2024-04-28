USE cooking_show;

INSERT INTO countries VALUES ('Greece'),('Italy'),('France'),('Spain');

INSERT INTO cook(first_name,last_name,phone_number,birthdate,cook_status)
VALUES
('Gordon','Ramsay',4536136,STR_TO_DATE("August 10 2017", "%M %d %Y"),'Chef'),
('Deez','Nuts',4536137,STR_TO_DATE("August 10 1998", "%M %d %Y"),'A Cook');

INSERT INTO food_groups VALUES ('Vegetables','All the raw vegetables, e.g. lettuce, cabbage, carrot, tomato, cucumber, onion etc.
All the cooked vegetables, e.g. broccoli, cauliflower, zucchinis, weeds, beetroot etc.
Starchy vegetables, e.g. peas, corn, pumpkin
NOT including the potato and its variants','Salads');

INSERT INTO ingredients VALUES 
('Cucumber',10,1,'Vegetables'),
('Tomato',20,1,'Vegetables'),
('Olives',100,1,'Vegetables'),
('Pepper',5,1,'Vegetables');

INSERT INTO recipes (recipe_name,recipe_type,recipe_difficulty,recipe_desc,recipe_tip1,recipe_proteins,recipe_carbs,recipe_country) VALUES
('Greek salad','Cooking',2,'Classic greek salad','Best served with olive oil',7,50,'Greece');

--INSERT INTO requires_ingr (recipe,ingr_name,quantity) VALUES 
--('Greek salad','Cucumber',4),
--('Greek salad','Tomato',5),
--('Greek salad','Pepper',1);

INSERT INTO requires_ingr VALUES 
('Greek salad','Cucumber',4,NULL),
('Greek salad','Tomato',5,NULL),
('Greek salad','Olives',11,'Some'),
('Greek salad','Pepper',4,NULL);