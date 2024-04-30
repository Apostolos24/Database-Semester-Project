USE cooking_show;

-- Food groups
INSERT INTO food_groups VALUES
('Vegetables','Includes: All the raw vegetables, e.g. lettuce, cabbage, carrot, tomato, cucumber, onion etc. All the cooked vegetables, e.g. broccoli, cauliflower, zucchinis, weeds, beetroot etc. Starchy vegetables, e.g. peas, corn, pumpkin NOT including the potato and its variants','Vegeterian food'),
('Cereals and potatoes','Includes: Cereals like wheat, barley, rye, oats and rice. Also includes the cereal products like wheat, bread, simple and complex pastry like pies, pasta and breakfast cereal','Carbohydrates'),
('Dairy products','Includes milk and its products like yoghurt and cheese. However butter is NOT included (it belongs in the fat category)','High lactose dish'),
('Legumes','Includes lentils, beans, peas etc','Protein vegetarian food'),
('White meat','Includes chicken, turkey, duck, rabbit, birds and the products of those','Poultry dish'),
('Red meat', 'Includes beef, pork, lamb, deer, goat etc','Meat dish'),
('Eggs','Includes eggs of any kind and its forms','Egg dish'),
('Fish and seafood','Includes all types of fish and all types of seafood such as octopii, squids, shrimps, lobster, oysters, cuttlefish etc','Seafood'),
('Fat and oils','Includes butters, olives, olive oil and all types of oils. Also includes dry nuts like peanuts, hazelnuts, almonds etc','High calories');

-- Countries
INSERT INTO countries VALUES ('Greece'),('Italy'),('France'),('Spain'),('Japan'),('India'),('Sweden'),('Jamaica'),('Portugal'),('China'),('Arabia'),('Brazil'),('Argetina'),
('Poland'),('Russia'),('Hungary'),('Germany'),('Thailand'),('Turkey'),('Pakistan'),('Korea'),('Finland'),('Hebrew'),('Georgia'),('Marocco'),('Lebanon'),('Romania'),('Serbia'),
('Croatia'),('Sri Lanka'),('Israel'),('Iran'),('Iraq'),('Czech Republic'),('Slovakia'),('Slovenia'),('Mexico'),('Britain'),('Syria');

INSERT INTO cook(first_name,last_name,phone_number,birthdate,cook_status)
VALUES
('Joshua','Collins',9392901079474,'1974-09-19','C Cook'),
('John','Butler',6112920326372,'1994-04-28','A Cook'),
('Tiffany','Arnold',0938211088429,'1986-04-12','B Cook'),
('Kimberly','Davis',1283957732210,'1987-02-25','A Cook'),
('Christie','Cantrell',9498563550187,'2003-01-14','B Cook'),
('Jack','Harrell',4521523124094,'1993-12-22','Sous Chef'),
('Jamie','Lara',7365100593964,'1986-10-18','Sous Chef'),
('Taylor','Sanchez',9441762906202,'2003-07-30','Chef'),
('James','Travis',6593499028511,'1982-08-26','C Cook'),
('Robert','Spears',3159954949501,'1973-12-01','Chef'),
('Kathleen','Rowe',1263575808869,'1986-03-12','B Cook'),
('Laura','Wright',8388673895600,'1990-10-23','B Cook'),
('Christopher','Bennett',6685966460022,'1974-09-08','Sous Chef'),
('Jose','Johnson',6797992412289,'1990-03-17','Chef'),
('James','Davis',0187853865389,'1975-01-03','C Cook'),
('Michael','Glass',4450618025125,'2001-05-04','A Cook'),
('Todd','Fisher',1870439974052,'1976-03-24','Chef'),
('Tina','Thomas',0946826672825,'1993-10-12','Chef'),
('Monica','Mora',5308448431594,'1978-02-06','A Cook'),
('Benjamin','Martin',1613144736535,'1973-10-07','Sous Chef'),
('Ronald','Mccarthy',3764453743159,'1970-11-12','A Cook'),
('Karla','Lee',8125732216120,'1997-11-06','Chef'),
('Patricia','Arnold',5802212522421,'2003-07-25','A Cook'),
('Alexander','Lee',5267192598246,'1985-02-20','B Cook'),
('Alec','Campbell',8491356272602,'2000-12-24','C Cook'),
('Alexis','Friedman',1342462969133,'1988-02-28','C Cook'),
('Norma','Aguilar',4720254582199,'1998-12-20','Chef'),
('Tammie','Stone',5007570988484,'2003-05-18','Chef'),
('Angelica','Washington',9791450142950,'1979-04-11','B Cook'),
('Savannah','Garza',3997779531667,'1988-05-24','A Cook'),
('Allen','Torres',4972681688407,'1972-07-14','Sous Chef'),
('Kayla','Bryant',0361804131090,'1970-10-23','Chef'),
('Jesus','Colon',8001962090196,'1996-11-26','C Cook'),
('Robert','Torres',9219562891991,'1986-08-21','A Cook'),
('Brent','Ortiz',3484447748007,'1973-12-27','B Cook'),
('Anthony','Gibson',1951980593746,'1994-11-20','C Cook'),
('Samantha','Kim',3482870522390,'2003-12-12','Sous Chef'),
('Daniel','Gonzalez',9338774008226,'1996-03-16','C Cook'),
('Edward','Morris',4464450844756,'1977-09-16','C Cook'),
('Christopher','Harding',6812737062724,'1990-05-22','B Cook'),
('Amy','Weber',2036398006831,'1985-04-29','C Cook'),
('David','Hill',8309839240562,'1975-04-26','Sous Chef'),
('Michael','Ferguson',0929628138425,'2002-09-19','A Cook'),
('Jenny','Hansen',9475063715941,'1977-04-12','C Cook'),
('Theodore','Ross',0502331004581,'1987-04-21','A Cook'),
('Chelsea','Cochran',8220287636081,'1988-08-28','Chef'),
('Sandy','Carney',7568263966175,'1977-05-09','C Cook'),
('Ryan','Smith',8356318365435,'1979-05-05','Chef'),
('Shannon','Rivas',1082655505052,'1989-04-01','A Cook'),
('Angela','Esparza',9299562100185,'1986-09-17','A Cook'),
('Austin','Lara',5910452712335,'1986-08-07','Sous Chef'),
('David','Jefferson',3680067413234,'1980-01-31','B Cook'),
('Matthew','Davis',6282038435707,'2000-11-22','A Cook'),
('Jessica','Meza',4262847435420,'1997-11-10','Sous Chef'),
('Melissa','Stephens',9959761799736,'1978-04-19','B Cook'),
('Katherine','Lee',0135015038423,'1986-09-25','A Cook'),
('Rebecca','Thornton',2795528747059,'2003-06-10','B Cook'),
('Miguel','Taylor',9058128566309,'1986-03-06','C Cook'),
('Jacob','Carter',9906509085198,'1991-03-23','Chef'),
('Brenda','Herring',6647978413937,'1985-04-22','Sous Chef'),
('Theresa','Johnson',8194476319292,'2000-05-05','A Cook'),
('Erin','Miller',9261601507623,'1996-11-05','C Cook'),
('Bryan','Odonnell',8254803481167,'1998-07-24','Sous Chef'),
('Justin','Casey',5059413449367,'1983-05-29','Chef'),
('Jessica','Johnson',1299022029036,'1976-06-20','B Cook'),
('David','Perez',9715492744952,'1981-01-18','B Cook'),
('Shannon','Lopez',5462069227615,'1990-06-16','Sous Chef'),
('Bruce','Jordan',5708469747780,'1974-03-16','Chef'),
('Mckenzie','Tapia',5932711563446,'1994-10-23','A Cook'),
('Rachel','Macias',3987699359206,'1985-04-20','C Cook'),
('John','Knight',6998946030308,'1979-04-18','Sous Chef'),
('Karen','Hansen',9674103921711,'1988-06-14','B Cook'),
('David','Finley',0819547022250,'1979-04-30','A Cook'),
('Christy','Barnes',2320030349795,'1999-01-06','Chef'),
('Sierra','Palmer',3770131556755,'1991-06-02','C Cook'),
('Amber','Davidson',1593451611159,'2002-06-22','Chef'),
('Jeffrey','Robertson',8057574232104,'1989-08-10','B Cook'),
('Stacey','Wilson',5596504269886,'2002-11-25','Sous Chef'),
('Amber','Rodriguez',9911599590472,'2003-12-19','A Cook'),
('John','Curtis',7816010183011,'1987-11-18','A Cook'),
('Jared','Kane',5960631171507,'1986-09-26','C Cook'),
('Christine','Malone',2268257822774,'1984-10-14','Sous Chef'),
('Stephen','Thomas',6600044712442,'1975-07-09','C Cook'),
('Scott','Williams',8126790430504,'2003-07-18','Chef'),
('Richard','Johnson',3076145908361,'1979-05-15','Chef'),
('Terry','Russell',0949550545195,'2002-01-20','Chef'),
('Zachary','Smith',7669036954879,'2003-12-18','C Cook'),
('Angela','Johnston',4507156665982,'1973-03-21','A Cook'),
('David','Chambers',7613211481056,'1997-05-11','C Cook'),
('Tricia','Jones',9659125728338,'1980-05-03','Chef'),
('Charles','Leon',7509560928567,'1985-09-05','C Cook'),
('James','Hudson',6159108306742,'1983-08-13','B Cook'),
('Angela','Rhodes',3986856169576,'2002-10-09','Chef'),
('Tracie','Mccarty',8693819451688,'1995-03-01','Chef'),
('Terry','Wright',2670390465211,'1983-11-08','Sous Chef'),
('Logan','Ortiz',6439869812006,'1999-09-18','A Cook'),
('Kevin','Herring',4612445944349,'1989-06-20','Sous Chef'),
('William','Carter',2662400191295,'1981-10-13','C Cook'),
('Jason','Middleton',8447291658498,'1977-09-05','A Cook');

-- ('Gordon','Ramsay',4536136,STR_TO_DATE("August 10 2017", "%M %d %Y"),'Chef'),

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


CALL create_season();
CALL create_season();
