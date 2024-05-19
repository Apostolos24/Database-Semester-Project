USE cooking_show;

-- Empties the base by deleting all rows from all tables before the insertions happens.
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE cook;
TRUNCATE TABLE countries;
TRUNCATE TABLE episodes;
TRUNCATE TABLE equipment;
TRUNCATE TABLE expertise;
TRUNCATE TABLE food_groups;
TRUNCATE TABLE ingredients;
TRUNCATE TABLE is_a_contestant;
TRUNCATE TABLE is_a_critic;
TRUNCATE TABLE main_ingr;
TRUNCATE TABLE meal_type;
TRUNCATE TABLE recipe_belongs_to;
TRUNCATE TABLE recipe_steps;
TRUNCATE TABLE recipes;
TRUNCATE TABLE requires_eq;
TRUNCATE TABLE requires_ingr;
TRUNCATE TABLE tags;
TRUNCATE TABLE thematic_section;
SET FOREIGN_KEY_CHECKS = 1;
-- 

-- Insertions 
INSERT INTO countries (country_name) VALUES
('Brazil'),
('Norway'),
('Japan'),
('Australia'),
('Mexico'),
('Germany'),
('Thailand'),
('Canada'),
('India'),
('Egypt'),
('Argetina'),
('Sweden'),
('Turkey'),
('Italy'),
('Russia'),
('Kenya'),
('France'),
('Saudi Arabia'),
('South Korea'),
('Spain'),
('Vietnam'),
('Netherlands'),
('Malta'),
('Peru'),
-- ('Switzerland'),
('Iran'),
('Indonesia'),
('Poland'),
('Nigeria'),
('United Kingdom'),
-- ('Philippines'),
-- ('Colombia'),
('Greece'),
-- ('Ukraine'),
('Chile'),
-- ('Malaysia'),
-- ('Israel'),
-- ('Belgium'),
('Portugal'),
('Pakistan'),
('Czech Republic'),
-- ('Austria'),
('Venezuela'),
('Hungary'),
('Bangladesh'),
-- ('Singapore'),
('Denmark'),
-- ('Finland'),
('United Arab Emirates'),
('China'),
('Ireland'),
-- ('New Zealand'),
('Morocco'),
-- ('Romania'),
-- ('Algeria'),
('Iraq'),
-- ('Ecuador'),
-- ('Qatar'),
('Kuwait'),
-- ('Oman'),
('Jamaica'),
('United States');
-- ('Bolivia');

INSERT INTO thematic_section (sec_name, sec_desc) VALUES
('Christmas', 'Recipes perfect for the holiday season.'),
('Seafood', 'Delicious dishes featuring various types of seafood.'),
('Vegetarian', 'Recipes suitable for vegetarians, with no meat or fish.'),
('Quick and Easy', 'Simple and fast recipes for busy days.'),
('Healthy Choices', 'Nutritious recipes that are good for your body.'),
('Comfort Food', 'Classic dishes that bring warmth and comfort.'),
('Grilling and BBQ', 'Recipes for outdoor cooking and barbecuing.'),
('Desserts and Sweeteners', 'Indulgent treats and desserts to satisfy your sweet tooth.'),
('Family Favorites', 'Recipes loved by both kids and adults.'),
('Gluten-Free', 'Recipes free from gluten, suitable for those with gluten sensitivities.'),
('Vegan Delights', 'Plant-based recipes free from animal products.'),
('Soup and Stew', 'Warm and comforting soups and stews for any occasion.'),
('Baking Adventures', 'Explore the world of baking with these delightful recipes.'),
('Budget-Friendly', 'Affordable recipes without sacrificing flavor.'),
('Brunch Ideas', 'Recipes perfect for a leisurely brunch with friends and family.'),
('Summer BBQ', 'Grilled dishes and sides perfect for summertime gatherings.'),
('Game Day Snacks', 'Snack ideas for watching sports or hosting game day parties.'),
('Picnic Treats', 'Portable and tasty dishes perfect for a picnic outdoors.'),
('Slow Cooker Favorites', 'Set it and forget it with these delicious slow cooker recipes.'),
('Date Night Dinners', 'Romantic recipes for a special evening at home.');

-- INSERT INTO recipe_belongs_to (recipe, them_sec) VALUES ('Spaghetti Carbonara', 'Christmas');

INSERT INTO equipment (eq_name, eq_instructions, eq_photo, eq_photo_desc) VALUES 
('Pasta Machine','Used for making homemade pasta','https://www.kitchenstuffplus.com/media/catalog/product/7/2/72255_Marcato_Manual_Pasta_Machine__Chrome.jpg?width=2000&height=&canvas=2000:&optimize=high&fit=bounds','Photo of a pasta machine'),
('Potato Masher','Used for mashing potatoes','https://ae01.alicdn.com/kf/HTB1ahgfXJfvK1RjSspoq6zfNpXaG/New-Potato-Masher-Stainless-Steel-Mashed-Potato-Masher-Garlic-masher-Crush-Kitchen-Tool-Black-Handle-With.jpg','Photo of a potato masher'),
('Muffin tin','Used for making muffins','https://www.cooksinfo.com/wp-content/uploads/Muffin-tins-empty.jpg','Photo of muffin tin'),
('Pizza cutter','Used for cutting pizza','https://www.pennstateind.com/graphics/1600px/PKPCUTA.jpg','Photo of pizza cutter'),
('Pizza stone','Used for cooking pizza','https://i.pinimg.com/736x/47/fc/19/47fc19e53afb98ae9cb747d0c898742e.jpg','Photo of pizza stone oven'),
('Spatula','Used for grabbing flat objects from a hot surface','http://www.wowline.com/Images/ProductImages/Large/S70798X.jpg','Photo of a spatula'),
('Grill','Used for cooking','https://i5.walmartimages.com/asr/6eb517d3-b28b-4215-a79e-39be1dacfcc4_1.f008fc0c530756d8b71f7e065df18e17.jpeg','A photo of a grill'),
('Knife','Used for cutting ingredients','https://exquisiteknives.com/wp-content/uploads/2017/04/20160216_1936.jpg','Photo of knife'),
('Blender','Used for mixing ingredients','http://www.italia76.com/wp-content/uploads/2013/12/rossowolf-blender-black-frullatore-nero.png','Photo of a blender'),
('Immersion Blender','Used for melting and mixing','https://digital.hammacher.com/Items/74962/74962_1000x1000.jpg','Photo of an immersion blender'),
('Mixing Bowl', 'Use for mixing ingredients together.', 'https://example.com/mixing-bowl.jpg', 'A photo of a mixing bowl.'),
('Bowl','Used for pouring ingredients to it','https://s7d2.scene7.com/is/image/DesignWithinReach/PD_623_SIZE_medium_COLOR_red?$main$','Photo of a bowl'),
('Glass Bowls','Used for pouring ingredients and mixing them','https://www.barnitts.co.uk/images/shop/more/2500x1816_1534428629TC380JudgeKitchenGlassBowl1L.jpg','Photo of a glass bowl'),
("Chef's Knife", 'Use for chopping, slicing, and dicing ingredients.', 'https://example.com/chefs-knife.jpg', "A photo of a chef's knife."),
('Cutting Board', 'Use as a surface for cutting and chopping ingredients.', 'https://example.com/cutting-board.jpg', 'A photo of a cutting board.'),
('Saucepan', 'Use for heating sauces, soups, and liquids.', 'https://example.com/saucepan.jpg', 'A photo of a saucepan.'),
('Skillet', 'Use for frying, searing, and sautéing ingredients.', 'https://example.com/skillet.jpg', 'A photo of a skillet.'),
('Baking Sheet', 'Use for baking cookies, pastries, and other baked goods.', 'https://example.com/baking-sheet.jpg', 'A photo of a baking sheet.'),
('Baking dish','Used for placing food in the oven','https://www.seriouseats.com/thmb/Cv9-oIKmooq3u9Q9A1uXRgiqoOY=/1500x1125/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2017__12__20171206-baking-dish-tests-vicky-wasik-staub-1500x1125-b1cf737fed66429da539272109706b47.jpg','Photo of a baking dish'),
('Whisk', 'Use for mixing ingredients together and incorporating air into batters and sauces.', 'https://example.com/whisk.jpg', 'A photo of a whisk.'),
('Measuring Cups', 'Use for accurately measuring dry and liquid ingredients.', 'https://example.com/measuring-cups.jpg', 'A photo of measuring cups.'),
('Measuring Spoons', 'Use for accurately measuring small amounts of ingredients.', 'https://example.com/measuring-spoons.jpg', 'A photo of measuring spoons.'),
('Mixing Spoon', 'Use for stirring and mixing ingredients in pots and pans.', 'https://example.com/mixing-spoon.jpg', 'A photo of a mixing spoon.'),
('Tongs', 'Use for flipping, turning, and serving foods.', 'https://example.com/tongs.jpg', 'A photo of tongs.'),
('Rolling Pin', 'Use for rolling out dough for pies, pastries, and breads.', 'https://example.com/rolling-pin.jpg', 'A photo of a rolling pin.'),
('Grater', 'Use for grating cheese, vegetables, and other ingredients.', 'https://example.com/grater.jpg', 'A photo of a grater.'),
('Strainer', 'Use for draining liquids from cooked foods or rinsing fruits and vegetables.', 'https://example.com/strainer.jpg', 'A photo of a strainer.'),
('Mixing Bowls Set', 'A set of bowls for mixing various ingredients at once.', 'https://example.com/mixing-bowls-set.jpg', 'A photo of a set of mixing bowls.'),
('Pot', 'Use for boiling, simmering, and cooking soups, stews, and pasta.', 'https://example.com/pot.jpg', 'A photo of a pot.'),
('Mug','Used for storing liquids','https://images-na.ssl-images-amazon.com/images/I/71S8zUoBskL._AC_SL1500_.jpg','Photo of a mug'),
('Colander', 'Use for draining pasta, washing vegetables, and straining liquids.', 'https://example.com/colander.jpg', 'A photo of a colander.'),
('Pastry Brush', 'Use for applying egg washes, glazes, and sauces to pastries.', 'https://www.kitchenstuffplus.com/media/catalog/product/9/3/93312_KSP_Colour_Splash_Silicone_Pastry_Basting_Brush__Red.jpg?width=2000&height=&canvas=2000:&optimize=high&fit=bounds', 'A photo of a pastry brush.'),
('Oven','Used for cooking','https://www.viewclickbuy.co.uk/product/beko-bbaif22300x-66l-electric-built-in-single-oven-stainless-steel/image246850060.jpg','Photo of oven'),
('Oven Mitts', 'Use for handling hot dishes and pans.', 'https://example.com/oven-mitts.jpg', 'A photo of oven mitts.'),
('Slotted Spoon','Useful for grabbing food without any liquid','http://kitchenkneads.com/wp-content/uploads/2017/04/43693-12-ss-slotted-spoon.png','Photo of a slotted spoon'),
('Pastry cutter','Used for giving shapes to sweets','https://cf.shopee.ph/file/31795b73b485d9a62acc3787df396e6e','Photo of pastry cutter'),
('Zester','Used for peeling fruits','https://www.foodchamps.org/wp-content/uploads/2020/10/Deiss-PRO-Citrus-Lemon-Zester-958x1024.jpg','Photo of a zester'),
('Round Cake Pans','Used for putting cakes of different sizes','https://i5.walmartimages.com/asr/9d912d8c-540b-4f44-8f76-de360591ca05_2.12b9716dd00d7d6d6ef522f9797eaf33.jpeg','Photo of round cake pans'),
('Cooling Rack','Useful for letting food cool','https://i5.walmartimages.com/asr/b451049b-f979-420c-a763-c8964b67da95_1.1d90083616c6e31e6adf834859c6b63a.jpeg','Photo of a cooling rack'), 
('Waffle Iron','Used for making waffles','https://www.brylanehome.com/on/demandware.static/-/Sites-masterCatalog_BrylaneHome/default/dw2bc5625e/images/hi-res/1550_16900_mc_8844.jpg','Photo of a waffle iron'),
('Kitchen Timer', 'Use for timing cooking and baking processes.', 'https://example.com/kitchen-timer.jpg', 'A photo of a kitchen timer.');

INSERT INTO food_groups (group_name, group_desc, recipe_characterisation)
VALUES 
    ('Herbs and Essential Oils', 'Includes various herbs and essential oils.', 'Herbal'),
    ('Coffee, Tea, and Their Products', 'Includes coffee, tea, and related products.', 'Caffeinated'),
    ('Preserved Foods', 'Includes various preserved foods.', 'Preserved'),
    ('Sweeteners', 'Includes various sweetening agents.', 'Sweet'),
    ('Fats and Oils', 'Includes various fats and oils.', 'Rich'),
    ('Milk, Eggs, and Their Products', 'Includes dairy products like milk and eggs.', 'Creamy'),
    ('Meat and Meat Products', 'Includes various types of meat.', 'Meaty'),
    ('Fish and Fish Products', 'Includes various types of fish and seafood.', 'Fishy'),
    ('Cereals and Cereal Products', 'Includes various grains and cereal products.', 'Grainy'),
    ('Various Plant-based Foods', 'Includes various plant-based foods.', 'Vegetarian'),
    ('Products with Sweeteners', 'Includes products with added sweeteners.', 'Sweetened'),
    ('Various Beverages', 'Includes various types of beverages.', 'Refreshing'),
    ('Legumes and Legume Products','Includes beans, peas etc','Legumy'),
    ('Others', 'Anything else','Other');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chocolate Chip Cookies', 'Pastry', 2, 'These chocolate chip cookies are soft, chewy, and loaded with gooey chocolate chips. They are perfect for satisfying your sweet tooth and are sure to become a favorite.', 'Make sure to chill the dough for at least 30 minutes before baking to prevent spreading.', 'You can use a combination of milk and dark chocolate chips for extra flavor.', 'Serve warm with a glass of milk for a classic treat.', 5.0, 30.0, 20.0, 'France', 'http://fakephotolink.com/chocolate_chip_cookies.jpg', 'Chocolate Chip Cookies loaded with chocolate chips', 20, 25, 2);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chocolate Chip Cookies', 'Mixing Bowl', 1),
('Chocolate Chip Cookies', 'Baking Sheet', 1);

INSERT INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Brown Sugar', 380.0, 1, 'Sweeteners', 'gr'),
('Granulated Sugar', 387.0, 1, 'Sweeteners', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Vanilla Extract', 288.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Baking Soda', 0.0, 0, 'Others', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Chocolate Chips', 535.0, 1, 'Products with Sweeteners', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chocolate Chip Cookies', 'Butter', 113, NULL),
('Chocolate Chip Cookies', 'Brown Sugar', NULL, 'Some'),
('Chocolate Chip Cookies', 'Granulated Sugar', NULL, 'Some'),
('Chocolate Chip Cookies', 'Egg', 1, NULL),
('Chocolate Chip Cookies', 'Vanilla Extract', 5, NULL),
('Chocolate Chip Cookies', 'All-Purpose Flour', NULL, 'Some'),
('Chocolate Chip Cookies', 'Baking Soda', 1, NULL),
('Chocolate Chip Cookies', 'Salt', 2, NULL),
('Chocolate Chip Cookies', 'Chocolate Chips', NULL, 'A lot');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chocolate Chip Cookies', 'Chocolate Chips');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chocolate Chip Cookies', 'Preheat the oven to 375°F (190°C). Line a baking sheet with parchment paper.', 1),
('Chocolate Chip Cookies', 'In a large mixing bowl, cream together the butter, brown sugar, and granulated sugar until light and fluffy.', 2),
('Chocolate Chip Cookies', 'Beat in the egg and vanilla extract until well combined.', 3),
('Chocolate Chip Cookies', 'In a separate bowl, whisk together the all-purpose flour, baking soda, and salt.', 4),
('Chocolate Chip Cookies', 'Gradually add the dry ingredients to the wet ingredients, mixing until just combined.', 5),
('Chocolate Chip Cookies', 'Fold in the chocolate chips.', 6),
('Chocolate Chip Cookies', 'Scoop tablespoon-sized portions of dough onto the prepared baking sheet.', 7),
('Chocolate Chip Cookies', 'Bake for 8-10 minutes, or until the edges are lightly golden.', 8),
('Chocolate Chip Cookies', 'Allow the cookies to cool on the baking sheet for 5 minutes before transferring to a wire rack to cool completely.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chocolate Chip Cookies', 'Homemade'),
('Chocolate Chip Cookies', 'Classic'),
('Chocolate Chip Cookies', 'Family Recipe');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Chocolate Chip Cookies', 'Dessert'),
('Chocolate Chip Cookies', 'Snack');
#
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Jerk Chicken', 'Cooking', 3, "This Jerk Chicken recipe is packed with bold flavors and spices. It's marinated in a spicy and aromatic jerk sauce, then grilled to perfection. Serve with rice and peas for a delicious Caribbean-inspired meal.", 'For an authentic taste, marinate the chicken overnight to allow the flavors to develop fully.', 'Adjust the amount of Scotch bonnet peppers based on your spice preference. Use less for a milder flavor or more for extra heat.', 'Serve with traditional sides like rice and peas, fried plantains, and coleslaw for a complete meal.', 25.0, 10.0, 15.0, 'Jamaica', 'http://fakephotolink.com/jerk_chicken.jpg', 'Jerk Chicken with rice and peas', 20, 30, 3);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Jerk Chicken', 'Mixing Bowl', 1),
('Jerk Chicken', 'Grill', 1),
('Jerk Chicken', 'Blender', 1),
('Jerk Chicken', 'Measuring Spoons', 1),
('Jerk Chicken', 'Knife', 1);

INSERT INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Thighs', 245.0, 0, 'Meat and Meat Products', 'gr'),
('Scotch Bonnet Peppers', 30.0, 1, 'Herbs and Essential Oils', 'unit'),
('Green Onions', 32.0, 0, 'Herbs and Essential Oils', 'unit'),
('Thyme', 5.0, 0, 'Herbs and Essential Oils', 'gr'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'unit'),
('Ginger', 80.0, 0, 'Herbs and Essential Oils', 'gr'),
('Allspice', 263.0, 0, 'Herbs and Essential Oils', 'gr'),
('Black Pepper', 255.0, 0, 'Herbs and Essential Oils', 'gr'),
('Soy Sauce', 61.0, 0, 'Various Plant-based Foods', 'ml'),
('Vinegar', 18.0, 0, 'Various Plant-based Foods', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Jerk Chicken', 'Chicken Thighs', 800, NULL),
('Jerk Chicken', 'Scotch Bonnet Peppers', 2, NULL),
('Jerk Chicken', 'Green Onions', 4, NULL),
('Jerk Chicken', 'Thyme', 5, NULL),
('Jerk Chicken', 'Garlic', 4, NULL),
('Jerk Chicken', 'Ginger', 20, NULL),
('Jerk Chicken', 'Allspice', 10, NULL),
('Jerk Chicken', 'Black Pepper', 5, NULL),
('Jerk Chicken', 'Brown Sugar', 30, NULL),
('Jerk Chicken', 'Soy Sauce', 30, NULL),
('Jerk Chicken', 'Vinegar', 15, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Jerk Chicken', 'Chicken Thighs');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Jerk Chicken', 'In a blender, combine the Scotch bonnet peppers, green onions, thyme, garlic, ginger, allspice, black pepper, brown sugar, soy sauce, and vinegar. Blend until smooth to make the jerk marinade.', 1),
('Jerk Chicken', 'Place the chicken thighs in a mixing bowl and pour the jerk marinade over them. Rub the marinade into the chicken until evenly coated. Cover and refrigerate for at least 4 hours, or preferably overnight.', 2),
('Jerk Chicken', 'Preheat the grill to medium-high heat. Remove the chicken from the marinade and grill for 6-7 minutes per side, or until fully cooked and slightly charred.', 3),
('Jerk Chicken', 'Serve the jerk chicken hot with rice and peas, fried plantains, and coleslaw.', 4);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Jerk Chicken', 'Spicy'),
('Jerk Chicken', 'Grilled'),
('Jerk Chicken', 'Caribbean');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Jerk Chicken', 'Main Course'),
('Jerk Chicken', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Pasta Salad', 'Cooking', 2, "This Pasta Salad recipe is light, refreshing, and perfect for summer gatherings. It's made with cooked pasta, fresh vegetables, and a zesty vinaigrette dressing.", 'Cook the pasta until al dente for the best texture in the salad.', 'You can customize the vegetables based on your preferences. Try adding cherry tomatoes, bell peppers, or cucumbers.', 'For extra flavor, add some chopped fresh herbs like basil, parsley, or dill.', 5.0, 30.0, 15.0, 'Italy', 'http://fakephotolink.com/pasta_salad.jpg', 'Pasta Salad with fresh vegetables', 15, 20, 6);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Pasta Salad', 'Mixing Bowl', 1),
('Pasta Salad', 'Pot', 1),
('Pasta Salad', 'Strainer', 1),
('Pasta Salad', 'Knife', 1),
('Pasta Salad', 'Cutting Board', 1);

INSERT INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Pasta', 131.0, 0, 'Cereals and Cereal Products', 'gr'),
('Cherry Tomatoes', 18.0, 1, 'Various Plant-based Foods', 'unit'),
('Cucumber', 16.0, 1, 'Various Plant-based Foods', 'unit'),
('Red Onion', 40.0, 0, 'Various Plant-based Foods', 'gr'),
('Black Olives', 115.0, 1, 'Various Plant-based Foods', 'gr'),
('Feta Cheese', 264.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Red Wine Vinegar', 3.0, 0, 'Various Plant-based Foods', 'ml'),
('Dijon Mustard', 66.0, 0, 'Various Plant-based Foods', 'ml'),
('Honey', 304.0, 0, 'Sweeteners', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Pasta Salad', 'Pasta', 200, NULL),
('Pasta Salad', 'Cherry Tomatoes', 200, NULL),
('Pasta Salad', 'Cucumber', 150, NULL),
('Pasta Salad', 'Red Onion', 100, NULL),
('Pasta Salad', 'Black Olives', 100, NULL),
('Pasta Salad', 'Feta Cheese', 150, NULL),
('Pasta Salad', 'Olive Oil', 30, NULL),
('Pasta Salad', 'Red Wine Vinegar', 15, NULL),
('Pasta Salad', 'Dijon Mustard', 10, NULL),
('Pasta Salad', 'Honey', 10, NULL),
('Pasta Salad', 'Salt', NULL, 'Some'),
('Pasta Salad', 'Black Pepper', NULL, 'Some');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Pasta Salad', 'Pasta');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Pasta Salad', 'Cook the pasta according to package instructions. Drain and rinse under cold water.', 1),
('Pasta Salad', 'In a mixing bowl, combine the cooked pasta, cherry tomatoes (halved), cucumber (sliced), red onion (thinly sliced), black olives (halved), and crumbled feta cheese.', 2),
('Pasta Salad', 'In a small bowl, whisk together the olive oil, red wine vinegar, Dijon mustard, honey, salt, and black pepper to make the dressing.', 3),
('Pasta Salad', 'Pour the dressing over the pasta and vegetables. Toss until everything is well coated.', 4),
('Pasta Salad', 'Cover and refrigerate for at least 1 hour to allow the flavors to meld together.', 5),
('Pasta Salad', 'Before serving, give the salad a final toss and adjust seasoning if necessary.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Pasta Salad', 'Refreshing'),
('Pasta Salad', 'Summer'),
('Pasta Salad', 'Salad');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Pasta Salad', 'Side Dish'),
('Pasta Salad', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lasagna', 'Cooking', 3, 'This classic Lasagna recipe features layers of tender pasta, rich meat sauce, creamy béchamel, and melted cheese. It\'s a comforting and hearty dish that\'s perfect for family dinners.', 'Cook the lasagna noodles until al dente to prevent them from becoming mushy in the oven.', 'Let the lasagna rest for at least 10 minutes after baking to allow it to set before slicing.', 'You can prepare the meat sauce and béchamel ahead of time for easier assembly.', 35.0, 60.0, 40.0, 'Italy', 'http://fakephotolink.com/lasagna.jpg', 'Homemade Lasagna with layers of pasta, meat sauce, and cheese', 30, 60, 2);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lasagna', 'Mixing Bowl', 1),
('Lasagna', 'Saucepan', 1),
('Lasagna', 'Skillet', 1),
('Lasagna', 'Baking Dish', 1),
('Lasagna', 'Oven', 1),
('Lasagna', 'Knife', 1),
('Lasagna', 'Cutting Board', 1),
('Lasagna', 'Grater', 1);

INSERT INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lasagna Noodles', 131.0, 0, 'Cereals and Cereal Products', 'gr'),
('Ground Beef', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Onion', 40.0, 0, 'Various Plant-based Foods', 'gr'),
('Tomato Paste', 82.0, 0, 'Various Plant-based Foods', 'gr'),
('Crushed Tomatoes', 32.0, 0, 'Various Plant-based Foods', 'ml'),
('Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Dried Oregano', 306.0, 0, 'Herbs and Essential Oils', 'gr'),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Nutmeg', 525.0, 0, 'Herbs and Essential Oils', 'gr'),
('Mozzarella Cheese', 280.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Parmesan Cheese', 431.0, 0, 'Milk, Eggs, and Their Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lasagna', 'Lasagna Noodles', 250, NULL),
('Lasagna', 'Ground Beef', 500, NULL),
('Lasagna', 'Onion', 1, NULL),
('Lasagna', 'Garlic', 2, NULL),
('Lasagna', 'Tomato Paste', 30, NULL),
('Lasagna', 'Crushed Tomatoes', 400, NULL),
('Lasagna', 'Sugar', 15, NULL),
('Lasagna', 'Dried Oregano', 5, NULL),
('Lasagna', 'Salt', NULL, 'Some'),
('Lasagna', 'Black Pepper', NULL, 'Some'),
('Lasagna', 'Butter', 30, NULL),
('Lasagna', 'All-Purpose Flour', 30, NULL),
('Lasagna', 'Milk', 500, NULL),
('Lasagna', 'Nutmeg', 5, NULL),
('Lasagna', 'Mozzarella Cheese', 200, NULL),
('Lasagna', 'Parmesan Cheese', 100, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lasagna', 'Lasagna Noodles');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lasagna', 'Preheat the oven to 375°F (190°C).', 1),
('Lasagna', 'Cook the lasagna noodles according to package instructions. Drain and set aside.', 2),
('Lasagna', 'In a skillet, cook the ground beef over medium heat until browned. Add chopped onion and minced garlic, and cook until softened.', 3),
('Lasagna', 'Stir in the tomato paste, crushed tomatoes, sugar, dried oregano, salt, and black pepper. Simmer for 10-15 minutes.', 4),
('Lasagna', 'In a saucepan, melt butter over medium heat. Stir in flour and cook for 1-2 minutes. Gradually whisk in milk until smooth.', 5),
('Lasagna', 'Cook the sauce until thickened, then add nutmeg and season with salt and pepper to taste.', 6),
('Lasagna', 'Spread a thin layer of meat sauce in the bottom of a baking dish. Arrange a layer of cooked lasagna noodles on top.', 7),
('Lasagna', 'Spread a layer of béchamel sauce over the noodles, then sprinkle with mozzarella and Parmesan cheese.', 8),
('Lasagna', 'Repeat the layers until all ingredients are used, ending with a layer of cheese on top.', 9),
('Lasagna', 'Cover the baking dish with foil and bake in the preheated oven for 30 minutes.', 10),
('Lasagna', 'Remove the foil and bake for an additional 10-15 minutes, or until the cheese is golden and bubbly.', 11),
('Lasagna', 'Let the lasagna rest for 10 minutes before slicing and serving.', 12);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lasagna', 'Comfort Food'),
('Lasagna', 'Italian'),
('Lasagna', 'Dinner');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lasagna', 'Main Dish'),
('Lasagna', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Hearty Pancakes', 'Pastry', 2, 'These hearty pancakes are fluffy, flavorful, and perfect for a satisfying breakfast or brunch. They are made with whole wheat flour, oats, and bananas for added nutrition and sweetness.', 'For extra indulgence, serve with a drizzle of maple syrup and a dollop of Greek yogurt.', 'You can customize these pancakes by adding your favorite toppings such as berries, nuts, or chocolate chips.', 'Leftover pancakes can be stored in an airtight container in the refrigerator and reheated in the toaster or microwave.', 5.0, 15.0, 10.0, 'United States', 'http://fakephotolink.com/hearty_pancakes.jpg', 'Hearty Pancakes with bananas and maple syrup', 10, 15, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Hearty Pancakes', 'Mixing Bowl', 1),
('Hearty Pancakes', 'Skillet', 1),
('Hearty Pancakes', 'Spatula', 1),
('Hearty Pancakes', 'Measuring Cups', 1),
('Hearty Pancakes', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Whole Wheat Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Oats', 389.0, 0, 'Cereals and Cereal Products', 'gr'),
('Baking Powder', 2.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Banana', 105.0, 0, 'Various Plant-based Foods', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Maple Syrup', 52.0, 0, 'Sweeteners', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Hearty Pancakes', 'Whole Wheat Flour', 150, NULL),
('Hearty Pancakes', 'Oats', 50, NULL),
('Hearty Pancakes', 'Baking Powder', 2, NULL),
('Hearty Pancakes', 'Salt', 1, NULL),
('Hearty Pancakes', 'Banana', 1, NULL),
('Hearty Pancakes', 'Egg', 1, NULL),
('Hearty Pancakes', 'Milk', 240, NULL),
('Hearty Pancakes', 'Butter', 30, NULL),
('Hearty Pancakes', 'Maple Syrup', NULL, 'Some');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Hearty Pancakes', 'Whole Wheat Flour');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Hearty Pancakes', 'In a mixing bowl, combine the whole wheat flour, oats, baking powder, and salt.', 1),
('Hearty Pancakes', 'Mash the banana in a separate bowl and whisk in the egg, milk, and melted butter.', 2),
('Hearty Pancakes', 'Pour the wet ingredients into the dry ingredients and stir until just combined.', 3),
('Hearty Pancakes', 'Heat a skillet over medium heat and lightly grease with butter or oil.', 4),
('Hearty Pancakes', 'Pour 1/4 cup of batter onto the skillet for each pancake.', 5),
('Hearty Pancakes', 'Cook until bubbles form on the surface, then flip and cook until golden brown.', 6),
('Hearty Pancakes', 'Serve warm with maple syrup.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Hearty Pancakes', 'Breakfast'),
('Hearty Pancakes', 'Healthy'),
('Hearty Pancakes', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Hearty Pancakes', 'Breakfast'),
('Hearty Pancakes', 'Brunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Summer Garden Couscous Salad', 'Cooking', 2, 'This Summer Garden Couscous Salad is bursting with fresh flavors and vibrant colors. It features a medley of garden vegetables, herbs, and feta cheese tossed with fluffy couscous and a zesty lemon dressing.', 'For best results, chill the salad in the refrigerator for at least 1 hour before serving to allow the flavors to meld together.', 'You can customize this salad with your favorite seasonal vegetables such as cherry tomatoes, cucumbers, or bell peppers.', 'This salad makes a delicious and refreshing side dish for picnics, barbecues, or potlucks.', 6.0, 15.0, 10.0, 'Italy', 'http://fakephotolink.com/summer_garden_couscous_salad.jpg', 'Summer Garden Couscous Salad with fresh vegetables and herbs', 15, 15, 2);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Summer Garden Couscous Salad', 'Mixing Bowl', 1),
('Summer Garden Couscous Salad', 'Saucepan', 1),
('Summer Garden Couscous Salad', 'Chef\'s Knife', 1),
('Summer Garden Couscous Salad', 'Cutting Board', 1),
('Summer Garden Couscous Salad', 'Measuring Cups', 1),
('Summer Garden Couscous Salad', 'Measuring Spoons', 1),
('Summer Garden Couscous Salad', 'Strainer', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Couscous', 376.0, 0, 'Cereals and Cereal Products', 'gr'),
('Water', 0.0, 0, 'Others', 'ml'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Lemon Juice', 4.0, 0, 'Coffee, Tea, and Their Products', 'tbsp'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Cherry Tomatoes', 18.0, 1, 'Various Plant-based Foods', 'gr'),
('Cucumber', 15.0, 1, 'Various Plant-based Foods', 'gr'),
('Red Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Bell Pepper', 25.0, 1, 'Various Plant-based Foods', 'gr'),
('Fresh Parsley', 2.0, 0, 'Herbs and Essential Oils', 'tbsp'),
('Fresh Mint', 2.0, 0, 'Herbs and Essential Oils', 'tbsp'),
('Feta Cheese', 264.0, 0, 'Milk, Eggs, and Their Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Summer Garden Couscous Salad', 'Couscous', 200, NULL),
('Summer Garden Couscous Salad', 'Water', 240, NULL),
('Summer Garden Couscous Salad', 'Salt', 1, NULL),
('Summer Garden Couscous Salad', 'Olive Oil', 60, NULL),
('Summer Garden Couscous Salad', 'Lemon Juice', 45, NULL),
('Summer Garden Couscous Salad', 'Garlic', 2, NULL),
('Summer Garden Couscous Salad', 'Cherry Tomatoes', NULL, 'Some'),
('Summer Garden Couscous Salad', 'Cucumber', NULL, 'Some'),
('Summer Garden Couscous Salad', 'Red Onion', NULL, 'Some'),
('Summer Garden Couscous Salad', 'Bell Pepper', NULL, 'Some'),
('Summer Garden Couscous Salad', 'Fresh Parsley', NULL, 'Some'),
('Summer Garden Couscous Salad', 'Fresh Mint', NULL, 'Some'),
('Summer Garden Couscous Salad', 'Feta Cheese', 100, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Summer Garden Couscous Salad', 'Couscous');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Summer Garden Couscous Salad', 'In a saucepan, bring water to a boil. Stir in the couscous and salt, cover, and remove from heat. Let stand for 5 minutes.', 1),
('Summer Garden Couscous Salad', 'Fluff the couscous with a fork and transfer to a large mixing bowl. Drizzle with olive oil and lemon juice, and toss to combine.', 2),
('Summer Garden Couscous Salad', 'Add the minced garlic, cherry tomatoes, cucumber, red onion, bell pepper, parsley, mint, and crumbled feta cheese to the bowl.', 3),
('Summer Garden Couscous Salad', 'Gently toss the salad until all ingredients are evenly distributed.', 4),
('Summer Garden Couscous Salad', 'Season with salt and pepper to taste.', 5),
('Summer Garden Couscous Salad', 'Chill in the refrigerator for at least 1 hour before serving.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Summer Garden Couscous Salad', 'Salad'),
('Summer Garden Couscous Salad', 'Vegetarian'),
('Summer Garden Couscous Salad', 'Fresh');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Summer Garden Couscous Salad', 'Lunch'),
('Summer Garden Couscous Salad', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Squash Corn Chowder', 'Cooking', 3, 'This Squash Corn Chowder is a creamy and comforting soup that\'s perfect for cool evenings. It\'s made with butternut squash, sweet corn, and aromatic spices, creating a deliciously hearty dish.', 'For added richness, stir in a splash of heavy cream or coconut milk just before serving.', 'Garnish with fresh herbs such as parsley or chives for a pop of color and flavor.', 'Serve with crusty bread or crackers for a satisfying meal.', 4.0, 30.0, 25.0, 'United States', 'http://fakephotolink.com/squash_corn_chowder.jpg', 'Squash Corn Chowder with butternut squash and sweet corn', 15, 30, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Squash Corn Chowder', 'Pot', 1),
('Squash Corn Chowder', 'Chef\'s Knife', 1),
('Squash Corn Chowder', 'Cutting Board', 1),
('Squash Corn Chowder', 'Strainer', 1),
('Squash Corn Chowder', 'Measuring Cups', 1),
('Squash Corn Chowder', 'Measuring Spoons', 1),
('Squash Corn Chowder', 'Immersion Blender', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Butternut Squash', 45.0, 1, 'Various Plant-based Foods', 'gr'),
('Sweet Corn', 86.0, 1, 'Various Plant-based Foods', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Celery', 6.0, 1, 'Various Plant-based Foods', 'stalks'),
('Carrot', 25.0, 1, 'Various Plant-based Foods', 'gr'),
('Potato', 77.0, 1, 'Various Plant-based Foods', 'gr'),
('Vegetable Broth', 3.0, 0, 'Others', 'cups'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Bay Leaf', 0.0, 0, 'Herbs and Essential Oils', 'leaf'),
('Thyme', 1.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Heavy Cream', 345.0, 0, 'Milk, Eggs, and Their Products', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Squash Corn Chowder', 'Butternut Squash', 400, NULL),
('Squash Corn Chowder', 'Sweet Corn', 200, NULL),
('Squash Corn Chowder', 'Onion', 1, NULL),
('Squash Corn Chowder', 'Celery', 2, NULL),
('Squash Corn Chowder', 'Carrot', 1, NULL),
('Squash Corn Chowder', 'Potato', 1, NULL),
('Squash Corn Chowder', 'Vegetable Broth', 4, NULL),
('Squash Corn Chowder', 'Garlic', 2, NULL),
('Squash Corn Chowder', 'Bay Leaf', 1, NULL),
('Squash Corn Chowder', 'Thyme', 1, NULL),
('Squash Corn Chowder', 'Salt', 1, NULL),
('Squash Corn Chowder', 'Black Pepper', 1, NULL),
('Squash Corn Chowder', 'Heavy Cream', 60, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Squash Corn Chowder', 'Butternut Squash');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Squash Corn Chowder', 'Peel and dice the butternut squash, onion, celery, carrot, and potato.', 1),
('Squash Corn Chowder', 'In a large pot, heat olive oil over medium heat. Add the diced vegetables and garlic, and cook until softened.', 2),
('Squash Corn Chowder', 'Add the vegetable broth, bay leaf, thyme, salt, and pepper to the pot. Bring to a simmer and cook for 15-20 minutes, until the vegetables are tender.', 3),
('Squash Corn Chowder', 'Remove the bay leaf and thyme sprigs from the pot. Use an immersion blender to puree the soup until smooth.', 4),
('Squash Corn Chowder', 'Stir in the sweet corn and heavy cream, and cook for an additional 5 minutes.', 5),
('Squash Corn Chowder', 'Season with additional salt and pepper to taste.', 6),
('Squash Corn Chowder', 'Serve hot, garnished with fresh herbs if desired.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Squash Corn Chowder', 'Soup'),
('Squash Corn Chowder', 'Comfort Food'),
('Squash Corn Chowder', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Squash Corn Chowder', 'Lunch'),
('Squash Corn Chowder', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('White Beans, Tomatoes, and Spinach', 'Cooking', 2, 'This White Beans, Tomatoes, and Spinach dish is a simple and flavorful one-pan meal. It combines tender white beans, juicy tomatoes, and fresh spinach, all cooked in a savory garlic and herb-infused broth.', 'For added protein, you can serve this dish with grilled chicken, shrimp, or tofu.', 'This recipe is easily customizable—feel free to add other vegetables such as bell peppers, zucchini, or mushrooms.', 'Leftovers can be stored in an airtight container in the refrigerator for up to 3 days.', 10.0, 20.0, 15.0, 'Italy', 'http://fakephotolink.com/white_beans_tomatoes_spinach.jpg', 'White Beans, Tomatoes, and Spinach cooked in garlic and herbs', 10, 20, 3);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('White Beans, Tomatoes, and Spinach', 'Skillet', 1),
('White Beans, Tomatoes, and Spinach', 'Chef\'s Knife', 1),
('White Beans, Tomatoes, and Spinach', 'Cutting Board', 1),
('White Beans, Tomatoes, and Spinach', 'Measuring Cups', 1),
('White Beans, Tomatoes, and Spinach', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('White Beans', 339.0, 1, 'Various Plant-based Foods', 'gr'),
('Tomatoes', 18.0, 1, 'Various Plant-based Foods', 'gr'),
('Spinach', 23.0, 1, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Vegetable Broth', 3.0, 0, 'Others', 'cups'),
('Dried Thyme', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('White Beans, Tomatoes, and Spinach', 'White Beans', 400, NULL),
('White Beans, Tomatoes, and Spinach', 'Tomatoes', 200, NULL),
('White Beans, Tomatoes, and Spinach', 'Spinach', 100, NULL),
('White Beans, Tomatoes, and Spinach', 'Olive Oil', 30, NULL),
('White Beans, Tomatoes, and Spinach', 'Garlic', 2, NULL),
('White Beans, Tomatoes, and Spinach', 'Vegetable Broth', 240, NULL),
('White Beans, Tomatoes, and Spinach', 'Dried Thyme', 1, NULL),
('White Beans, Tomatoes, and Spinach', 'Salt', 1, NULL),
('White Beans, Tomatoes, and Spinach', 'Black Pepper', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('White Beans, Tomatoes, and Spinach', 'White Beans');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('White Beans, Tomatoes, and Spinach', 'Heat olive oil in a skillet over medium heat. Add minced garlic and cook until fragrant.', 1),
('White Beans, Tomatoes, and Spinach', 'Add the white beans, diced tomatoes, spinach, vegetable broth, dried thyme, salt, and black pepper to the skillet.', 2),
('White Beans, Tomatoes, and Spinach', 'Simmer for 10-15 minutes, or until the vegetables are tender and the flavors have melded together.', 3),
('White Beans, Tomatoes, and Spinach', 'Taste and adjust seasoning if necessary.', 4),
('White Beans, Tomatoes, and Spinach', 'Serve hot as a main dish or a side.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('White Beans, Tomatoes, and Spinach', 'One-Pan Meal'),
('White Beans, Tomatoes, and Spinach', 'Vegetarian'),
('White Beans, Tomatoes, and Spinach', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('White Beans, Tomatoes, and Spinach', 'Lunch'),
('White Beans, Tomatoes, and Spinach', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Spaghetti', 'Cooking', 2, 'This classic Spaghetti recipe is simple, yet delicious. Al dente spaghetti noodles are tossed in a savory marinara sauce made with tomatoes, garlic, onions, and herbs, then topped with freshly grated Parmesan cheese.', 'For a heartier meal, you can add cooked meatballs, sausage, or grilled chicken to the sauce.', 'Cook the spaghetti just until it is al dente (firm to the bite) for the best texture.', 'Garnish with fresh basil leaves and extra Parmesan cheese before serving.', 10.0, 20.0, 15.0, 'Italy', 'http://fakephotolink.com/spaghetti.jpg', 'Classic Spaghetti with marinara sauce and Parmesan cheese', 10, 20, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Spaghetti', 'Pot', 1),
('Spaghetti', 'Chef\'s Knife', 1),
('Spaghetti', 'Cutting Board', 1),
('Spaghetti', 'Strainer', 1),
('Spaghetti', 'Measuring Cups', 1),
('Spaghetti', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Spaghetti Noodles', 371.0, 0, 'Cereals and Cereal Products', 'gr'),
('Tomatoes', 18.0, 1, 'Various Plant-based Foods', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Tomato Paste', 82.0, 0, 'Various Plant-based Foods', 'ml'),
('Dried Basil', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Dried Oregano', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Parmesan Cheese', 420.0, 0, 'Milk, Eggs, and Their Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Spaghetti', 'Spaghetti Noodles', 200, NULL),
('Spaghetti', 'Tomatoes', 200, NULL),
('Spaghetti', 'Onion', 1, NULL),
('Spaghetti', 'Garlic', 2, NULL),
('Spaghetti', 'Olive Oil', 30, NULL),
('Spaghetti', 'Tomato Paste', 30, NULL),
('Spaghetti', 'Dried Basil', 1, NULL),
('Spaghetti', 'Dried Oregano', 1, NULL),
('Spaghetti', 'Salt', 1, NULL),
('Spaghetti', 'Black Pepper', 1, NULL),
('Spaghetti', 'Parmesan Cheese', NULL, 'Some');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Spaghetti', 'Spaghetti Noodles');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Spaghetti', 'Cook the spaghetti noodles according to package instructions until al dente. Drain and set aside.', 1),
('Spaghetti', 'In a large skillet, heat olive oil over medium heat. Add minced garlic and diced onion, and cook until softened.', 2),
('Spaghetti', 'Stir in diced tomatoes, tomato paste, dried basil, dried oregano, salt, and black pepper. Simmer for 10 minutes, stirring occasionally.', 3),
('Spaghetti', 'Add the cooked spaghetti to the skillet and toss to coat evenly with the sauce.', 4),
('Spaghetti', 'Serve hot, garnished with freshly grated Parmesan cheese.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Spaghetti', 'Pasta'),
('Spaghetti', 'Italian'),
('Spaghetti', 'Family-Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Spaghetti', 'Dinner'),
('Spaghetti', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Scones', 'Pastry', 2, 'These Scones are tender, flaky, and perfect for a cozy breakfast or afternoon tea. They are lightly sweetened and flavored with vanilla, and can be customized with your favorite add-ins such as dried fruit, chocolate chips, or nuts.', 'Handle the dough gently to avoid overworking it, which can result in tough scones.', 'For best results, chill the scone dough in the refrigerator for 30 minutes before baking to help them hold their shape.', 'Serve warm with clotted cream and jam for a traditional English treat.', 5.0, 20.0, 15.0, 'United Kingdom', 'http://fakephotolink.com/scones.jpg', 'Scones served with clotted cream and jam', 10, 15, 4);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Scones', 'Mixing Bowl', 1),
('Scones', 'Baking Sheet', 1),
('Scones', 'Pastry Cutter', 1),
('Scones', 'Pastry Brush', 1),
('Scones', 'Measuring Cups', 1),
('Scones', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Baking Powder', 2.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Unsalted Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Heavy Cream', 345.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Vanilla Extract', 288.0, 0, 'Flavorings', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Scones', 'All-Purpose Flour', 300, NULL),
('Scones', 'Granulated Sugar', 50, NULL),
('Scones', 'Baking Powder', 2, NULL),
('Scones', 'Salt', 1, NULL),
('Scones', 'Unsalted Butter', 75, NULL),
('Scones', 'Egg', 1, NULL),
('Scones', 'Heavy Cream', 120, NULL),
('Scones', 'Vanilla Extract', 5, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Scones', 'All-Purpose Flour');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Scones', 'Preheat the oven to 400°F (200°C). Line a baking sheet with parchment paper.', 1),
('Scones', 'In a mixing bowl, whisk together the flour, sugar, baking powder, and salt.', 2),
('Scones', 'Cut the cold butter into small cubes and add it to the dry ingredients. Use a pastry cutter or your fingers to work the butter into the flour mixture until it resembles coarse crumbs.', 3),
('Scones', 'In a separate bowl, whisk together the egg, heavy cream, and vanilla extract.', 4),
('Scones', 'Pour the wet ingredients into the dry ingredients and stir until just combined.', 5),
('Scones', 'Turn the dough out onto a lightly floured surface and gently knead it a few times until it comes together.', 6),
('Scones', 'Pat the dough into a circle about 1 inch thick. Use a sharp knife to cut the dough into 8 wedges.', 7),
('Scones', 'Place the scones on the prepared baking sheet, leaving space between each one.', 8),
('Scones', 'Brush the tops of the scones with a little heavy cream.', 9),
('Scones', 'Bake for 15-18 minutes, or until golden brown.', 10),
('Scones', 'Transfer to a wire rack to cool slightly before serving.', 11);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Scones', 'Pastry'),
('Scones', 'Breakfast'),
('Scones', 'Teatime');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Scones', 'Breakfast'),
('Scones', 'Brunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Pizza', 'Cooking', 3, 'This Pizza recipe yields a delicious homemade pizza with a crispy crust and flavorful toppings. Customize it with your favorite sauces, cheeses, and toppings for a meal the whole family will love.', 'For a quicker option, you can use store-bought pizza dough instead of making your own.', 'Get creative with your toppings—try classics like pepperoni and mushrooms or experiment with unique combinations like barbecue chicken and pineapple.', 'If you don\'t have a pizza stone, you can use a baking sheet or pizza pan instead.', 15.0, 25.0, 20.0, 'Italy', 'http://fakephotolink.com/pizza.jpg', 'Homemade Pizza with pepperoni, olives, and bell peppers', 15, 25, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Pizza', 'Pizza Stone', 1),
('Pizza', 'Rolling Pin', 1),
('Pizza', 'Pizza Cutter', 1),
('Pizza', 'Mixing Bowl', 1),
('Pizza', 'Measuring Cups', 1),
('Pizza', 'Measuring Spoons', 1);

INSERT INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Yeast', 105.0, 0, 'Various Plant-based Foods', 'gr'),
('Warm Water', 0.0, 0, 'Others', 'ml'),
('Pizza Sauce', 32.0, 0, 'Various Plant-based Foods', 'ml'),
('Toppings (e.g., pepperoni, vegetables)', 100.0, 1, 'Various Plant-based Foods', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Pizza', 'All-Purpose Flour', 300, NULL),
('Pizza', 'Yeast', 7, NULL),
('Pizza', 'Sugar', 1, NULL),
('Pizza', 'Salt', 1, NULL),
('Pizza', 'Olive Oil', 30, NULL),
('Pizza', 'Warm Water', 240, NULL),
('Pizza', 'Pizza Sauce', NULL, 'Some'),
('Pizza', 'Mozzarella Cheese', 200, NULL),
('Pizza', 'Toppings (e.g., pepperoni, vegetables)', NULL, 'Some');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Pizza', 'All-Purpose Flour');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Pizza', 'In a mixing bowl, combine warm water, yeast, and sugar. Let it sit for 5-10 minutes until foamy.', 1),
('Pizza', 'Add olive oil, salt, and flour to the yeast mixture. Stir until a dough forms.', 2),
('Pizza', 'Transfer the dough to a floured surface and knead for 5-7 minutes, until smooth and elastic.', 3),
('Pizza', 'Place the dough in a greased bowl, cover with a clean kitchen towel, and let it rise in a warm place for 1-2 hours, or until doubled in size.', 4),
('Pizza', 'Preheat the oven to 475°F (245°C). If using a pizza stone, place it in the oven to preheat as well.', 5),
('Pizza', 'Punch down the dough and transfer it to a lightly floured surface. Roll it out into a circle or rectangle, depending on your preference.', 6),
('Pizza', 'Transfer the rolled-out dough to a pizza peel or parchment paper dusted with cornmeal.', 7),
('Pizza', 'Spread pizza sauce evenly over the dough, leaving a small border around the edges.', 8),
('Pizza', 'Sprinkle mozzarella cheese over the sauce, then add your desired toppings.', 9),
('Pizza', 'Carefully transfer the pizza to the preheated pizza stone or baking sheet in the oven.', 10),
('Pizza', 'Bake for 12-15 minutes, or until the crust is golden brown and the cheese is bubbly.', 11),
('Pizza', 'Remove from the oven and let it cool slightly before slicing and serving.', 12);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Pizza', 'Italian'),
('Pizza', 'Homemade'),
('Pizza', 'Family-Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Pizza', 'Dinner'),
('Pizza', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Stir-Fry', 'Cooking', 2, 'This Stir-Fry recipe is a quick and versatile dish that\'s perfect for busy weeknights. It features a colorful mix of vegetables and protein stir-fried in a savory sauce, served over rice or noodles.', 'Prep all your ingredients before you start cooking—once you begin stir-frying, things move quickly!', 'Feel free to use any combination of vegetables and protein you like, such as bell peppers, broccoli, carrots, tofu, chicken, or shrimp.', 'Make extra sauce if you like your stir-fry saucy—you can always use it for another meal.', 15.0, 15.0, 10.0, 'China', 'http://fakephotolink.com/stir_fry.jpg', 'Stir-Fry with vegetables and chicken served over rice', 15, 15, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Stir-Fry', 'Skillet', 1),
('Stir-Fry', 'Spatula', 1),
('Stir-Fry', 'Chef\'s Knife', 1),
('Stir-Fry', 'Cutting Board', 1),
('Stir-Fry', 'Measuring Cups', 1),
('Stir-Fry', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Protein (e.g., chicken, tofu, shrimp)', 200.0, 1, 'Meat and Meat Products', 'gr'),
('Vegetables (e.g., bell peppers, broccoli, carrots)', 50.0, 1, 'Various Plant-based Foods', 'gr'),
('Rice or Noodles', 130.0, 0, 'Cereals and Cereal Products', 'gr'),
('Soy Sauce', 8.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Sesame Oil', 884.0, 0, 'Fats and Oils', 'tbsp'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Ginger', 18.0, 0, 'Herbs and Essential Oils', 'gr'),
('Cornstarch', 30.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Water', 0.0, 0, 'Others', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Stir-Fry', 'Protein (e.g., chicken, tofu, shrimp)', NULL, 'Some'),
('Stir-Fry', 'Vegetables (e.g., bell peppers, broccoli, carrots)', NULL, 'Some'),
('Stir-Fry', 'Rice or Noodles', 200, NULL),
('Stir-Fry', 'Soy Sauce', 60, NULL),
('Stir-Fry', 'Sesame Oil', 30, NULL),
('Stir-Fry', 'Garlic', 2, NULL),
('Stir-Fry', 'Ginger', 1, NULL),
('Stir-Fry', 'Cornstarch', 15, NULL),
('Stir-Fry', 'Water', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Stir-Fry', 'Protein (e.g., chicken, tofu, shrimp)');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Stir-Fry', 'Cook rice or noodles according to package instructions. Drain and set aside.', 1),
('Stir-Fry', 'In a small bowl, whisk together soy sauce, sesame oil, minced garlic, grated ginger, cornstarch, and water to make the sauce.', 2),
('Stir-Fry', 'Heat a wok or large skillet over high heat. Add a splash of oil and swirl to coat the pan.', 3),
('Stir-Fry', 'Add the protein to the hot pan and cook until browned and cooked through. Remove from the pan and set aside.', 4),
('Stir-Fry', 'Add a bit more oil to the pan if needed, then add the vegetables. Stir-fry until tender-crisp.', 5),
('Stir-Fry', 'Return the protein to the pan. Pour the sauce over the protein and vegetables.', 6),
('Stir-Fry', 'Cook, stirring constantly, until the sauce has thickened and everything is heated through.', 7),
('Stir-Fry', 'Serve the stir-fry hot over the cooked rice or noodles.', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Stir-Fry', 'Asian'),
('Stir-Fry', 'Quick'),
('Stir-Fry', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Stir-Fry', 'Dinner'),
('Stir-Fry', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Rustic Italian Tortellini Soup', 'Cooking', 2, 'This Rustic Italian Tortellini Soup is hearty, flavorful, and perfect for a cozy dinner. It features cheese-filled tortellini simmered in a savory broth with tomatoes, spinach, and Italian herbs.', 'Feel free to customize this soup with your favorite vegetables or protein.', 'For extra richness, you can add a splash of heavy cream or a sprinkle of grated Parmesan cheese before serving.', 'Serve with crusty bread or a side salad for a complete meal.', 10.0, 30.0, 20.0, 'Italy', 'http://fakephotolink.com/tortellini_soup.jpg', 'Rustic Italian Tortellini Soup with tomatoes, spinach, and herbs', 10, 30, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Rustic Italian Tortellini Soup', 'Pot', 1),
('Rustic Italian Tortellini Soup', 'Chef\'s Knife', 1),
('Rustic Italian Tortellini Soup', 'Cutting Board', 1),
('Rustic Italian Tortellini Soup', 'Strainer', 1),
('Rustic Italian Tortellini Soup', 'Measuring Cups', 1),
('Rustic Italian Tortellini Soup', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Cheese Tortellini', 100.0, 0, 'Cereals and Cereal Products', 'gr'),
('Tomatoes', 18.0, 1, 'Various Plant-based Foods', 'gr'),
('Spinach', 23.0, 1, 'Various Plant-based Foods', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Vegetable Broth', 3.0, 0, 'Others', 'cups'),
('Dried Basil', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Dried Oregano', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Heavy Cream', 345.0, 0, 'Milk, Eggs, and Their Products', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Rustic Italian Tortellini Soup', 'Cheese Tortellini', 200, NULL),
('Rustic Italian Tortellini Soup', 'Tomatoes', 200, NULL),
('Rustic Italian Tortellini Soup', 'Spinach', 100, NULL),
('Rustic Italian Tortellini Soup', 'Onion', 1, NULL),
('Rustic Italian Tortellini Soup', 'Garlic', 2, NULL),
('Rustic Italian Tortellini Soup', 'Vegetable Broth', 4, NULL),
('Rustic Italian Tortellini Soup', 'Dried Basil', 1, NULL),
('Rustic Italian Tortellini Soup', 'Dried Oregano', 1, NULL),
('Rustic Italian Tortellini Soup', 'Salt', 1, NULL),
('Rustic Italian Tortellini Soup', 'Black Pepper', 1, NULL),
('Rustic Italian Tortellini Soup', 'Heavy Cream', 60, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Rustic Italian Tortellini Soup', 'Cheese Tortellini');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Rustic Italian Tortellini Soup', 'In a large pot, heat olive oil over medium heat. Add diced onion and minced garlic, and cook until softened.', 1),
('Rustic Italian Tortellini Soup', 'Add diced tomatoes, dried basil, dried oregano, salt, and black pepper to the pot. Cook for 5 minutes, until the tomatoes start to break down.', 2),
('Rustic Italian Tortellini Soup', 'Pour in the vegetable broth and bring the mixture to a simmer.', 3),
('Rustic Italian Tortellini Soup', 'Add the cheese tortellini to the pot and cook according to package instructions.', 4),
('Rustic Italian Tortellini Soup', 'Stir in the spinach until wilted, then add the heavy cream and cook for an additional 2-3 minutes.', 5),
('Rustic Italian Tortellini Soup', 'Taste and adjust seasoning if necessary.', 6),
('Rustic Italian Tortellini Soup', 'Serve hot, garnished with grated Parmesan cheese if desired.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Rustic Italian Tortellini Soup', 'Soup'),
('Rustic Italian Tortellini Soup', 'Italian'),
('Rustic Italian Tortellini Soup', 'Comfort Food');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Rustic Italian Tortellini Soup', 'Lunch'),
('Rustic Italian Tortellini Soup', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Swedish Meatballs', 'Cooking', 3, 'These Swedish Meatballs are tender, juicy, and packed with flavor. They are made with a mix of ground beef and pork, seasoned with aromatic spices, then simmered in a creamy sauce until they\'re melt-in-your-mouth delicious.', 'To keep the meatballs tender, don\'t overmix the meat mixture.', 'For extra flavor, you can add a splash of Worcestershire sauce or soy sauce to the meatball mixture.', 'Serve over mashed potatoes, noodles, or with lingonberry jam for a traditional Swedish meal.', 25.0, 30.0, 20.0, 'Sweden', 'http://fakephotolink.com/meatballs.jpg', 'Swedish Meatballs in creamy sauce', 25, 30, 3);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Swedish Meatballs', 'Skillet', 1),
('Swedish Meatballs', 'Mixing Bowl', 1),
('Swedish Meatballs', 'Chef\'s Knife', 1),
('Swedish Meatballs', 'Cutting Board', 1),
('Swedish Meatballs', 'Measuring Cups', 1),
('Swedish Meatballs', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Ground Beef', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Ground Pork', 310.0, 0, 'Meat and Meat Products', 'gr'),
('Breadcrumbs', 400.0, 0, 'Cereals and Cereal Products', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Allspice', 263.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Nutmeg', 357.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Butter', 717.0, 0, 'Fats and Oils', 'gr'),
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Beef Broth', 2.0, 0, 'Others', 'cups'),
('Heavy Cream', 345.0, 0, 'Milk, Eggs, and Their Products', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Swedish Meatballs', 'Ground Beef', 250, NULL),
('Swedish Meatballs', 'Ground Pork', 250, NULL),
('Swedish Meatballs', 'Breadcrumbs', 50, NULL),
('Swedish Meatballs', 'Egg', 1, NULL),
('Swedish Meatballs', 'Onion', 1, NULL),
('Swedish Meatballs', 'Garlic', 2, NULL),
('Swedish Meatballs', 'Allspice', 1, NULL),
('Swedish Meatballs', 'Nutmeg', 1, NULL),
('Swedish Meatballs', 'Salt', 1, NULL),
('Swedish Meatballs', 'Black Pepper', 1, NULL),
('Swedish Meatballs', 'Butter', 60, NULL),
('Swedish Meatballs', 'All-Purpose Flour', 60, NULL),
('Swedish Meatballs', 'Beef Broth', 480, NULL),
('Swedish Meatballs', 'Heavy Cream', 120, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Swedish Meatballs', 'Ground Beef');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Swedish Meatballs', 'In a mixing bowl, combine ground beef, ground pork, breadcrumbs, egg, minced onion, minced garlic, allspice, nutmeg, salt, and black pepper.', 1),
('Swedish Meatballs', 'Mix until well combined, then shape the mixture into meatballs.', 2),
('Swedish Meatballs', 'In a large skillet, melt butter over medium heat. Add the meatballs and cook until browned on all sides.', 3),
('Swedish Meatballs', 'Remove the meatballs from the skillet and set aside.', 4),
('Swedish Meatballs', 'Add flour to the skillet and cook, stirring constantly, for 1-2 minutes to make a roux.', 5),
('Swedish Meatballs', 'Gradually whisk in beef broth and heavy cream until smooth.', 6),
('Swedish Meatballs', 'Return the meatballs to the skillet and simmer in the sauce for 10-15 minutes, until cooked through and the sauce has thickened.', 7),
('Swedish Meatballs', 'Serve hot, garnished with chopped parsley if desired.', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Swedish Meatballs', 'Meat'),
('Swedish Meatballs', 'Comfort Food'),
('Swedish Meatballs', 'European');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Swedish Meatballs', 'Dinner'),
('Swedish Meatballs', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Barley Beef Skillet', 'Cooking', 2, 'This Barley Beef Skillet is a hearty and nutritious one-pan meal that\'s perfect for busy weeknights. Tender beef is cooked with barley, vegetables, and savory herbs for a comforting dish the whole family will love.', 'For a vegetarian version, you can omit the beef and use mushrooms or tofu instead.', 'Barley absorbs a lot of liquid, so you may need to add more broth or water as it cooks.', 'Feel free to customize the vegetables based on what you have on hand or your personal preferences.', 25.0, 35.0, 20.0, 'Nigeria', 'http://fakephotolink.com/barley_beef_skillet.jpg', 'Barley Beef Skillet with vegetables and herbs', 25, 35, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Barley Beef Skillet', 'Skillet', 1),
('Barley Beef Skillet', 'Chef\'s Knife', 1),
('Barley Beef Skillet', 'Cutting Board', 1),
('Barley Beef Skillet', 'Measuring Cups', 1),
('Barley Beef Skillet', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Beef (e.g., stew meat, ground beef)', 250.0, 1, 'Meat and Meat Products', 'gr'),
('Pearl Barley', 123.0, 0, 'Cereals and Cereal Products', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Carrots', 41.0, 1, 'Various Plant-based Foods', 'gr'),
('Celery', 16.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Beef Broth', 3.0, 0, 'Others', 'cups'),
('Tomato Paste', 82.0, 0, 'Various Plant-based Foods', 'ml'),
('Worcestershire Sauce', 66.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Dried Thyme', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Barley Beef Skillet', 'Beef (e.g., stew meat, ground beef)', NULL, 'Some'),
('Barley Beef Skillet', 'Pearl Barley', 150, NULL),
('Barley Beef Skillet', 'Onion', 1, NULL),
('Barley Beef Skillet', 'Carrots', 2, NULL),
('Barley Beef Skillet', 'Celery', 2, NULL),
('Barley Beef Skillet', 'Garlic', 2, NULL),
('Barley Beef Skillet', 'Beef Broth', 720, NULL),
('Barley Beef Skillet', 'Tomato Paste', 30, NULL),
('Barley Beef Skillet', 'Worcestershire Sauce', 2, NULL),
('Barley Beef Skillet', 'Dried Thyme', 1, NULL),
('Barley Beef Skillet', 'Salt', 1, NULL),
('Barley Beef Skillet', 'Black Pepper', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Barley Beef Skillet', 'Beef (e.g., stew meat, ground beef)');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Barley Beef Skillet', 'In a large skillet, heat olive oil over medium-high heat. Add diced onion, carrots, and celery, and cook until softened.', 1),
('Barley Beef Skillet', 'Add minced garlic and cook for another minute, until fragrant.', 2),
('Barley Beef Skillet', 'Push the vegetables to one side of the skillet and add the beef to the other side. Cook until browned on all sides.', 3),
('Barley Beef Skillet', 'Stir in tomato paste, Worcestershire sauce, dried thyme, salt, and black pepper.', 4),
('Barley Beef Skillet', 'Add barley and beef broth to the skillet. Bring to a boil, then reduce the heat to low, cover, and simmer for 25-30 minutes, or until the barley is tender and the liquid is absorbed.', 5),
('Barley Beef Skillet', 'Taste and adjust seasoning if necessary. Serve hot.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Barley Beef Skillet', 'One-Pot'),
('Barley Beef Skillet', 'Comfort Food'),
('Barley Beef Skillet', 'Hearty');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Barley Beef Skillet', 'Dinner'),
('Barley Beef Skillet', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Southwest Beef & Rice Skillet', 'Cooking', 2, 'This Southwest Beef & Rice Skillet is a delicious one-pan meal that combines seasoned ground beef, rice, black beans, corn, and flavorful spices for a hearty and satisfying dinner.', 'Feel free to customize this recipe with your favorite toppings, such as avocado, sour cream, salsa, or shredded cheese.', 'For extra heat, add diced jalapenos or a sprinkle of cayenne pepper.', 'This dish reheats well, so it\'s great for leftovers!', 20.0, 30.0, 15.0, 'United States', 'http://fakephotolink.com/southwest_beef_rice_skillet.jpg', 'Southwest Beef & Rice Skillet with corn and black beans', 20, 30, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Southwest Beef & Rice Skillet', 'Skillet', 1),
('Southwest Beef & Rice Skillet', 'Spatula', 1),
('Southwest Beef & Rice Skillet', 'Chef\'s Knife', 1),
('Southwest Beef & Rice Skillet', 'Cutting Board', 1),
('Southwest Beef & Rice Skillet', 'Measuring Cups', 1),
('Southwest Beef & Rice Skillet', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Ground Beef', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Rice', 130.0, 0, 'Cereals and Cereal Products', 'gr'),
('Black Beans', 127.0, 0, 'Legumes and Legume Products', 'gr'),
('Corn', 86.0, 0, 'Various Plant-based Foods', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Bell Pepper', 25.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Chili Powder', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Cumin', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Southwest Beef & Rice Skillet', 'Ground Beef', 300, NULL),
('Southwest Beef & Rice Skillet', 'Rice', 200, NULL),
('Southwest Beef & Rice Skillet', 'Black Beans', 200, NULL),
('Southwest Beef & Rice Skillet', 'Corn', 150, NULL),
('Southwest Beef & Rice Skillet', 'Onion', 1, NULL),
('Southwest Beef & Rice Skillet', 'Bell Pepper', 1, NULL),
('Southwest Beef & Rice Skillet', 'Garlic', 2, NULL),
('Southwest Beef & Rice Skillet', 'Chili Powder', 1, NULL),
('Southwest Beef & Rice Skillet', 'Cumin', 1, NULL),
('Southwest Beef & Rice Skillet', 'Salt', 1, NULL),
('Southwest Beef & Rice Skillet', 'Black Pepper', 1, NULL),
('Southwest Beef & Rice Skillet', 'Olive Oil', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Southwest Beef & Rice Skillet', 'Ground Beef');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Southwest Beef & Rice Skillet', 'Cook rice according to package instructions and set aside.', 1),
('Southwest Beef & Rice Skillet', 'In a large skillet, heat olive oil over medium heat. Add diced onion, bell pepper, and minced garlic. Cook until softened.', 2),
('Southwest Beef & Rice Skillet', 'Add ground beef to the skillet and cook until browned. Drain excess fat if needed.', 3),
('Southwest Beef & Rice Skillet', 'Stir in cooked rice, black beans, corn, chili powder, cumin, salt, and black pepper.', 4),
('Southwest Beef & Rice Skillet', 'Cook, stirring occasionally, until heated through and flavors are well combined.', 5),
('Southwest Beef & Rice Skillet', 'Serve hot, optionally garnished with chopped cilantro and a squeeze of lime.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Southwest Beef & Rice Skillet', 'One-Pot'),
('Southwest Beef & Rice Skillet', 'Easy'),
('Southwest Beef & Rice Skillet', 'Family-Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Southwest Beef & Rice Skillet', 'Dinner'),
('Southwest Beef & Rice Skillet', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Glazed Pork Chops with Corn Bread Dressing', 'Cooking', 3, 'These Glazed Pork Chops with Corn Bread Dressing are a perfect comfort food meal. Tender pork chops are coated in a sweet and tangy glaze and served with savory cornbread dressing for a delicious dinner.', 'Make sure not to overcook the pork chops to keep them juicy and tender.', 'For the cornbread dressing, you can use store-bought cornbread or make your own.', 'Serve with roasted vegetables or a side salad for a complete meal.', 30.0, 40.0, 20.0, 'United States', 'http://fakephotolink.com/glazed_pork_chops.jpg', 'Glazed Pork Chops with Corn Bread Dressing', 30, 40, 2);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Glazed Pork Chops with Corn Bread Dressing', 'Skillet', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'Baking Dish', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'Mixing Bowl', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'Chef\'s Knife', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'Cutting Board', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'Measuring Cups', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Pork Chops', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Cornbread', 250.0, 0, 'Cereals and Cereal Products', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Celery', 16.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Chicken Broth', 2.0, 0, 'Others', 'cups'),
('Butter', 717.0, 0, 'Fats and Oils', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Brown Sugar', 380.0, 0, 'Sweeteners', 'gr'),
('Apple Cider Vinegar', 22.0, 0, 'Others', 'ml'),
('Dijon Mustard', 128.0, 0, 'Others', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Glazed Pork Chops with Corn Bread Dressing', 'Pork Chops', 4, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Cornbread', 500, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Onion', 1, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Celery', 2, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Garlic', 2, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Chicken Broth', 480, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Butter', 60, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Egg', 1, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Brown Sugar', 150, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Apple Cider Vinegar', 30, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Dijon Mustard', 15, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Salt', 1, NULL),
('Glazed Pork Chops with Corn Bread Dressing', 'Black Pepper', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Glazed Pork Chops with Corn Bread Dressing', 'Pork Chops');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Glazed Pork Chops with Corn Bread Dressing', 'Preheat the oven to 350°F (175°C).', 1),
('Glazed Pork Chops with Corn Bread Dressing', 'In a skillet, melt butter over medium heat. Add diced onion, celery, and minced garlic. Cook until softened.', 2),
('Glazed Pork Chops with Corn Bread Dressing', 'Crumble cornbread into the skillet and stir to combine with the vegetables. Pour in chicken broth and mix until moistened.', 3),
('Glazed Pork Chops with Corn Bread Dressing', 'Transfer the cornbread mixture to a baking dish. Arrange pork chops on top.', 4),
('Glazed Pork Chops with Corn Bread Dressing', 'In a small bowl, mix together brown sugar, apple cider vinegar, Dijon mustard, salt, and black pepper. Brush over the pork chops.', 5),
('Glazed Pork Chops with Corn Bread Dressing', 'Bake for 25-30 minutes, or until the pork chops are cooked through and the glaze is caramelized.', 6),
('Glazed Pork Chops with Corn Bread Dressing', 'Serve hot, with the cornbread dressing on the side.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Glazed Pork Chops with Corn Bread Dressing', 'Comfort Food'),
('Glazed Pork Chops with Corn Bread Dressing', 'Dinner'),
('Glazed Pork Chops with Corn Bread Dressing', 'American');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Glazed Pork Chops with Corn Bread Dressing', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Fried Rice', 'Cooking', 2, 'This Fried Rice recipe is easy to make and perfect for using up leftover rice. It\'s packed with vegetables, protein, and savory flavors for a delicious meal or side dish.', 'For best results, use cold, day-old rice. Freshly cooked rice can become too sticky.', 'Feel free to customize this recipe by adding your favorite protein, such as chicken, shrimp, or tofu.', 'Use a large skillet or wok to ensure that the rice and ingredients cook evenly.', 15.0, 15.0, 15.0, 'China', 'http://fakephotolink.com/fried_rice.jpg', 'Fried Rice with vegetables and eggs', 15, 15, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Fried Rice', 'Skillet', 1),
('Fried Rice', 'Spatula', 1),
('Fried Rice', 'Chef\'s Knife', 1),
('Fried Rice', 'Cutting Board', 1),
('Fried Rice', 'Measuring Cups', 1),
('Fried Rice', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Rice', 130.0, 0, 'Cereals and Cereal Products', 'gr'),
('Carrots', 41.0, 1, 'Various Plant-based Foods', 'gr'),
('Peas', 67.0, 0, 'Legumes and Legume Products', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Soy Sauce', 8.0, 0, 'Others', 'tbsp'),
('Sesame Oil', 120.0, 0, 'Fats and Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Vegetable Oil', 884.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Fried Rice', 'Rice', 200, NULL),
('Fried Rice', 'Carrots', 1, NULL),
('Fried Rice', 'Peas', 100, NULL),
('Fried Rice', 'Onion', 1, NULL),
('Fried Rice', 'Garlic', 2, NULL),
('Fried Rice', 'Eggs', 2, NULL),
('Fried Rice', 'Soy Sauce', 30, NULL),
('Fried Rice', 'Sesame Oil', 5, NULL),
('Fried Rice', 'Salt', 1, NULL),
('Fried Rice', 'Black Pepper', 1, NULL),
('Fried Rice', 'Vegetable Oil', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Fried Rice', 'Rice');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Fried Rice', 'Cook rice according to package instructions and let it cool completely.', 1),
('Fried Rice', 'In a large skillet or wok, heat vegetable oil over medium-high heat. Add diced onion and minced garlic, and cook until softened.', 2),
('Fried Rice', 'Push the onion and garlic to one side of the skillet and crack eggs into the other side. Scramble the eggs until cooked through, then mix them with the onion and garlic.', 3),
('Fried Rice', 'Add diced carrots and peas to the skillet and cook until tender.', 4),
('Fried Rice', 'Add the cooked rice to the skillet. Drizzle with soy sauce and sesame oil, and season with salt and black pepper.', 5),
('Fried Rice', 'Stir everything together and cook for a few minutes until heated through.', 6),
('Fried Rice', 'Serve hot, garnished with chopped green onions or cilantro if desired.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Fried Rice', 'Asian'),
('Fried Rice', 'Side Dish'),
('Fried Rice', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Fried Rice', 'Dinner'),
('Fried Rice', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Zesty Sausage & Beans', 'Cooking', 2, 'This Zesty Sausage & Beans recipe is a flavorful and satisfying dish that\'s perfect for a quick weeknight dinner. Spicy sausage is cooked with beans, tomatoes, and aromatic spices for a delicious meal.', 'For extra heat, use hot Italian sausage or add red pepper flakes.', 'Feel free to customize this recipe with your favorite beans or vegetables.', 'Serve with crusty bread or over rice for a complete meal.', 15.0, 25.0, 20.0, 'Kenya', 'http://fakephotolink.com/zesty_sausage_beans.jpg', 'Zesty Sausage & Beans with tomatoes and spices', 15, 25, 2);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Zesty Sausage & Beans', 'Skillet', 1),
('Zesty Sausage & Beans', 'Spatula', 1),
('Zesty Sausage & Beans', 'Chef\'s Knife', 1),
('Zesty Sausage & Beans', 'Cutting Board', 1),
('Zesty Sausage & Beans', 'Measuring Cups', 1),
('Zesty Sausage & Beans', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Italian Sausage', 300.0, 0, 'Meat and Meat Products', 'gr'),
('Onion', 44.0, 1, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Canned Diced Tomatoes', 32.0, 0, 'Various Plant-based Foods', 'ml'),
('White Beans (e.g., cannellini)', 127.0, 0, 'Legumes and Legume Products', 'gr'),
('Chicken Broth', 2.0, 0, 'Others', 'cups'),
('Dried Oregano', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Dried Basil', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Zesty Sausage & Beans', 'Italian Sausage', 450, NULL),
('Zesty Sausage & Beans', 'Onion', 1, NULL),
('Zesty Sausage & Beans', 'Garlic', 2, NULL),
('Zesty Sausage & Beans', 'Canned Diced Tomatoes', 400, NULL),
('Zesty Sausage & Beans', 'White Beans (e.g., cannellini)', 400, NULL),
('Zesty Sausage & Beans', 'Chicken Broth', 480, NULL),
('Zesty Sausage & Beans', 'Dried Oregano', 1, NULL),
('Zesty Sausage & Beans', 'Dried Basil', 1, NULL),
('Zesty Sausage & Beans', 'Salt', 1, NULL),
('Zesty Sausage & Beans', 'Black Pepper', 1, NULL),
('Zesty Sausage & Beans', 'Olive Oil', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Zesty Sausage & Beans', 'White Beans (e.g., cannellini)');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Zesty Sausage & Beans', 'In a large skillet, heat olive oil over medium heat. Add sliced Italian sausage and cook until browned.', 1),
('Zesty Sausage & Beans', 'Add diced onion and minced garlic to the skillet. Cook until softened.', 2),
('Zesty Sausage & Beans', 'Stir in canned diced tomatoes, white beans, chicken broth, dried oregano, dried basil, salt, and black pepper.', 3),
('Zesty Sausage & Beans', 'Simmer for 10-15 minutes, or until the flavors have melded together and the sauce has thickened slightly.', 4),
('Zesty Sausage & Beans', 'Taste and adjust seasoning if necessary. Serve hot, optionally garnished with chopped fresh herbs.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Zesty Sausage & Beans', 'One-Pot'),
('Zesty Sausage & Beans', 'Easy'),
('Zesty Sausage & Beans', 'Comfort Food');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Zesty Sausage & Beans', 'Dinner'),
('Zesty Sausage & Beans', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Prosciutto Pasta Toss', 'Cooking', 2, 'This Prosciutto Pasta Toss is a quick and easy pasta dish that\'s full of flavor. It combines prosciutto, peas, and garlic in a simple yet delicious sauce.', 'For extra creaminess, add a splash of heavy cream or cream cheese to the sauce.', 'Feel free to use your favorite pasta shape for this recipe.', 'Serve with a sprinkle of grated Parmesan cheese and a drizzle of olive oil, if desired.', 10.0, 15.0, 15.0, 'Italy', 'http://fakephotolink.com/prosciutto_pasta_toss.jpg', 'Prosciutto Pasta Toss with peas and garlic', 10, 15, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Prosciutto Pasta Toss', 'Skillet', 1),
('Prosciutto Pasta Toss', 'Chef\'s Knife', 1),
('Prosciutto Pasta Toss', 'Cutting Board', 1),
('Prosciutto Pasta Toss', 'Measuring Cups', 1),
('Prosciutto Pasta Toss', 'Measuring Spoons', 1),
('Prosciutto Pasta Toss', 'Colander', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Pasta', 130.0, 0, 'Cereals and Cereal Products', 'gr'),
('Prosciutto', 195.0, 0, 'Meat and Meat Products', 'gr'),
('Frozen Peas', 68.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Butter', 717.0, 0, 'Fats and Oils', 'gr'),
('Chicken Broth', 2.0, 0, 'Others', 'cups'),
('Lemon Juice', 4.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Prosciutto Pasta Toss', 'Pasta', 200, NULL),
('Prosciutto Pasta Toss', 'Prosciutto', 100, NULL),
('Prosciutto Pasta Toss', 'Frozen Peas', 100, NULL),
('Prosciutto Pasta Toss', 'Garlic', 2, NULL),
('Prosciutto Pasta Toss', 'Butter', 60, NULL),
('Prosciutto Pasta Toss', 'Chicken Broth', 480, NULL),
('Prosciutto Pasta Toss', 'Lemon Juice', 30, NULL),
('Prosciutto Pasta Toss', 'Salt', 1, NULL),
('Prosciutto Pasta Toss', 'Black Pepper', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Prosciutto Pasta Toss', 'Pasta');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Prosciutto Pasta Toss', 'Cook pasta according to package instructions. Drain and set aside.', 1),
('Prosciutto Pasta Toss', 'In a large skillet, melt butter over medium heat. Add minced garlic and cook until fragrant.', 2),
('Prosciutto Pasta Toss', 'Add diced prosciutto to the skillet and cook until slightly crispy.', 3),
('Prosciutto Pasta Toss', 'Stir in frozen peas, chicken broth, lemon juice, salt, and black pepper. Simmer for a few minutes until peas are heated through.', 4),
('Prosciutto Pasta Toss', 'Add the cooked pasta to the skillet and toss until well coated with the sauce.', 5),
('Prosciutto Pasta Toss', 'Serve hot, optionally garnished with chopped fresh parsley.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Prosciutto Pasta Toss', 'Quick'),
('Prosciutto Pasta Toss', 'Easy'),
('Prosciutto Pasta Toss', 'Italian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Prosciutto Pasta Toss', 'Dinner'),
('Prosciutto Pasta Toss', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Cashew Chicken with Noodles', 'Cooking', 3, 'This Cashew Chicken with Noodles recipe is a delicious and satisfying meal that\'s perfect for a cozy night in. Tender chicken and crunchy cashews are tossed with noodles in a flavorful sauce.', 'For added flavor, marinate the chicken in soy sauce and garlic before cooking.', 'Feel free to use your favorite type of noodles for this recipe, such as spaghetti, linguine, or rice noodles.', 'Garnish with sliced green onions and additional cashews for extra crunch and freshness.', 20.0, 20.0, 20.0, 'China', 'http://fakephotolink.com/cashew_chicken_noodles.jpg', 'Cashew Chicken with Noodles', 20, 20, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Cashew Chicken with Noodles', 'Skillet', 1),
('Cashew Chicken with Noodles', 'Spatula', 1),
('Cashew Chicken with Noodles', 'Chef\'s Knife', 1),
('Cashew Chicken with Noodles', 'Cutting Board', 1),
('Cashew Chicken with Noodles', 'Measuring Cups', 1),
('Cashew Chicken with Noodles', 'Measuring Spoons', 1),
('Cashew Chicken with Noodles', 'Pot', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breast', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Noodles', 130.0, 0, 'Cereals and Cereal Products', 'gr'),
('Cashews', 155.0, 1, 'Fats and Oils', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Soy Sauce', 8.0, 0, 'Others', 'tbsp'),
('Honey', 304.0, 0, 'Sweeteners', 'tbsp'),
('Sesame Oil', 120.0, 0, 'Fats and Oils', 'tsp'),
('Rice Vinegar', 1.0, 0, 'Others', 'tbsp'),
('Cornstarch', 381.0, 0, 'Others', 'tbsp'),
('Vegetable Oil', 884.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Cashew Chicken with Noodles', 'Chicken Breast', 400, NULL),
('Cashew Chicken with Noodles', 'Noodles', 200, NULL),
('Cashew Chicken with Noodles', 'Cashews', 100, NULL),
('Cashew Chicken with Noodles', 'Garlic', 2, NULL),
('Cashew Chicken with Noodles', 'Soy Sauce', 60, NULL),
('Cashew Chicken with Noodles', 'Honey', 30, NULL),
('Cashew Chicken with Noodles', 'Sesame Oil', 5, NULL),
('Cashew Chicken with Noodles', 'Rice Vinegar', 15, NULL),
('Cashew Chicken with Noodles', 'Cornstarch', 30, NULL),
('Cashew Chicken with Noodles', 'Vegetable Oil', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Cashew Chicken with Noodles', 'Chicken Breast'),
('Cashew Chicken with Noodles', 'Noodles'),
('Cashew Chicken with Noodles', 'Cashews');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Cashew Chicken with Noodles', 'Cook noodles according to package instructions. Drain and set aside.', 1),
('Cashew Chicken with Noodles', 'In a small bowl, mix together soy sauce, honey, sesame oil, rice vinegar, and cornstarch to make the sauce.', 2),
('Cashew Chicken with Noodles', 'Slice chicken breast into thin strips. Heat vegetable oil in a large skillet over medium-high heat. Add minced garlic and cook until fragrant.', 3),
('Cashew Chicken with Noodles', 'Add chicken strips to the skillet and cook until browned and cooked through.', 4),
('Cashew Chicken with Noodles', 'Pour the sauce over the chicken and stir to coat evenly. Cook for a few minutes until the sauce thickens.', 5),
('Cashew Chicken with Noodles', 'Add cooked noodles and cashews to the skillet. Toss everything together until well combined.', 6),
('Cashew Chicken with Noodles', 'Serve hot, garnished with chopped green onions or cilantro if desired.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Cashew Chicken with Noodles', 'Asian'),
('Cashew Chicken with Noodles', 'Dinner'),
('Cashew Chicken with Noodles', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Cashew Chicken with Noodles', 'Dinner'),
('Cashew Chicken with Noodles', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Herb Chicken with Honey Butter', 'Cooking', 3, 'This Herb Chicken with Honey Butter recipe is a delicious and elegant dish that\'s perfect for a special dinner. Tender chicken breasts are coated in a flavorful herb butter and drizzled with honey for a sweet and savory flavor combination.', 'Make sure to use fresh herbs for the best flavor. You can use a combination of parsley, thyme, and rosemary.', 'For a richer sauce, add a splash of white wine or chicken broth to the skillet after cooking the chicken.', 'Serve with roasted vegetables, mashed potatoes, or a side salad for a complete meal.', 20.0, 25.0, 15.0, 'Argetina', 'http://fakephotolink.com/herb_chicken_honey_butter.jpg', 'Herb Chicken with Honey Butter', 20, 25, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Herb Chicken with Honey Butter', 'Skillet', 1),
('Herb Chicken with Honey Butter', 'Spatula', 1),
('Herb Chicken with Honey Butter', 'Chef\'s Knife', 1),
('Herb Chicken with Honey Butter', 'Cutting Board', 1),
('Herb Chicken with Honey Butter', 'Measuring Cups', 1),
('Herb Chicken with Honey Butter', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breast', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Butter', 717.0, 0, 'Fats and Oils', 'gr'),
('Honey', 304.0, 0, 'Sweeteners', 'tbsp'),
('Fresh Herbs (e.g., parsley, thyme, rosemary)', 1.0, 0, 'Herbs and Essential Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Vegetable Oil', 884.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Herb Chicken with Honey Butter', 'Chicken Breast', 400, NULL),
('Herb Chicken with Honey Butter', 'Butter', 60, NULL),
('Herb Chicken with Honey Butter', 'Honey', 30, NULL),
('Herb Chicken with Honey Butter', 'Fresh Herbs (e.g., parsley, thyme, rosemary)', 30, NULL),
('Herb Chicken with Honey Butter', 'Salt', 1, NULL),
('Herb Chicken with Honey Butter', 'Black Pepper', 1, NULL),
('Herb Chicken with Honey Butter', 'Vegetable Oil', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Herb Chicken with Honey Butter', 'Chicken Breast'),
('Herb Chicken with Honey Butter', 'Butter'),
('Herb Chicken with Honey Butter', 'Honey');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Herb Chicken with Honey Butter', 'Season chicken breasts with salt and black pepper.', 1),
('Herb Chicken with Honey Butter', 'In a skillet, heat vegetable oil over medium-high heat. Add chicken breasts and cook until golden brown on both sides and cooked through, about 6-8 minutes per side.', 2),
('Herb Chicken with Honey Butter', 'Meanwhile, in a small bowl, mix together softened butter, honey, and chopped fresh herbs.', 3),
('Herb Chicken with Honey Butter', 'Once chicken is cooked, remove from skillet and let rest for a few minutes. Spoon honey butter mixture over the chicken breasts.', 4),
('Herb Chicken with Honey Butter', 'Serve hot, optionally garnished with additional chopped herbs.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Herb Chicken with Honey Butter', 'Dinner'),
('Herb Chicken with Honey Butter', 'Comfort Food'),
('Herb Chicken with Honey Butter', 'Elegant');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Herb Chicken with Honey Butter', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('French Toast', 'Cooking', 2, 'French Toast is a classic breakfast dish loved by many. Thick slices of bread are soaked in a mixture of eggs, milk, and cinnamon, then fried until golden brown. Serve with maple syrup, powdered sugar, or fresh fruit for a delicious morning treat.', 'Use thick slices of bread, such as brioche or Texas toast, for the best results.', 'For extra flavor, add a splash of vanilla extract or a pinch of nutmeg to the egg mixture.', 'Make sure the skillet is hot but not smoking before adding the soaked bread to ensure even cooking and a golden crust.', 10.0, 10.0, 10.0, 'France', 'http://fakephotolink.com/french_toast.jpg', 'French Toast with maple syrup and powdered sugar', 10, 10, 2);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('French Toast', 'Skillet', 1),
('French Toast', 'Mixing Bowl', 1),
('French Toast', 'Whisk', 1),
('French Toast', 'Measuring Cups', 1),
('French Toast', 'Measuring Spoons', 1),
('French Toast', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Bread', 130.0, 0, 'Cereals and Cereal Products', 'slice'),
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Cinnamon', 6.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Maple Syrup', 52.0, 0, 'Sweeteners', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('French Toast', 'Bread', 4, NULL),
('French Toast', 'Eggs', 4, NULL),
('French Toast', 'Milk', 120, NULL),
('French Toast', 'Cinnamon', 5, NULL),
('French Toast', 'Butter', 30, NULL),
('French Toast', 'Maple Syrup', 60, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('French Toast', 'Bread'),
('French Toast', 'Eggs'),
('French Toast', 'Milk');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('French Toast', 'In a mixing bowl, whisk together eggs, milk, and cinnamon.', 1),
('French Toast', 'Heat butter in a skillet over medium heat.', 2),
('French Toast', 'Dip each slice of bread into the egg mixture, coating both sides evenly.', 3),
('French Toast', 'Place the soaked bread slices in the skillet and cook until golden brown on both sides, about 2-3 minutes per side.', 4),
('French Toast', 'Serve hot, drizzled with maple syrup.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('French Toast', 'Breakfast'),
('French Toast', 'Easy'),
('French Toast', 'Classic');

INSERT INTO meal_type (recipe_name, meal) VALUES
('French Toast', 'Breakfast');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Swedish Pancakes', 'Cooking', 2, 'Swedish Pancakes are thin and delicate pancakes that are perfect for breakfast or brunch. They\'re similar to crepes but slightly thicker and with a hint of sweetness. Serve with lingonberry jam, fresh berries, or whipped cream for a traditional Swedish treat.', 'For extra flavor, add a splash of vanilla extract or a sprinkle of cardamom to the batter.', 'Make sure the skillet is well-greased and hot before adding the batter to ensure the pancakes cook evenly and don\'t stick.', 'If you don\'t have lingonberry jam, you can use strawberry jam or maple syrup as a topping.', 10.0, 15.0, 10.0, 'Sweden', 'http://fakephotolink.com/swedish_pancakes.jpg', 'Swedish Pancakes with lingonberry jam and fresh berries', 10, 15, 1);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Swedish Pancakes', 'Skillet', 1),
('Swedish Pancakes', 'Mixing Bowl', 1),
('Swedish Pancakes', 'Whisk', 1),
('Swedish Pancakes', 'Measuring Cups', 1),
('Swedish Pancakes', 'Measuring Spoons', 1),
('Swedish Pancakes', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Swedish Pancakes', 'Eggs', 2, NULL),
('Swedish Pancakes', 'Milk', 240, NULL),
('Swedish Pancakes', 'Flour', 120, NULL),
('Swedish Pancakes', 'Sugar', 30, NULL),
('Swedish Pancakes', 'Butter', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Swedish Pancakes', 'Eggs'),
('Swedish Pancakes', 'Milk'),
('Swedish Pancakes', 'Flour');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Swedish Pancakes', 'In a mixing bowl, whisk together eggs, milk, flour, and sugar until smooth.', 1),
('Swedish Pancakes', 'Heat a skillet over medium heat and add a small amount of butter to coat the bottom.', 2),
('Swedish Pancakes', 'Pour a small amount of batter into the skillet, tilting to spread it out thinly.', 3),
('Swedish Pancakes', 'Cook until the edges start to brown and the top looks set, then flip and cook for another minute on the other side.', 4),
('Swedish Pancakes', 'Repeat with the remaining batter, stacking the cooked pancakes on a plate and covering with a clean towel to keep warm.', 5),
('Swedish Pancakes', 'Serve hot with lingonberry jam, fresh berries, or your favorite toppings.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Swedish Pancakes', 'Breakfast'),
('Swedish Pancakes', 'Traditional'),
('Swedish Pancakes', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Swedish Pancakes', 'Breakfast');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Baked Cheddar Eggs & Potatoes', 'Cooking', 2, 'Baked Cheddar Eggs & Potatoes is a hearty and delicious breakfast or brunch dish. Sliced potatoes are baked until crispy, then topped with eggs, cheddar cheese, and your favorite seasonings. It\'s easy to make and perfect for feeding a crowd.', 'You can customize this dish by adding cooked bacon, sausage, or vegetables.', 'Make sure to slice the potatoes thinly and evenly for even cooking.', 'For extra flavor, sprinkle chopped herbs such as parsley or chives over the eggs before baking.', 15.0, 45.0, 30.0, 'Vietnam', 'http://fakephotolink.com/baked_cheddar_eggs_potatoes.jpg', 'Baked Cheddar Eggs & Potatoes with herbs', 15, 45);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Baked Cheddar Eggs & Potatoes', 'Baking Dish', 1),
('Baked Cheddar Eggs & Potatoes', 'Mixing Bowl', 1),
('Baked Cheddar Eggs & Potatoes', 'Whisk', 1),
('Baked Cheddar Eggs & Potatoes', 'Chef\'s Knife', 1),
('Baked Cheddar Eggs & Potatoes', 'Cutting Board', 1),
('Baked Cheddar Eggs & Potatoes', 'Measuring Cups', 1),
('Baked Cheddar Eggs & Potatoes', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Potatoes', 77.0, 0, 'Various Plant-based Foods', 'gr'),
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Cheddar Cheese', 402.0, 0, 'Meat and Meat Products', 'gr'),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Baked Cheddar Eggs & Potatoes', 'Potatoes', 500, NULL),
('Baked Cheddar Eggs & Potatoes', 'Eggs', 8, NULL),
('Baked Cheddar Eggs & Potatoes', 'Cheddar Cheese', 200, NULL),
('Baked Cheddar Eggs & Potatoes', 'Milk', 120, NULL),
('Baked Cheddar Eggs & Potatoes', 'Salt', 1, NULL),
('Baked Cheddar Eggs & Potatoes', 'Black Pepper', 1, NULL),
('Baked Cheddar Eggs & Potatoes', 'Butter', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Baked Cheddar Eggs & Potatoes', 'Potatoes'),
('Baked Cheddar Eggs & Potatoes', 'Eggs'),
('Baked Cheddar Eggs & Potatoes', 'Cheddar Cheese');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Baked Cheddar Eggs & Potatoes', 'Preheat the oven to 400°F (200°C). Grease a baking dish with butter or cooking spray.', 1),
('Baked Cheddar Eggs & Potatoes', 'Thinly slice the potatoes and layer them in the baking dish, seasoning each layer with salt and pepper.', 2),
('Baked Cheddar Eggs & Potatoes', 'Bake the potatoes for 25-30 minutes, or until crispy and golden brown around the edges.', 3),
('Baked Cheddar Eggs & Potatoes', 'Remove the baking dish from the oven and crack the eggs over the potatoes. Pour milk over the eggs and potatoes, then sprinkle with grated cheddar cheese.', 4),
('Baked Cheddar Eggs & Potatoes', 'Return the baking dish to the oven and bake for an additional 10-15 minutes, or until the eggs are set and the cheese is melted and bubbly.', 5),
('Baked Cheddar Eggs & Potatoes', 'Serve hot, optionally garnished with chopped fresh herbs or salsa.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Baked Cheddar Eggs & Potatoes', 'Breakfast'),
('Baked Cheddar Eggs & Potatoes', 'Brunch'),
('Baked Cheddar Eggs & Potatoes', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Baked Cheddar Eggs & Potatoes', 'Breakfast');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Baked Mostaccioli', 'Cooking', 3, 'Baked Mostaccioli is a classic Italian-American dish that\'s hearty, comforting, and perfect for feeding a crowd. Tube-shaped pasta is tossed in a savory tomato sauce with ground beef, Italian sausage, and plenty of cheese, then baked until bubbly and golden.', 'Feel free to customize this dish by adding your favorite vegetables, such as bell peppers, mushrooms, or spinach.', 'You can substitute mostaccioli pasta with penne or rigatoni if desired.', 'Serve with garlic bread and a side salad for a complete meal.', 20.0, 45.0, 25.0, 'Italy', 'http://fakephotolink.com/baked_mostaccioli.jpg', 'Baked Mostaccioli with melted cheese', 20, 45);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Baked Mostaccioli', 'Baking Dish', 1),
('Baked Mostaccioli', 'Skillet', 1),
('Baked Mostaccioli', 'Mixing Bowl', 1),
('Baked Mostaccioli', 'Measuring Cups', 1),
('Baked Mostaccioli', 'Measuring Spoons', 1),
('Baked Mostaccioli', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Mostaccioli Pasta', 131.0, 0, 'Cereals and Cereal Products', 'gr'),
('Ground Beef', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Italian Sausage', 450.0, 0, 'Meat and Meat Products', 'gr'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Canned Crushed Tomatoes', 32.0, 0, 'Various Plant-based Foods', 'ml'),
('Tomato Paste', 82.0, 0, 'Various Plant-based Foods', 'gr'),
('Dried Oregano', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Dried Basil', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Mozzarella Cheese', 300.0, 0, 'Meat and Meat Products', 'gr'),
('Parmesan Cheese', 431.0, 0, 'Meat and Meat Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Baked Mostaccioli', 'Mostaccioli Pasta', 400, NULL),
('Baked Mostaccioli', 'Ground Beef', 400, NULL),
('Baked Mostaccioli', 'Italian Sausage', 450, NULL),
('Baked Mostaccioli', 'Onion', 1, NULL),
('Baked Mostaccioli', 'Garlic', 2, NULL),
('Baked Mostaccioli', 'Canned Crushed Tomatoes', 400, NULL),
('Baked Mostaccioli', 'Tomato Paste', 100, NULL),
('Baked Mostaccioli', 'Dried Oregano', 1, NULL),
('Baked Mostaccioli', 'Dried Basil', 1, NULL),
('Baked Mostaccioli', 'Salt', 1, NULL),
('Baked Mostaccioli', 'Black Pepper', 1, NULL),
('Baked Mostaccioli', 'Mozzarella Cheese', 200, NULL),
('Baked Mostaccioli', 'Parmesan Cheese', 200, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Baked Mostaccioli', 'Mostaccioli Pasta');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Baked Mostaccioli', 'Preheat the oven to 375°F (190°C).', 1),
('Baked Mostaccioli', 'Cook the pasta according to package instructions. Drain and set aside.', 2),
('Baked Mostaccioli', 'In a skillet, cook the ground beef and Italian sausage over medium heat until browned. Add diced onion and minced garlic, and cook until softened.', 3),
('Baked Mostaccioli', 'Stir in crushed tomatoes, tomato paste, dried oregano, dried basil, salt, and black pepper. Simmer for 10 minutes, stirring occasionally.', 4),
('Baked Mostaccioli', 'Combine the cooked pasta and meat sauce in a large mixing bowl. Stir until well coated.', 5),
('Baked Mostaccioli', 'Transfer the pasta mixture to a greased baking dish. Top with shredded mozzarella and grated Parmesan cheese.', 6),
('Baked Mostaccioli', 'Bake in the preheated oven for 25-30 minutes, or until the cheese is melted and bubbly.', 7),
('Baked Mostaccioli', 'Serve hot, optionally garnished with chopped fresh basil or parsley.', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Baked Mostaccioli', 'Italian'),
('Baked Mostaccioli', 'Pasta'),
('Baked Mostaccioli', 'Baked'),
('Baked Mostaccioli', 'Comfort Food');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Baked Mostaccioli', 'Dinner'),
('Baked Mostaccioli', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Ravioli with Snap Peas', 'Cooking', 2, 'Ravioli with Snap Peas is a quick and easy pasta dish that\'s perfect for busy weeknights. Cheese-filled ravioli is cooked until tender, then tossed with crisp snap peas, garlic, and Parmesan cheese for a simple yet flavorful meal.', 'Feel free to use your favorite type of ravioli for this recipe, such as spinach and ricotta or mushroom-filled.', 'For added protein, you can top the dish with grilled chicken or shrimp.', 'Garnish with chopped fresh herbs like basil or parsley for a burst of flavor.', 10.0, 15.0, 10.0, 'Italy', 'http://fakephotolink.com/ravioli_snap_peas.jpg', 'Ravioli with Snap Peas with grated Parmesan cheese', 10, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Ravioli with Snap Peas', 'Pot', 1),
('Ravioli with Snap Peas', 'Skillet', 1),
('Ravioli with Snap Peas', 'Mixing Bowl', 1),
('Ravioli with Snap Peas', 'Measuring Cups', 1),
('Ravioli with Snap Peas', 'Measuring Spoons', 1),
('Ravioli with Snap Peas', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Ravioli', 168.0, 0, 'Cereals and Cereal Products', 'gr'),
('Snap Peas', 42.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 5.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Parmesan Cheese', 431.0, 0, 'Meat and Meat Products', 'gr'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Ravioli with Snap Peas', 'Ravioli', 400, NULL),
('Ravioli with Snap Peas', 'Snap Peas', 200, NULL),
('Ravioli with Snap Peas', 'Garlic', 2, NULL),
('Ravioli with Snap Peas', 'Butter', 30, NULL),
('Ravioli with Snap Peas', 'Parmesan Cheese', 50, NULL),
('Ravioli with Snap Peas', 'Salt', 1, NULL),
('Ravioli with Snap Peas', 'Black Pepper', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Ravioli with Snap Peas', 'Ravioli');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Ravioli with Snap Peas', 'Cook ravioli according to package instructions. Drain and set aside.', 1),
('Ravioli with Snap Peas', 'In a skillet, melt butter over medium heat. Add minced garlic and cook until fragrant.', 2),
('Ravioli with Snap Peas', 'Add snap peas to the skillet and cook until crisp-tender, about 2-3 minutes.', 3),
('Ravioli with Snap Peas', 'Add cooked ravioli to the skillet and toss to combine with the snap peas.', 4),
('Ravioli with Snap Peas', 'Season with salt and black pepper, then sprinkle with grated Parmesan cheese.', 5),
('Ravioli with Snap Peas', 'Serve hot, optionally garnished with additional Parmesan cheese and chopped fresh herbs.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Ravioli with Snap Peas', 'Pasta'),
('Ravioli with Snap Peas', 'Quick'),
('Ravioli with Snap Peas', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Ravioli with Snap Peas', 'Dinner'),
('Ravioli with Snap Peas', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Cloverleaf Rolls','Cooking', 3, 'Cloverleaf Rolls are soft, fluffy dinner rolls that are perfect for any occasion. They get their name from their unique shape, which resembles a cloverleaf. These rolls are easy to make and are sure to impress your family and friends.', 'Make sure the yeast is activated and frothy before adding it to the flour mixture.', 'Knead the dough until it is smooth and elastic for the best texture.', 'Brush the rolls with melted butter after baking for extra flavor and shine.', 5.0, 20.0, 15.0, 'Norway', 'http://fakephotolink.com/cloverleaf_rolls.jpg', 'Cloverleaf Rolls on a baking tray', 5, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Cloverleaf Rolls', 'Mixing Bowl', 1),
('Cloverleaf Rolls', 'Baking Sheet', 1),
('Cloverleaf Rolls', 'Measuring Cups', 1),
('Cloverleaf Rolls', 'Measuring Spoons', 1),
('Cloverleaf Rolls', 'Spatula', 1),
('Cloverleaf Rolls', 'Pastry Brush', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Warm Water', 0.0, 0, 'Others', 'ml'),
('Active Dry Yeast', 0.0, 0, 'Others', 'tbsp'),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Cloverleaf Rolls', 'Warm Water', 240, NULL),
('Cloverleaf Rolls', 'Active Dry Yeast', 1, NULL),
('Cloverleaf Rolls', 'Granulated Sugar', 50, NULL),
('Cloverleaf Rolls', 'Egg', 1, NULL),
('Cloverleaf Rolls', 'Butter', 60, NULL),
('Cloverleaf Rolls', 'Salt', 1, NULL),
('Cloverleaf Rolls', 'All-Purpose Flour', 500, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Cloverleaf Rolls', 'Active Dry Yeast');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Cloverleaf Rolls', 'In a mixing bowl, combine warm water, yeast, and sugar. Let sit for 5-10 minutes, or until frothy.', 1),
('Cloverleaf Rolls', 'Add beaten egg, melted butter, salt, and half of the flour to the yeast mixture. Stir until well combined.', 2),
('Cloverleaf Rolls', 'Gradually add the remaining flour until a soft dough forms. Knead the dough on a floured surface for 5-7 minutes, or until smooth and elastic.', 3),
('Cloverleaf Rolls', 'Place the dough in a greased bowl, cover with a clean kitchen towel, and let rise in a warm place for 1 hour, or until doubled in size.', 4),
('Cloverleaf Rolls', 'Punch down the dough and divide it into small pieces. Shape each piece into a ball and place three balls into each greased muffin cup.', 5),
('Cloverleaf Rolls', 'Cover the muffin tin with a clean kitchen towel and let rise for an additional 30 minutes.', 6),
('Cloverleaf Rolls', 'Preheat the oven to 375°F (190°C).', 7),
('Cloverleaf Rolls', 'Bake the rolls for 12-15 minutes, or until golden brown.', 8),
('Cloverleaf Rolls', 'Remove from the oven and brush with melted butter. Serve warm.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Cloverleaf Rolls', 'Bread'),
('Cloverleaf Rolls', 'Rolls'),
('Cloverleaf Rolls', 'Fluffy'),
('Cloverleaf Rolls', 'Homemade');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Cloverleaf Rolls', 'Dinner'),
('Cloverleaf Rolls', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Greek Yogurt and Honey Blueberry Muffins', 'Pastry', 2, 'These Greek Yogurt and Honey Blueberry Muffins are moist, tender, and bursting with blueberries. Made with Greek yogurt and sweetened with honey, they\'re a healthier option for breakfast or snack time. Enjoy them fresh out of the oven or freeze for later!', 'Fold blueberries into the batter gently to avoid bursting them.', 'For extra flavor, add lemon zest or almond extract to the batter.', 'You can use fresh or frozen blueberries for this recipe.', 5.0, 20.0, 15.0, 'Greece', 'http://fakephotolink.com/greek_yogurt_blueberry_muffins.jpg', 'Greek Yogurt and Honey Blueberry Muffins', 5, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Greek Yogurt and Honey Blueberry Muffins', 'Muffin Tin', 1),
('Greek Yogurt and Honey Blueberry Muffins', 'Mixing Bowl', 1),
('Greek Yogurt and Honey Blueberry Muffins', 'Whisk', 1),
('Greek Yogurt and Honey Blueberry Muffins', 'Measuring Cups', 1),
('Greek Yogurt and Honey Blueberry Muffins', 'Measuring Spoons', 1),
('Greek Yogurt and Honey Blueberry Muffins', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Baking Powder', 0.0, 0, 'Others', 'tsp'),
('Baking Soda', 0.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Greek Yogurt', 59.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Honey', 304.0, 0, 'Sweeteners', 'ml'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Vanilla Extract', 288.0, 0, 'Other', 'tsp'),
('Blueberries', 85.0, 0, 'Various Plant-based Foods', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Greek Yogurt and Honey Blueberry Muffins', 'All-Purpose Flour', 240, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Baking Powder', 10, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Baking Soda', 5, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Salt', 2, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Greek Yogurt', 120, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Honey', 120, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Egg', 1, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Butter', 30, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Vanilla Extract', 5, NULL),
('Greek Yogurt and Honey Blueberry Muffins', 'Blueberries', 150, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Greek Yogurt and Honey Blueberry Muffins', 'Greek Yogurt');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Greek Yogurt and Honey Blueberry Muffins', 'Preheat the oven to 375°F (190°C). Grease a muffin tin or line with paper liners.', 1),
('Greek Yogurt and Honey Blueberry Muffins', 'In a mixing bowl, whisk together flour, baking powder, baking soda, and salt.', 2),
('Greek Yogurt and Honey Blueberry Muffins', 'In another bowl, mix together Greek yogurt, honey, melted butter, egg, and vanilla extract until well combined.', 3),
('Greek Yogurt and Honey Blueberry Muffins', 'Add the wet ingredients to the dry ingredients and stir until just combined. Gently fold in the blueberries.', 4),
('Greek Yogurt and Honey Blueberry Muffins', 'Divide the batter evenly among the muffin cups, filling each about two-thirds full.', 5),
('Greek Yogurt and Honey Blueberry Muffins', 'Bake for 15-18 minutes, or until a toothpick inserted into the center comes out clean.', 6),
('Greek Yogurt and Honey Blueberry Muffins', 'Allow the muffins to cool in the tin for 5 minutes, then transfer to a wire rack to cool completely.', 7),
('Greek Yogurt and Honey Blueberry Muffins', 'Serve warm or at room temperature. Enjoy!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Greek Yogurt and Honey Blueberry Muffins', 'Muffins'),
('Greek Yogurt and Honey Blueberry Muffins', 'Blueberries'),
('Greek Yogurt and Honey Blueberry Muffins', 'Healthy'),
('Greek Yogurt and Honey Blueberry Muffins', 'Breakfast');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Greek Yogurt and Honey Blueberry Muffins', 'Breakfast'),
('Greek Yogurt and Honey Blueberry Muffins', 'Snack');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Whole Grain Waffles', 'Pastry', 2, 'Whole Grain Waffles are a healthier alternative to traditional waffles, made with whole wheat flour and sweetened with honey. They\'re crispy on the outside, fluffy on the inside, and perfect for a wholesome breakfast or brunch.', 'Make sure your waffle iron is well-greased to prevent sticking.', 'For extra flavor, add a teaspoon of cinnamon or vanilla extract to the batter.', 'Serve with fresh fruit, maple syrup, or yogurt for a delicious breakfast.', 10.0, 20.0, 10.0, 'Canada', 'http://fakephotolink.com/whole_grain_waffles.jpg', 'Whole Grain Waffles with berries and syrup', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Whole Grain Waffles', 'Waffle Iron', 1),
('Whole Grain Waffles', 'Mixing Bowl', 1),
('Whole Grain Waffles', 'Whisk', 1),
('Whole Grain Waffles', 'Measuring Cups', 1),
('Whole Grain Waffles', 'Measuring Spoons', 1),
('Whole Grain Waffles', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Whole Wheat Flour', 340.0, 0, 'Cereals and Cereal Products', 'gr'),
('Baking Powder', 0.0, 0, 'Others', 'tsp'),
('Baking Soda', 0.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Honey', 304.0, 0, 'Sweeteners', 'ml'),
('Buttermilk', 98.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Vanilla Extract', 288.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Whole Grain Waffles', 'Whole Wheat Flour', 240, NULL),
('Whole Grain Waffles', 'Baking Powder', 10, NULL),
('Whole Grain Waffles', 'Baking Soda', 5, NULL),
('Whole Grain Waffles', 'Salt', 2, NULL),
('Whole Grain Waffles', 'Egg', 1, NULL),
('Whole Grain Waffles', 'Honey', 120, NULL),
('Whole Grain Waffles', 'Buttermilk', 120, NULL),
('Whole Grain Waffles', 'Butter', 30, NULL),
('Whole Grain Waffles', 'Vanilla Extract', 5, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Whole Grain Waffles', 'Buttermilk');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Whole Grain Waffles', 'Preheat your waffle iron according to the manufacturer\'s instructions.', 1),
('Whole Grain Waffles', 'In a mixing bowl, whisk together flour, baking powder, baking soda, and salt.', 2),
('Whole Grain Waffles', 'In another bowl, whisk together egg, honey, buttermilk, melted butter, and vanilla extract.', 3),
('Whole Grain Waffles', 'Pour the wet ingredients into the dry ingredients and stir until just combined. Do not overmix; it\'s okay if there are a few lumps.', 4),
('Whole Grain Waffles', 'Pour the batter onto the preheated waffle iron and cook according to the manufacturer\'s instructions, usually about 3-5 minutes, or until golden brown and crisp.', 5),
('Whole Grain Waffles', 'Serve warm with your favorite toppings, such as fresh fruit, maple syrup, or yogurt.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Whole Grain Waffles', 'Waffles'),
('Whole Grain Waffles', 'Healthy'),
('Whole Grain Waffles', 'Breakfast');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Whole Grain Waffles', 'Breakfast'),
('Whole Grain Waffles', 'Brunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lemon Bars', 'Pastry', 2, 'Lemon Bars are a classic dessert that combines the tartness of lemon with the sweetness of a buttery shortbread crust. These bars are easy to make and perfect for any occasion, from picnics to potlucks.', 'Make sure to thoroughly chill the bars before slicing to get clean edges.', 'You can dust the bars with powdered sugar for a decorative touch before serving.', 'Store leftovers in an airtight container in the refrigerator for up to 3 days.', 5.0, 35.0, 20.0, 'United States', 'http://fakephotolink.com/lemon_bars.jpg', 'Lemon Bars with powdered sugar', 5, 35);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lemon Bars', 'Baking Dish', 1),
('Lemon Bars', 'Mixing Bowl', 1),
('Lemon Bars', 'Whisk', 1),
('Lemon Bars', 'Measuring Cups', 1),
('Lemon Bars', 'Measuring Spoons', 1),
('Lemon Bars', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Powdered Sugar', 389.0, 0, 'Sweeteners', 'gr'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Lemon Juice', 4.0, 0, 'Various Plant-based Foods', 'ml'),
('Lemon Zest', 3.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Baking Powder', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lemon Bars', 'All-Purpose Flour', 200, NULL),
('Lemon Bars', 'Powdered Sugar', 50, NULL),
('Lemon Bars', 'Butter', 115, NULL),
('Lemon Bars', 'Salt', 1, NULL),
('Lemon Bars', 'Egg', 2, NULL),
('Lemon Bars', 'Granulated Sugar', 200, NULL),
('Lemon Bars', 'Lemon Juice', 120, NULL),
('Lemon Bars', 'Lemon Zest', 2, NULL),
('Lemon Bars', 'Baking Powder', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lemon Bars', 'Lemon Juice');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lemon Bars', 'Preheat the oven to 350°F (175°C). Grease a 9x13-inch baking dish.', 1),
('Lemon Bars', 'In a mixing bowl, combine flour, powdered sugar, and salt. Cut in the butter until the mixture resembles coarse crumbs.', 2),
('Lemon Bars', 'Press the mixture into the bottom of the prepared baking dish.', 3),
('Lemon Bars', 'Bake in the preheated oven for 15-20 minutes, or until lightly golden brown.', 4),
('Lemon Bars', 'While the crust is baking, whisk together eggs, granulated sugar, lemon juice, lemon zest, and baking powder until well combined.', 5),
('Lemon Bars', 'Pour the lemon mixture over the hot crust.', 6),
('Lemon Bars', 'Return the dish to the oven and bake for an additional 20-25 minutes, or until the filling is set and the edges are golden brown.', 7),
('Lemon Bars', 'Allow the bars to cool completely in the baking dish on a wire rack.', 8),
('Lemon Bars', 'Once cooled, refrigerate for at least 2 hours before slicing into bars.', 9),
('Lemon Bars', 'Cut into squares and serve. Enjoy!', 10);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lemon Bars', 'Dessert'),
('Lemon Bars', 'Citrus'),
('Lemon Bars', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lemon Bars', 'Dessert');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Qahaq Cookies', 'Pastry', 2, 'Qahaq Cookies are traditional Iranian cookies that are flavored with cardamom and rosewater, giving them a unique and exotic taste. These cookies are delicate, buttery, and perfect for serving with tea or coffee.', 'For the best flavor, use freshly ground cardamom.', 'Be careful not to overwork the dough, as it can make the cookies tough.', 'Store the cookies in an airtight container to keep them fresh.', 10.0, 20.0, 15.0, 'Iran', 'http://fakephotolink.com/qahaq_cookies.jpg', 'Qahaq Cookies with tea', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Qahaq Cookies', 'Baking Sheet', 1),
('Qahaq Cookies', 'Mixing Bowl', 1),
('Qahaq Cookies', 'Whisk', 1),
('Qahaq Cookies', 'Measuring Cups', 1),
('Qahaq Cookies', 'Measuring Spoons', 1),
('Qahaq Cookies', 'Rolling Pin', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Rosewater', 2.0, 0, 'Herbs and Essential Oils', 'tbsp'),
('Ground Cardamom', 0.0, 0, 'Herbs and Essential Oils', 'tsp'),
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Qahaq Cookies', 'Butter', 120, NULL),
('Qahaq Cookies', 'Granulated Sugar', 100, NULL),
('Qahaq Cookies', 'Egg', 1, NULL),
('Qahaq Cookies', 'Rosewater', 15, NULL),
('Qahaq Cookies', 'Ground Cardamom', 2, NULL),
('Qahaq Cookies', 'All-Purpose Flour', 200, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Qahaq Cookies', 'Granulated Sugar');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Qahaq Cookies', 'Preheat the oven to 350°F (175°C). Line a baking sheet with parchment paper.', 1),
('Qahaq Cookies', 'In a mixing bowl, cream together butter and sugar until light and fluffy.', 2),
('Qahaq Cookies', 'Beat in the egg, rosewater, and ground cardamom until well combined.', 3),
('Qahaq Cookies', 'Gradually add the flour, mixing until a soft dough forms.', 4),
('Qahaq Cookies', 'On a lightly floured surface, roll out the dough to about 1/4 inch thickness.', 5),
('Qahaq Cookies', 'Using cookie cutters, cut out shapes from the dough and place them on the prepared baking sheet.', 6),
('Qahaq Cookies', 'Bake for 10-12 minutes, or until the edges are lightly golden.', 7),
('Qahaq Cookies', 'Remove from the oven and let cool on the baking sheet for a few minutes before transferring to a wire rack to cool completely.', 8),
('Qahaq Cookies', 'Once cooled, store in an airtight container.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Qahaq Cookies', 'Cookies'),
('Qahaq Cookies', 'Iranian'),
('Qahaq Cookies', 'Cardamom'),
('Qahaq Cookies', 'Rosewater');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Qahaq Cookies', 'Dessert'),
('Qahaq Cookies', 'Snack');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Blondies with Nutella', 'Pastry', 2, 'Blondies with Nutella are a delicious twist on the classic blondie recipe. These chewy, buttery bars are swirled with rich Nutella for an indulgent treat that\'s sure to satisfy your sweet tooth.', 'For extra flavor, sprinkle chopped nuts or chocolate chips on top before baking.', 'Be careful not to overmix the batter, as this can make the blondies tough.', 'Allow the blondies to cool completely in the pan before slicing for clean edges.', 5.0, 25.0, 20.0, 'Venezuela', 'http://fakephotolink.com/blondies_nutella.jpg', 'Blondies with Nutella', 5, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Blondies with Nutella', 'Baking Dish', 1),
('Blondies with Nutella', 'Mixing Bowl', 1),
('Blondies with Nutella', 'Whisk', 1),
('Blondies with Nutella', 'Measuring Cups', 1),
('Blondies with Nutella', 'Measuring Spoons', 1),
('Blondies with Nutella', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Brown Sugar', 377.0, 0, 'Sweeteners', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Vanilla Extract', 288.0, 0, 'Others', 'tsp'),
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Baking Powder', 0.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Nutella', 80.0, 0, 'Sweeteners', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Blondies with Nutella', 'Butter', 120, NULL),
('Blondies with Nutella', 'Brown Sugar', 200, NULL),
('Blondies with Nutella', 'Egg', 2, NULL),
('Blondies with Nutella', 'Vanilla Extract', 5, NULL),
('Blondies with Nutella', 'All-Purpose Flour', 200, NULL),
('Blondies with Nutella', 'Baking Powder', 2, NULL),
('Blondies with Nutella', 'Salt', 1, NULL),
('Blondies with Nutella', 'Nutella', 120, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Blondies with Nutella', 'Nutella');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Blondies with Nutella', 'Preheat the oven to 350°F (175°C). Grease an 8x8-inch baking dish.', 1),
('Blondies with Nutella', 'In a mixing bowl, cream together butter and brown sugar until light and fluffy.', 2),
('Blondies with Nutella', 'Beat in the eggs, one at a time, followed by the vanilla extract.', 3),
('Blondies with Nutella', 'In a separate bowl, whisk together flour, baking powder, and salt.', 4),
('Blondies with Nutella', 'Gradually add the dry ingredients to the wet ingredients, mixing until just combined.', 5),
('Blondies with Nutella', 'Spread the batter evenly into the prepared baking dish.', 6),
('Blondies with Nutella', 'Drop spoonfuls of Nutella onto the batter, then swirl with a knife to create a marbled effect.', 7),
('Blondies with Nutella', 'Bake for 20-25 minutes, or until a toothpick inserted into the center comes out clean or with a few moist crumbs.', 8),
('Blondies with Nutella', 'Allow the blondies to cool completely in the pan before slicing into squares.', 9),
('Blondies with Nutella', 'Serve and enjoy!', 10);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Blondies with Nutella', 'Dessert'),
('Blondies with Nutella', 'Chocolate'),
('Blondies with Nutella', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Blondies with Nutella', 'Dessert'),
('Blondies with Nutella', 'Snack');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Hot Chocolate', 'Beverage', 1, 'Hot Chocolate is a cozy and comforting drink perfect for cold days or evenings by the fireplace. Made with rich cocoa, sugar, and milk, it\'s easy to make and can be customized with your favorite toppings like whipped cream or marshmallows.', 'Use high-quality cocoa powder for the best flavor.', 'For a richer taste, use whole milk or half-and-half.', 'Top with whipped cream, marshmallows, or a sprinkle of cinnamon before serving.', 5.0, 10.0, 5.0, 'Czech Republic', 'http://fakephotolink.com/hot_chocolate.jpg', 'Hot Chocolate with marshmallows', 5, 10);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Hot Chocolate', 'Saucepan', 1),
('Hot Chocolate', 'Whisk', 1),
('Hot Chocolate', 'Measuring Cups', 1),
('Hot Chocolate', 'Measuring Spoons', 1),
('Hot Chocolate', 'Mug', 2);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Cocoa Powder', 228.0, 0, 'Sweeteners', 'tbsp'),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Milk', 148.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Vanilla Extract', 288.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'pinch'),
('Whipped Cream', 52.0, 0, 'Sweeteners', 'tbsp'),
('Mini Marshmallows', 100.0, 0, 'Sweeteners', 'tbsp'),
('Ground Cinnamon', 6.0, 0, 'Herbs and Essential Oils', 'pinch');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Hot Chocolate', 'Cocoa Powder', 30, NULL),
('Hot Chocolate', 'Granulated Sugar', 50, NULL),
('Hot Chocolate', 'Milk', 500, NULL),
('Hot Chocolate', 'Vanilla Extract', 5, NULL),
('Hot Chocolate', 'Salt', NULL, 'pinch');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Hot Chocolate', 'Cocoa Powder');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Hot Chocolate', 'In a saucepan, whisk together cocoa powder, sugar, and a pinch of salt.', 1),
('Hot Chocolate', 'Gradually whisk in milk until smooth.', 2),
('Hot Chocolate', 'Place the saucepan over medium heat and cook, stirring constantly, until hot but not boiling.', 3),
('Hot Chocolate', 'Remove from heat and stir in vanilla extract.', 4),
('Hot Chocolate', 'Pour into mugs and top with whipped cream, marshmallows, or a sprinkle of cinnamon.', 5),
('Hot Chocolate', 'Serve immediately and enjoy!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Hot Chocolate', 'Beverage'),
('Hot Chocolate', 'Comfort Food'),
('Hot Chocolate', 'Winter');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Hot Chocolate', 'Beverage');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chocolate Mousse', 'Pastry', 4, 'Chocolate Mousse is a decadent and velvety dessert that is surprisingly easy to make. Made with rich chocolate and airy whipped cream, it\'s a classic indulgence that never fails to impress.', 'Use high-quality chocolate for the best flavor and texture.', 'Be gentle when folding the whipped cream into the chocolate mixture to keep the mousse light and airy.', 'Chill the mousse for at least 4 hours, or overnight, to allow it to set properly.', 5.0, 15.0, 30.0, 'France', 'http://fakephotolink.com/chocolate_mousse.jpg', 'Chocolate Mousse in a glass', 5, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chocolate Mousse', 'Mixing Bowl', 1),
('Chocolate Mousse', 'Whisk', 1),
('Chocolate Mousse', 'Blender', 1),
('Chocolate Mousse', 'Spatula', 1),
('Chocolate Mousse', 'Glass Bowls', 4);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Semi-Sweet Chocolate', 525.0, 0, 'Sweeteners', 'gr'),
('Heavy Cream', 414.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Vanilla Extract', 288.0, 0, 'Others', 'tsp'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Water', 0.0, 0, 'Water and Water-Based Drinks', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chocolate Mousse', 'Semi-Sweet Chocolate', 300, NULL),
('Chocolate Mousse', 'Heavy Cream', 500, NULL),
('Chocolate Mousse', 'Vanilla Extract', 5, NULL),
('Chocolate Mousse', 'Egg', 2, NULL),
('Chocolate Mousse', 'Granulated Sugar', 150, NULL),
('Chocolate Mousse', 'Water', 30, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chocolate Mousse', 'Semi-Sweet Chocolate');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chocolate Mousse', 'In a heatproof bowl set over a pan of simmering water, melt the chocolate, stirring occasionally. Remove from heat and let cool slightly.', 1),
('Chocolate Mousse', 'In another bowl, whip the heavy cream until soft peaks form. Refrigerate until ready to use.', 2),
('Chocolate Mousse', 'In a small saucepan, whisk together egg yolks, sugar, and water. Cook over medium heat, whisking constantly, until mixture reaches 160°F (71°C) and coats the back of a metal spoon.', 3),
('Chocolate Mousse', 'Remove from heat and stir in vanilla extract. Gradually stir the egg mixture into the melted chocolate until smooth.', 4),
('Chocolate Mousse', 'In a separate bowl, beat egg whites until stiff peaks form. Fold into chocolate mixture.', 5),
('Chocolate Mousse', 'Fold whipped cream into chocolate mixture until well combined and no streaks remain.', 6),
('Chocolate Mousse', 'Spoon or pipe mousse into serving dishes. Chill for at least 4 hours, or overnight, before serving.', 7),
('Chocolate Mousse', 'Serve chilled and enjoy!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chocolate Mousse', 'Dessert'),
('Chocolate Mousse', 'Chocolate'),
('Chocolate Mousse', 'French');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Chocolate Mousse', 'Dessert');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('S\'mores Cookie Bars', 'Pastry', 5, 'S\'mores Cookie Bars combine the classic flavors of s\'mores into an easy and portable treat. These bars have a graham cracker crust, a chewy cookie layer, and are topped with melted chocolate and toasted marshmallows.', 'For easier cutting, chill the bars in the refrigerator before slicing.', 'You can use a kitchen torch or the broiler in your oven to toast the marshmallows.', 'Store any leftovers in an airtight container at room temperature for up to 3 days.', 5.0, 20.0, 25.0, 'United States', 'http://fakephotolink.com/smores_cookie_bars.jpg', 'S\'mores Cookie Bars', 5, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('S\'mores Cookie Bars', 'Baking Dish', 1),
('S\'mores Cookie Bars', 'Mixing Bowl', 1),
('S\'mores Cookie Bars', 'Whisk', 1),
('S\'mores Cookie Bars', 'Measuring Cups', 1),
('S\'mores Cookie Bars', 'Measuring Spoons', 1),
('S\'mores Cookie Bars', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Graham Cracker Crumbs', 108.0, 0, 'Cereals and Cereal Products', 'gr'),
('Butter', 717.0, 0, 'Fats and Oils', 'tbsp'),
('Granulated Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Brown Sugar', 377.0, 0, 'Sweeteners', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Vanilla Extract', 288.0, 0, 'Others', 'tsp'),
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Baking Powder', 0.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Chocolate Chips', 805.0, 0, 'Sweeteners', 'gr'),
('Mini Marshmallows', 100.0, 0, 'Sweeteners', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('S\'mores Cookie Bars', 'Graham Cracker Crumbs', 200, NULL),
('S\'mores Cookie Bars', 'Butter', 120, NULL),
('S\'mores Cookie Bars', 'Granulated Sugar', 100, NULL),
('S\'mores Cookie Bars', 'Brown Sugar', 100, NULL),
('S\'mores Cookie Bars', 'Egg', 1, NULL),
('S\'mores Cookie Bars', 'Vanilla Extract', 5, NULL),
('S\'mores Cookie Bars', 'All-Purpose Flour', 120, NULL),
('S\'mores Cookie Bars', 'Baking Powder', 2, NULL),
('S\'mores Cookie Bars', 'Salt', 1, NULL),
('S\'mores Cookie Bars', 'Chocolate Chips', 150, NULL),
('S\'mores Cookie Bars', 'Mini Marshmallows', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('S\'mores Cookie Bars', 'Chocolate Chips');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('S\'mores Cookie Bars', 'Preheat the oven to 350°F (175°C). Grease a 9x13-inch baking dish.', 1),
('S\'mores Cookie Bars', 'In a mixing bowl, combine graham cracker crumbs, melted butter, and granulated sugar. Press into the bottom of the prepared baking dish.', 2),
('S\'mores Cookie Bars', 'In another bowl, whisk together brown sugar, egg, and vanilla extract until smooth.', 3),
('S\'mores Cookie Bars', 'Gradually add flour, baking powder, and salt, mixing until well combined.', 4),
('S\'mores Cookie Bars', 'Fold in chocolate chips.', 5),
('S\'mores Cookie Bars', 'Spread the cookie dough evenly over the graham cracker crust.', 6),
('S\'mores Cookie Bars', 'Bake for 15-20 minutes, or until the edges are golden brown and the center is set.', 7),
('S\'mores Cookie Bars', 'Remove from the oven and sprinkle the top with mini marshmallows.', 8),
('S\'mores Cookie Bars', 'Return to the oven and bake for an additional 5 minutes, or until the marshmallows are golden brown and puffed.', 9),
('S\'mores Cookie Bars', 'Let cool completely in the pan on a wire rack before slicing into bars.', 10),
('S\'mores Cookie Bars', 'Enjoy your delicious S\'mores Cookie Bars!', 11);

INSERT INTO tags (recipe_name, tag_name) VALUES
('S\'mores Cookie Bars', 'Dessert'),
('S\'mores Cookie Bars', 'S\'mores'),
('S\'mores Cookie Bars', 'Chocolate'),
('S\'mores Cookie Bars', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('S\'mores Cookie Bars', 'Dessert'),
('S\'mores Cookie Bars', 'Snack');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Orange Chicken', 'Cooking', 4, 'Orange Chicken is a popular Chinese-American dish featuring crispy fried chicken pieces coated in a tangy orange sauce. This homemade version is healthier than takeout and just as delicious!', 'To get crispy chicken, make sure the oil is hot enough before frying.', 'For extra flavor, marinate the chicken in soy sauce, garlic, and ginger for at least 30 minutes before cooking.', 'Serve with steamed rice and steamed broccoli for a complete meal.', 30.0, 30.0, 30.0, 'China', 'http://fakephotolink.com/orange_chicken.jpg', 'Orange Chicken with rice and broccoli', 30, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Orange Chicken', 'Bowl', 1),
('Orange Chicken', 'Whisk', 1),
('Orange Chicken', 'Skillet', 1),
('Orange Chicken', 'Tongs', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breast', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Soy Sauce', 8.0, 0, 'Legumes and Legume Products', 'tbsp'),
('Cornstarch', 381.0, 0, 'Cereals and Cereal Products', 'tbsp'),
('Vegetable Oil', 884.0, 0, 'Fats and Oils', 'tbsp'),
('Orange Juice', 39.0, 0, 'Various Plant-based Foods', 'ml'),
('Orange Zest', 6.0, 0, 'Various Plant-based Foods', 'tsp'),
('Brown Sugar', 387.0, 0, 'Sweeteners', 'gr'),
('Rice Vinegar', 43.0, 0, 'Fats and Oils', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Ginger', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Red Chili Flakes', 8.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Green Onion', 32.0, 0, 'Various Plant-based Foods', 'stalk');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Orange Chicken', 'Chicken Breast', 500, NULL),
('Orange Chicken', 'Soy Sauce', 60, NULL),
('Orange Chicken', 'Cornstarch', 60, NULL),
('Orange Chicken', 'Vegetable Oil', NULL, 'as needed'),
('Orange Chicken', 'Orange Juice', 120, NULL),
('Orange Chicken', 'Orange Zest', 2, NULL),
('Orange Chicken', 'Brown Sugar', 100, NULL),
('Orange Chicken', 'Rice Vinegar', 30, NULL),
('Orange Chicken', 'Garlic', 3, NULL),
('Orange Chicken', 'Ginger', 1, NULL),
('Orange Chicken', 'Red Chili Flakes', 1, NULL),
('Orange Chicken', 'Green Onion', NULL, 'to garnish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Orange Chicken', 'Chicken Breast');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Orange Chicken', 'In a large bowl, combine soy sauce, cornstarch, and diced chicken. Toss to coat and let marinate for 15 minutes.', 1),
('Orange Chicken', 'In a small bowl, whisk together orange juice, orange zest, brown sugar, rice vinegar, minced garlic, minced ginger, and red chili flakes to make the sauce.', 2),
('Orange Chicken', 'Heat vegetable oil in a skillet over medium-high heat. Add the marinated chicken pieces in a single layer, shaking off excess cornstarch.', 3),
('Orange Chicken', 'Cook until golden brown and cooked through, about 3-4 minutes per side. Remove chicken from skillet and set aside on a plate lined with paper towels.', 4),
('Orange Chicken', 'In the same skillet, add the sauce mixture. Bring to a simmer and cook until slightly thickened, about 2-3 minutes.', 5),
('Orange Chicken', 'Return the chicken to the skillet and toss to coat in the sauce. Cook for an additional 1-2 minutes, until heated through.', 6),
('Orange Chicken', 'Garnish with sliced green onions and serve hot with steamed rice.', 7),
('Orange Chicken', 'Enjoy your homemade Orange Chicken!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Orange Chicken', 'Main Dish'),
('Orange Chicken', 'Asian'),
('Orange Chicken', 'Chicken');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Orange Chicken', 'Main Course');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Tostadas', 'Cooking', 2, 'Tostadas are a popular Mexican dish consisting of crispy fried tortillas topped with various ingredients. These vegetarian tostadas are loaded with refried beans, lettuce, tomatoes, cheese, and avocado for a flavorful and satisfying meal.', 'Feel free to customize your tostadas with your favorite toppings like salsa, sour cream, or jalapeños.', 'For a healthier version, you can bake the tortillas instead of frying them.', 'Serve with a side of Mexican rice and beans for a complete meal.', 20.0, 15.0, 15.0, 'Mexico', 'http://fakephotolink.com/tostadas.jpg', 'Tostadas with refried beans and avocado', 20, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Tostadas', 'Skillet', 1),
('Tostadas', 'Tongs', 1),
('Tostadas', 'Baking Sheet', 1),
('Tostadas', 'Mixing Bowl', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Corn Tortillas', 52.0, 0, 'Cereals and Cereal Products', 'piece'),
('Refried Beans', 91.0, 0, 'Legumes and Legume Products', 'cup'),
('Lettuce', 5.0, 0, 'Various Plant-based Foods', 'cup'),
('Tomato', 22.0, 0, 'Various Plant-based Foods', 'piece'),
('Cheese', 402.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Avocado', 234.0, 0, 'Various Plant-based Foods', 'piece');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Tostadas', 'Corn Tortillas', 6, NULL),
('Tostadas', 'Refried Beans', NULL, 'as needed'),
('Tostadas', 'Lettuce', NULL, 'as needed'),
('Tostadas', 'Tomato', NULL, 'as needed'),
('Tostadas', 'Cheese', NULL, 'as needed'),
('Tostadas', 'Avocado', NULL, 'as needed');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Tostadas', 'Corn Tortillas');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Tostadas', 'Preheat the oven to 400°F (200°C).', 1),
('Tostadas', 'Heat a skillet over medium heat and warm the corn tortillas, one at a time, until slightly crispy, about 1 minute per side. Alternatively, you can bake the tortillas in the preheated oven until crispy, about 5-7 minutes per side.', 2),
('Tostadas', 'Spread refried beans over each tortilla.', 3),
('Tostadas', 'Top with shredded lettuce, diced tomatoes, grated cheese, and sliced avocado.', 4),
('Tostadas', 'Serve immediately and enjoy your delicious vegetarian tostadas!', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Tostadas', 'Main Dish'),
('Tostadas', 'Mexican'),
('Tostadas', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Tostadas', 'Main Course');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Black Bean Stuffed Sweet Potatoes', 'Cooking', 5, 'Black Bean Stuffed Sweet Potatoes are a nutritious and satisfying meal that\'s easy to make. Baked sweet potatoes are topped with a flavorful mixture of black beans, corn, tomatoes, and spices for a delicious vegetarian dish.', 'You can prepare the filling in advance and refrigerate it until ready to use.', 'Feel free to customize the filling with your favorite ingredients like avocado, salsa, or cilantro.', 'Serve with a dollop of sour cream or Greek yogurt and a sprinkle of chopped green onions.', 10.0, 45.0, 60.0, 'United States', 'http://fakephotolink.com/stuffed_sweet_potatoes.jpg', 'Black Bean Stuffed Sweet Potatoes', 10, 45);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Black Bean Stuffed Sweet Potatoes', 'Baking Sheet', 1),
('Black Bean Stuffed Sweet Potatoes', 'Mixing Bowl', 1),
('Black Bean Stuffed Sweet Potatoes', 'Knife', 1),
('Black Bean Stuffed Sweet Potatoes', 'Saucepan', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Sweet Potatoes', 90.0, 0, 'Various Plant-based Foods', 'piece'),
('Black Beans', 241.0, 0, 'Legumes and Legume Products', 'cup'),
('Corn', 132.0, 0, 'Various Plant-based Foods', 'cup'),
('Tomato', 22.0, 0, 'Various Plant-based Foods', 'piece'),
('Cumin', 8.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Chili Powder', 6.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Garlic Powder', 10.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'pinch'),
('Black Pepper', 0.0, 0, 'Herbs and Essential Oils', 'pinch'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Black Bean Stuffed Sweet Potatoes', 'Sweet Potatoes', 4, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Black Beans', 2, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Corn', 1, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Tomato', 1, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Cumin', 1, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Chili Powder', 1, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Garlic Powder', 1, NULL),
('Black Bean Stuffed Sweet Potatoes', 'Salt', NULL, 'to taste'),
('Black Bean Stuffed Sweet Potatoes', 'Black Pepper', NULL, 'to taste'),
('Black Bean Stuffed Sweet Potatoes', 'Olive Oil', NULL, 'as needed');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Black Bean Stuffed Sweet Potatoes', 'Sweet Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Black Bean Stuffed Sweet Potatoes', 'Preheat the oven to 400°F (200°C).', 1),
('Black Bean Stuffed Sweet Potatoes', 'Wash the sweet potatoes and pierce them several times with a fork. Place them on a baking sheet and bake for 45-60 minutes, or until tender.', 2),
('Black Bean Stuffed Sweet Potatoes', 'Meanwhile, in a saucepan, heat olive oil over medium heat. Add minced garlic and cook until fragrant, about 1 minute.', 3),
('Black Bean Stuffed Sweet Potatoes', 'Add black beans, corn, diced tomato, cumin, chili powder, garlic powder, salt, and black pepper. Cook for 5-7 minutes, stirring occasionally, until heated through.', 4),
('Black Bean Stuffed Sweet Potatoes', 'Remove sweet potatoes from the oven and let cool slightly. Cut them open lengthwise and fluff the flesh with a fork.', 5),
('Black Bean Stuffed Sweet Potatoes', 'Top each sweet potato with the black bean mixture.', 6),
('Black Bean Stuffed Sweet Potatoes', 'Garnish with chopped cilantro, a dollop of sour cream or Greek yogurt, and a sprinkle of chopped green onions.', 7),
('Black Bean Stuffed Sweet Potatoes', 'Serve immediately and enjoy your Black Bean Stuffed Sweet Potatoes!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Black Bean Stuffed Sweet Potatoes', 'Main Dish'),
('Black Bean Stuffed Sweet Potatoes', 'Vegetarian'),
('Black Bean Stuffed Sweet Potatoes', 'Healthy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Black Bean Stuffed Sweet Potatoes', 'Main Course');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Asian Shredded Beef', 'Cooking', 5, 'Asian Shredded Beef is a savory and tender dish that\'s full of flavor. Thinly sliced beef is marinated in a mixture of soy sauce, ginger, garlic, and other spices, then slow-cooked until perfectly tender. Serve it over rice or noodles for a satisfying meal.', 'For best results, marinate the beef for at least 2 hours, or overnight, to allow the flavors to develop.', 'You can use a slow cooker or pressure cooker to cook the beef.', 'Garnish with sliced green onions and sesame seeds for extra flavor and presentation.', 15.0, 240.0, 480.0, 'China', 'http://fakephotolink.com/asian_shredded_beef.jpg', 'Asian Shredded Beef with rice', 15, 240);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Asian Shredded Beef', 'Mixing Bowl', 1),
('Asian Shredded Beef', 'Knife', 1),
('Asian Shredded Beef', 'Cutting Board', 1),
('Asian Shredded Beef', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Beef Chuck Roast', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Soy Sauce', 8.0, 0, 'Legumes and Legume Products', 'tbsp'),
('Brown Sugar', 387.0, 0, 'Sweeteners', 'tbsp'),
('Sesame Oil', 40.0, 0, 'Fats and Oils', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Ginger', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Rice Vinegar', 43.0, 0, 'Fats and Oils', 'tbsp'),
('Green Onion', 32.0, 0, 'Various Plant-based Foods', 'stalk'),
('Sesame Seeds', 52.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Asian Shredded Beef', 'Beef Chuck Roast', 500, NULL),
('Asian Shredded Beef', 'Soy Sauce', 60, NULL),
('Asian Shredded Beef', 'Brown Sugar', 30, NULL),
('Asian Shredded Beef', 'Sesame Oil', 30, NULL),
('Asian Shredded Beef', 'Garlic', 3, NULL),
('Asian Shredded Beef', 'Ginger', 1, NULL),
('Asian Shredded Beef', 'Rice Vinegar', 30, NULL),
('Asian Shredded Beef', 'Green Onion', NULL, 'to garnish'),
('Asian Shredded Beef', 'Sesame Seeds', NULL, 'to garnish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Asian Shredded Beef', 'Beef Chuck Roast');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Asian Shredded Beef', 'In a mixing bowl, whisk together soy sauce, brown sugar, sesame oil, minced garlic, minced ginger, and rice vinegar to make the marinade.', 1),
('Asian Shredded Beef', 'Place the beef chuck roast in a slow cooker and pour the marinade over the top. Turn the beef to coat evenly.', 2),
('Asian Shredded Beef', 'Cover and cook on low for 8 hours or high for 4 hours, until the beef is tender and shreds easily with a fork.', 3),
('Asian Shredded Beef', 'Remove the beef from the slow cooker and shred using two forks.', 4),
('Asian Shredded Beef', 'Heat a skillet over medium-high heat. Add the shredded beef and cook until crispy, about 5 minutes.', 5),
('Asian Shredded Beef', 'Serve the shredded beef over rice or noodles, garnished with sliced green onions and sesame seeds.', 6),
('Asian Shredded Beef', 'Enjoy your delicious Asian Shredded Beef!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Asian Shredded Beef', 'Main Dish'),
('Asian Shredded Beef', 'Asian'),
('Asian Shredded Beef', 'Beef');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Asian Shredded Beef', 'Main Course');

-- Capellini with sausage, spinach, and jalapeno
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Capellini with Sausage, Spinach, and Jalapeno', 'Cooking', 3, 'Capellini with Sausage, Spinach, and Jalapeno is a spicy and flavorful pasta dish that\'s quick and easy to make. Thin pasta is tossed with spicy Italian sausage, fresh spinach, and sliced jalapenos, then finished with a sprinkle of Parmesan cheese. It\'s perfect for a weeknight dinner or a special occasion.', 'Adjust the amount of jalapeno according to your spice preference.', 'You can use any type of sausage you like, such as spicy or mild.', 'Serve with garlic bread and a side salad for a complete meal.', 20.0, 15.0, 20.0, 'Italy', 'http://fakephotolink.com/capellini_sausage_spinach_jalapeno.jpg', 'Capellini with Sausage, Spinach, and Jalapeno pasta dish', 15, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Capellini with Sausage, Spinach, and Jalapeno', 'Pot', 1),
('Capellini with Sausage, Spinach, and Jalapeno', 'Colander', 2),
('Capellini with Sausage, Spinach, and Jalapeno', 'Skillet', 1),
('Capellini with Sausage, Spinach, and Jalapeno', 'Knife', 1),
('Capellini with Sausage, Spinach, and Jalapeno', 'Cutting Board', 2),
('Capellini with Sausage, Spinach, and Jalapeno', 'Mixing Bowl', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Capellini Pasta', 210.0, 0, 'Cereals and Cereal Products', 'gr'),
('Italian Sausage', 289.0, 0, 'Meat and Meat Products', 'gr'),
('Spinach', 23.0, 0, 'Various Plant-based Foods', 'cup'),
('Jalapeno', 4.0, 0, 'Various Plant-based Foods', 'unit'),
('Parmesan Cheese', 110.0, 0, 'Milk, Eggs, and Their Products', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Capellini with Sausage, Spinach, and Jalapeno', 'Capellini Pasta', 200, NULL),
('Capellini with Sausage, Spinach, and Jalapeno', 'Italian Sausage', 200, NULL),
('Capellini with Sausage, Spinach, and Jalapeno', 'Spinach', 1, 'as needed'),
('Capellini with Sausage, Spinach, and Jalapeno', 'Jalapeno', 1, NULL),
('Capellini with Sausage, Spinach, and Jalapeno', 'Parmesan Cheese', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Capellini with Sausage, Spinach, and Jalapeno', 'Capellini Pasta');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Capellini with Sausage, Spinach, and Jalapeno', 'Cook the capellini pasta according to package instructions until al dente. Drain and set aside.', 1),
('Capellini with Sausage, Spinach, and Jalapeno', 'In a skillet, cook the Italian sausage over medium heat until browned and cooked through. Remove from the skillet and set aside.', 2),
('Capellini with Sausage, Spinach, and Jalapeno', 'In the same skillet, add sliced jalapenos and cook for 2-3 minutes until softened.', 3),
('Capellini with Sausage, Spinach, and Jalapeno', 'Add spinach to the skillet and cook until wilted.', 4),
('Capellini with Sausage, Spinach, and Jalapeno', 'Return the cooked sausage to the skillet and toss with the spinach and jalapenos.', 5),
('Capellini with Sausage, Spinach, and Jalapeno', 'Add the cooked capellini pasta to the skillet and toss everything together until well combined.', 6),
('Capellini with Sausage, Spinach, and Jalapeno', 'Serve hot, topped with grated Parmesan cheese.', 7),
('Capellini with Sausage, Spinach, and Jalapeno', 'Enjoy your delicious Capellini with Sausage, Spinach, and Jalapeno!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Capellini with Sausage, Spinach, and Jalapeno', 'Pasta'),
('Capellini with Sausage, Spinach, and Jalapeno', 'Italian'),
('Capellini with Sausage, Spinach, and Jalapeno', 'Spicy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Capellini with Sausage, Spinach, and Jalapeno', 'Main Course');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Crispy Chicken with Kale', 'Cooking', 4, 'Crispy Chicken with Kale is a delicious and healthy dish that\'s easy to make. Tender chicken breasts are coated in breadcrumbs and baked until golden and crispy, then served over a bed of sautéed kale. It\'s a nutritious and satisfying meal that the whole family will love.', 'For extra flavor, season the breadcrumbs with your favorite herbs and spices.', 'You can use boneless, skinless chicken thighs instead of chicken breasts if you prefer.', 'Serve with a squeeze of lemon juice for a fresh citrus flavor.', 30.0, 25.0, 20.0, 'United States', 'http://fakephotolink.com/crispy_chicken_with_kale.jpg', 'Crispy Chicken with Kale served over sautéed kale', 15, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Crispy Chicken with Kale', 'Baking Sheet', 1),
('Crispy Chicken with Kale', 'Skillet', 1),
('Crispy Chicken with Kale', 'Mixing Bowl', 1),
('Crispy Chicken with Kale', 'Knife', 3),
('Crispy Chicken with Kale', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breasts', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Breadcrumbs', 400.0, 0, 'Cereals and Cereal Products', 'gr'),
('Kale', 33.0, 0, 'Various Plant-based Foods', 'cup'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Lemon', 17.0, 0, 'Various Plant-based Foods', 'unit');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Crispy Chicken with Kale', 'Chicken Breasts', 400, NULL),
('Crispy Chicken with Kale', 'Breadcrumbs', 100, NULL),
('Crispy Chicken with Kale', 'Kale', 2, NULL),
('Crispy Chicken with Kale', 'Olive Oil', 2, NULL),
('Crispy Chicken with Kale', 'Salt', NULL, 'to taste'),
('Crispy Chicken with Kale', 'Black Pepper', NULL, 'to taste'),
('Crispy Chicken with Kale', 'Lemon', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Crispy Chicken with Kale', 'Chicken Breasts');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Crispy Chicken with Kale', 'Preheat the oven to 400°F (200°C).', 1),
('Crispy Chicken with Kale', 'Place the chicken breasts between two sheets of plastic wrap and pound them to an even thickness.', 2),
('Crispy Chicken with Kale', 'In a mixing bowl, combine breadcrumbs, salt, and black pepper.', 3),
('Crispy Chicken with Kale', 'Coat each chicken breast in the breadcrumb mixture, pressing to adhere.', 4),
('Crispy Chicken with Kale', 'Place the breaded chicken breasts on a baking sheet lined with parchment paper.', 5),
('Crispy Chicken with Kale', 'Bake for 20-25 minutes, or until the chicken is cooked through and the breadcrumbs are golden and crispy.', 6),
('Crispy Chicken with Kale', 'While the chicken is baking, heat olive oil in a skillet over medium heat.', 7),
('Crispy Chicken with Kale', 'Add kale to the skillet and sauté until wilted.', 8),
('Crispy Chicken with Kale', 'Serve the crispy chicken over the sautéed kale, garnished with lemon wedges.', 9),
('Crispy Chicken with Kale', 'Enjoy your Crispy Chicken with Kale!', 10);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Crispy Chicken with Kale', 'Main Dish'),
('Crispy Chicken with Kale', 'Healthy'),
('Crispy Chicken with Kale', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Crispy Chicken with Kale', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Roast Chicken Grain Bowl', 'Cooking', 3, 'Roast Chicken Grain Bowl is a healthy and satisfying meal that\'s perfect for lunch or dinner. Tender roasted chicken is served over a bed of mixed grains, roasted vegetables, and fresh greens, then drizzled with a flavorful dressing. It\'s easy to customize with your favorite grains and veggies.', 'You can use a mix of quinoa, farro, and brown rice for the grains.', 'Feel free to add any roasted vegetables you like, such as sweet potatoes, Brussels sprouts, or carrots.', 'Top with sliced avocado or a boiled egg for extra protein and creaminess.', 35.0, 30.0, 25.0, 'United States', 'http://fakephotolink.com/roast_chicken_grain_bowl.jpg', 'Roast Chicken Grain Bowl with mixed grains and vegetables', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Roast Chicken Grain Bowl', 'Baking Sheet', 1),
('Roast Chicken Grain Bowl', 'Mixing Bowl', 1),
('Roast Chicken Grain Bowl', 'Knife', 11),
('Roast Chicken Grain Bowl', 'Cutting Board',2),
('Roast Chicken Grain Bowl', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breasts', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Mixed Grains', 150.0, 0, 'Cereals and Cereal Products', 'gr'),
('Assorted Vegetables', 40.0, 0, 'Various Plant-based Foods', 'cup'),
('Mixed Greens', 4.0, 0, 'Various Plant-based Foods', 'cup'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Lemon', 17.0, 0, 'Various Plant-based Foods', 'unit');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Roast Chicken Grain Bowl', 'Chicken Breasts', 400, NULL),
('Roast Chicken Grain Bowl', 'Mixed Grains', 200, NULL),
('Roast Chicken Grain Bowl', 'Assorted Vegetables', 1, NULL),
('Roast Chicken Grain Bowl', 'Mixed Greens', 1, NULL),
('Roast Chicken Grain Bowl', 'Olive Oil', 2, NULL),
('Roast Chicken Grain Bowl', 'Salt', NULL, 'to taste'),
('Roast Chicken Grain Bowl', 'Black Pepper', NULL, 'to taste'),
('Roast Chicken Grain Bowl', 'Lemon', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Roast Chicken Grain Bowl', 'Chicken Breasts');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Roast Chicken Grain Bowl', 'Preheat the oven to 400°F (200°C).', 1),
('Roast Chicken Grain Bowl', 'Season the chicken breasts with salt, pepper, and a drizzle of olive oil.', 2),
('Roast Chicken Grain Bowl', 'Place the chicken breasts on a baking sheet lined with parchment paper.', 3),
('Roast Chicken Grain Bowl', 'Roast in the preheated oven for 20-25 minutes, or until the chicken is cooked through and golden brown.', 4),
('Roast Chicken Grain Bowl', 'While the chicken is roasting, cook the mixed grains according to package instructions.', 5),
('Roast Chicken Grain Bowl', 'In a skillet, heat olive oil over medium heat. Add assorted vegetables and sauté until tender.', 6),
('Roast Chicken Grain Bowl', 'To assemble the grain bowls, divide the cooked grains among serving bowls. Top with mixed greens, roasted chicken breasts, and sautéed vegetables.', 7),
('Roast Chicken Grain Bowl', 'Drizzle with lemon juice and additional olive oil, if desired.', 8),
('Roast Chicken Grain Bowl', 'Enjoy your delicious Roast Chicken Grain Bowl!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Roast Chicken Grain Bowl', 'Grain Bowl'),
('Roast Chicken Grain Bowl', 'Healthy'),
('Roast Chicken Grain Bowl', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Roast Chicken Grain Bowl', 'Lunch'),
('Roast Chicken Grain Bowl', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chicken Thighs with Barley and Peas', 'Cooking', 2, 'Chicken Thighs with Barley and Peas is a hearty and flavorful one-pot meal that\'s perfect for a cozy dinner. Tender chicken thighs are cooked with barley, peas, and aromatic vegetables in a savory broth until everything is tender and delicious. It\'s a comforting dish that\'s easy to make and sure to please the whole family.', 'You can use chicken drumsticks or chicken breasts instead of chicken thighs if you prefer.', 'Feel free to add other vegetables like carrots or mushrooms for extra flavor and nutrition.', 'Garnish with fresh herbs like parsley or thyme before serving for a pop of color and freshness.', 15.0, 45.0, 30.0, 'United States', 'http://fakephotolink.com/chicken_thighs_barley_peas.jpg', 'Chicken Thighs with Barley and Peas served in a bowl', 15, 45);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chicken Thighs with Barley and Peas', 'Knife', 1),
('Chicken Thighs with Barley and Peas', 'Cutting Board', 2),
('Chicken Thighs with Barley and Peas', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Thighs', 209.0, 0, 'Meat and Meat Products', 'gr'),
('Barley', 123.0, 0, 'Cereals and Cereal Products', 'gr'),
('Peas', 134.0, 0, 'Various Plant-based Foods', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Chicken Broth', 17.0, 0, 'Others', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chicken Thighs with Barley and Peas', 'Chicken Thighs', 600, NULL),
('Chicken Thighs with Barley and Peas', 'Barley', 200, NULL),
('Chicken Thighs with Barley and Peas', 'Peas', 1, NULL),
('Chicken Thighs with Barley and Peas', 'Onion', 1, NULL),
('Chicken Thighs with Barley and Peas', 'Garlic', 2, NULL),
('Chicken Thighs with Barley and Peas', 'Chicken Broth', 2, NULL),
('Chicken Thighs with Barley and Peas', 'Salt', NULL, 'to taste'),
('Chicken Thighs with Barley and Peas', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chicken Thighs with Barley and Peas', 'Chicken Thighs');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chicken Thighs with Barley and Peas', 'Heat a Dutch oven over medium heat. Add chicken thighs, skin side down, and cook until golden brown, about 5-6 minutes per side. Remove chicken from the pot and set aside.', 1),
('Chicken Thighs with Barley and Peas', 'In the same pot, add chopped onion and minced garlic. Cook until softened and fragrant, about 2-3 minutes.', 2),
('Chicken Thighs with Barley and Peas', 'Add barley to the pot and toast for 1-2 minutes, stirring constantly.', 3),
('Chicken Thighs with Barley and Peas', 'Pour in chicken broth and bring to a boil. Reduce heat to low and return the chicken thighs to the pot.', 4),
('Chicken Thighs with Barley and Peas', 'Cover and simmer for 30 minutes, or until the barley is tender and the chicken is cooked through.', 5),
('Chicken Thighs with Barley and Peas', 'Stir in peas and cook for an additional 5 minutes, until heated through.', 6),
('Chicken Thighs with Barley and Peas', 'Season with salt and black pepper to taste.', 7),
('Chicken Thighs with Barley and Peas', 'Serve hot, garnished with fresh herbs if desired.', 8),
('Chicken Thighs with Barley and Peas', 'Enjoy your Chicken Thighs with Barley and Peas!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chicken Thighs with Barley and Peas', 'One-Pot Meal'),
('Chicken Thighs with Barley and Peas', 'Hearty'),
('Chicken Thighs with Barley and Peas', 'Comfort Food');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Chicken Thighs with Barley and Peas', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Rice Noodles with Meatballs and Bok Choy', 'Cooking', 3, 'Rice Noodles with Meatballs and Bok Choy is a delicious and satisfying Asian-inspired dish that\'s perfect for a quick and easy dinner. Tender rice noodles are tossed with savory meatballs, crunchy bok choy, and a flavorful sauce made with soy sauce, ginger, and garlic. It\'s a nutritious and delicious meal that the whole family will love.', 'You can use any type of ground meat for the meatballs, such as pork, chicken, or turkey.', 'Feel free to add other vegetables like bell peppers, carrots, or mushrooms for extra flavor and nutrition.', 'Garnish with sliced green onions and sesame seeds before serving for a pop of color and texture.', 20.0, 25.0, 20.0, 'Indonesia', 'http://fakephotolink.com/rice_noodles_meatballs_bok_choy.jpg', 'Rice Noodles with Meatballs and Bok Choy dish', 15, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Rice Noodles with Meatballs and Bok Choy', 'Pot', 1),
('Rice Noodles with Meatballs and Bok Choy', 'Colander', 1),
('Rice Noodles with Meatballs and Bok Choy', 'Skillet', 1),
('Rice Noodles with Meatballs and Bok Choy', 'Knife', 3),
('Rice Noodles with Meatballs and Bok Choy', 'Cutting Board', 2);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Rice Noodles', 192.0, 0, 'Cereals and Cereal Products', 'gr'),
('Ground Meat', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Bok Choy', 13.0, 0, 'Various Plant-based Foods', 'cup'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Ginger', 18.0, 0, 'Various Plant-based Foods', 'tsp'),
('Soy Sauce', 8.0, 0, 'Others', 'tbsp'),
('Rice Vinegar', 4.0, 0, 'Others', 'tbsp'),
('Brown Sugar', 380.0, 1, 'Sweeteners', 'tbsp'),
('Sesame Oil', 120.0, 0, 'Fats and Oils', 'tbsp'),
('Green Onions', 32.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Sesame Seeds', 52.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Rice Noodles with Meatballs and Bok Choy', 'Rice Noodles', 200, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Ground Meat', 300, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Bok Choy', 2, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Garlic', 2, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Ginger', 1, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Soy Sauce', 2, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Rice Vinegar', 2, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Brown Sugar', 1, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Sesame Oil', 1, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Green Onions', 2, NULL),
('Rice Noodles with Meatballs and Bok Choy', 'Sesame Seeds', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Rice Noodles with Meatballs and Bok Choy', 'Ground Meat');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Rice Noodles with Meatballs and Bok Choy', 'Cook the rice noodles according to package instructions until al dente. Drain and set aside.', 1),
('Rice Noodles with Meatballs and Bok Choy', 'In a skillet, cook the ground meat over medium heat until browned and cooked through. Drain excess fat.', 2),
('Rice Noodles with Meatballs and Bok Choy', 'Add minced garlic and ginger to the skillet and cook for 1-2 minutes until fragrant.', 3),
('Rice Noodles with Meatballs and Bok Choy', 'In a small bowl, whisk together soy sauce, rice vinegar, brown sugar, and sesame oil.', 4),
('Rice Noodles with Meatballs and Bok Choy', 'Add the sauce to the skillet with the meat and stir to combine. Simmer for 2-3 minutes.', 5),
('Rice Noodles with Meatballs and Bok Choy', 'Add chopped bok choy to the skillet and cook until wilted.', 6),
('Rice Noodles with Meatballs and Bok Choy', 'Add the cooked rice noodles to the skillet and toss everything together until well combined.', 7),
('Rice Noodles with Meatballs and Bok Choy', 'Garnish with sliced green onions and sesame seeds before serving.', 8),
('Rice Noodles with Meatballs and Bok Choy', 'Enjoy your Rice Noodles with Meatballs and Bok Choy!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Rice Noodles with Meatballs and Bok Choy', 'Asian'),
('Rice Noodles with Meatballs and Bok Choy', 'Quick'),
('Rice Noodles with Meatballs and Bok Choy', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Rice Noodles with Meatballs and Bok Choy', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Cooking', 3, 'Paprika Pork with Roasted Potatoes and Dill Cream is a flavorful and satisfying dish that\'s perfect for a cozy dinner. Tender pork chops are seasoned with paprika and garlic, then seared until golden brown and crispy. They\'re served alongside crispy roasted potatoes and a creamy dill sauce for dipping. It\'s a delicious meal that\'s sure to become a family favorite.', 'Make sure to pat the pork chops dry with paper towels before seasoning and searing to ensure a crispy crust.', 'You can use baby potatoes or regular potatoes for the roasted potatoes.', 'Feel free to substitute sour cream for the Greek yogurt in the dill cream sauce if you prefer.', 20.0, 35.0, 30.0, 'United States', 'http://fakephotolink.com/paprika_pork_roasted_potatoes_dill_cream.jpg', 'Paprika Pork with Roasted Potatoes and Dill Cream served on a plate', 15, 35);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Baking Sheet', 1),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Skillet', 1),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Mixing Bowl', 2),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Knife', 2),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Pork Chops', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Potatoes', 163.0, 0, 'Various Plant-based Foods', 'cup'),
('Greek Yogurt', 59.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Fresh Dill', 7.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Paprika', 20.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Pork Chops', 600, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Potatoes', 400, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Greek Yogurt', 1, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Fresh Dill', 2, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Garlic', 2, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Paprika', 1, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Olive Oil', 2, NULL),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Salt', NULL, 'to taste'),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Pork Chops');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Preheat the oven to 425°F (220°C).', 1),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Cut potatoes into wedges and place them on a baking sheet. Drizzle with olive oil, season with salt and pepper, and toss to coat.', 2),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Roast potatoes in the preheated oven for 25-30 minutes, or until golden and crispy, flipping halfway through.', 3),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'While the potatoes are roasting, season the pork chops with paprika, salt, and black pepper.', 4),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Heat olive oil in a skillet over medium-high heat. Add pork chops and cook for 4-5 minutes per side, or until golden brown and cooked through.', 5),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'In a mixing bowl, combine Greek yogurt, minced garlic, chopped fresh dill, salt, and pepper to make the dill cream sauce.', 6),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Serve the paprika pork chops with roasted potatoes and dill cream sauce on the side.', 7),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Enjoy your Paprika Pork with Roasted Potatoes and Dill Cream!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Comfort Food'),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Easy'),
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Family Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Paprika Pork with Roasted Potatoes and Dill Cream', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chicken Cutlets with Carrot and Kale Salad', 'Cooking', 2, 'Chicken Cutlets with Carrot and Kale Salad is a light and healthy dish that\'s perfect for a quick and easy dinner. Thinly pounded chicken cutlets are seasoned, pan-fried until golden and crispy, then served alongside a fresh and crunchy salad made with shredded carrots, kale, and a tangy vinaigrette. It\'s a simple and delicious meal that\'s packed with flavor and nutrients.', 'You can use chicken breasts or chicken thighs instead of chicken cutlets if you prefer.', 'Massage the kale with a bit of olive oil and lemon juice before adding it to the salad to help soften its texture.', 'Feel free to add other vegetables like cherry tomatoes, cucumbers, or bell peppers to the salad for extra color and flavor.', 20.0, 20.0, 20.0, 'United States', 'http://fakephotolink.com/chicken_cutlets_carrot_kale_salad.jpg', 'Chicken Cutlets with Carrot and Kale Salad served on a plate', 15, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chicken Cutlets with Carrot and Kale Salad', 'Skillet', 1),
('Chicken Cutlets with Carrot and Kale Salad', 'Mixing Bowl', 1),
('Chicken Cutlets with Carrot and Kale Salad', 'Knife', 1),
('Chicken Cutlets with Carrot and Kale Salad', 'Cutting Board', 2);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Cutlets', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'cup'),
('Kale', 33.0, 0, 'Various Plant-based Foods', 'cup'),
('Lemon', 17.0, 0, 'Various Plant-based Foods', 'unit'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('White Wine Vinegar', 4.0, 0, 'Others', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chicken Cutlets with Carrot and Kale Salad', 'Chicken Cutlets', 400, NULL),
('Chicken Cutlets with Carrot and Kale Salad', 'Carrots', 1, NULL),
('Chicken Cutlets with Carrot and Kale Salad', 'Kale', 2, NULL),
('Chicken Cutlets with Carrot and Kale Salad', 'Lemon', 1, NULL),
('Chicken Cutlets with Carrot and Kale Salad', 'Olive Oil', 2, NULL),
('Chicken Cutlets with Carrot and Kale Salad', 'Salt', NULL, 'to taste'),
('Chicken Cutlets with Carrot and Kale Salad', 'Black Pepper', NULL, 'to taste'),
('Chicken Cutlets with Carrot and Kale Salad', 'White Wine Vinegar', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chicken Cutlets with Carrot and Kale Salad', 'Chicken Cutlets');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chicken Cutlets with Carrot and Kale Salad', 'Season the chicken cutlets with salt and black pepper.', 1),
('Chicken Cutlets with Carrot and Kale Salad', 'Heat olive oil in a skillet over medium-high heat. Add the chicken cutlets and cook for 3-4 minutes per side, or until golden brown and cooked through.', 2),
('Chicken Cutlets with Carrot and Kale Salad', 'While the chicken is cooking, prepare the salad. Shred the carrots and kale, and place them in a mixing bowl.', 3),
('Chicken Cutlets with Carrot and Kale Salad', 'In a small bowl, whisk together olive oil, white wine vinegar, lemon juice, salt, and black pepper to make the vinaigrette.', 4),
('Chicken Cutlets with Carrot and Kale Salad', 'Pour the vinaigrette over the carrots and kale, and toss to coat evenly.', 5),
('Chicken Cutlets with Carrot and Kale Salad', 'Divide the salad among plates and top with the cooked chicken cutlets.', 6),
('Chicken Cutlets with Carrot and Kale Salad', 'Serve immediately, garnished with lemon wedges if desired.', 7),
('Chicken Cutlets with Carrot and Kale Salad', 'Enjoy your Chicken Cutlets with Carrot and Kale Salad!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chicken Cutlets with Carrot and Kale Salad', 'Light'),
('Chicken Cutlets with Carrot and Kale Salad', 'Healthy'),
('Chicken Cutlets with Carrot and Kale Salad', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Chicken Cutlets with Carrot and Kale Salad', 'Dinner'),
('Chicken Cutlets with Carrot and Kale Salad', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Gnocchi and Sweet Potatoes', 'Cooking', 2, 'Gnocchi and Sweet Potatoes is a comforting and flavorful dish that\'s perfect for a cozy dinner. Pillowy gnocchi is paired with roasted sweet potatoes, garlic, spinach, and Parmesan cheese for a delicious and satisfying meal. It\'s easy to make and sure to become a family favorite.', 'You can use store-bought gnocchi or make your own from scratch.', 'Feel free to add other vegetables like mushrooms or cherry tomatoes for extra flavor and nutrition.', 'Serve with a sprinkle of additional Parmesan cheese and a drizzle of olive oil for extra richness.', 20.0, 40.0, 20.0, 'Italy', 'http://fakephotolink.com/gnocchi_sweet_potatoes.jpg', 'Gnocchi and Sweet Potatoes served on a plate', 20, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Gnocchi and Sweet Potatoes', 'Baking Sheet', 1),
('Gnocchi and Sweet Potatoes', 'Skillet', 1),
('Gnocchi and Sweet Potatoes', 'Mixing Bowl', 1),
('Gnocchi and Sweet Potatoes', 'Knife', 1),
('Gnocchi and Sweet Potatoes', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Gnocchi', 130.0, 0, 'Cereals and Cereal Products', 'gr'),
('Sweet Potatoes', 86.0, 0, 'Various Plant-based Foods', 'cup'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Spinach', 7.0, 0, 'Various Plant-based Foods', 'cup'),
('Parmesan Cheese', 110.0, 0, 'Milk, Eggs, and Their Products', 'tbsp'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Gnocchi and Sweet Potatoes', 'Gnocchi', 250, NULL),
('Gnocchi and Sweet Potatoes', 'Sweet Potatoes', 2, NULL),
('Gnocchi and Sweet Potatoes', 'Garlic', 2, NULL),
('Gnocchi and Sweet Potatoes', 'Spinach', 1, NULL),
('Gnocchi and Sweet Potatoes', 'Parmesan Cheese', 2, NULL),
('Gnocchi and Sweet Potatoes', 'Olive Oil', 2, NULL),
('Gnocchi and Sweet Potatoes', 'Salt', NULL, 'to taste'),
('Gnocchi and Sweet Potatoes', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Gnocchi and Sweet Potatoes', 'Gnocchi');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Gnocchi and Sweet Potatoes', 'Preheat the oven to 425°F (220°C).', 1),
('Gnocchi and Sweet Potatoes', 'Peel and cube the sweet potatoes. Place them on a baking sheet, drizzle with olive oil, season with salt and pepper, and toss to coat evenly. Roast in the preheated oven for 20-25 minutes, or until tender and caramelized.', 2),
('Gnocchi and Sweet Potatoes', 'While the sweet potatoes are roasting, cook the gnocchi according to package instructions. Drain and set aside.', 3),
('Gnocchi and Sweet Potatoes', 'In a skillet, heat olive oil over medium heat. Add minced garlic and cook until fragrant, about 1 minute.', 4),
('Gnocchi and Sweet Potatoes', 'Add cooked gnocchi to the skillet and toss to coat in the garlic-infused oil. Cook for 3-4 minutes, stirring occasionally, until gnocchi is lightly browned.', 5),
('Gnocchi and Sweet Potatoes', 'Add roasted sweet potatoes and spinach to the skillet. Cook until spinach is wilted.', 6),
('Gnocchi and Sweet Potatoes', 'Stir in grated Parmesan cheese and season with salt and black pepper to taste.', 7),
('Gnocchi and Sweet Potatoes', 'Serve hot, garnished with additional Parmesan cheese if desired.', 8),
('Gnocchi and Sweet Potatoes', 'Enjoy your Gnocchi and Sweet Potatoes!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Gnocchi and Sweet Potatoes', 'Comfort Food'),
('Gnocchi and Sweet Potatoes', 'Vegetarian'),
('Gnocchi and Sweet Potatoes', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Gnocchi and Sweet Potatoes', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Shepherd''s Pie', 'Cooking', 2, 'Shepherd''s Pie is a classic comfort food dish that\'s perfect for a cozy dinner. Seasoned ground beef or lamb is cooked with vegetables and topped with creamy mashed potatoes, then baked until golden and bubbly. It\'s hearty, flavorful, and sure to become a family favorite.', 'You can use ground beef, lamb, or turkey for the meat filling.', 'Feel free to add other vegetables like peas, carrots, or corn to the filling for extra flavor and nutrition.', 'For a crispy topping, broil the Shepherd''s Pie for a few minutes after baking until the mashed potatoes are golden brown.', 30.0, 60.0, 30.0, 'United Kingdom', 'http://fakephotolink.com/shepherds_pie.jpg', 'Shepherd''s Pie served in a baking dish', 30, 60);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Shepherd''s Pie', 'Baking Dish', 1),
('Shepherd''s Pie', 'Skillet', 1),
('Shepherd''s Pie', 'Mixing Bowl', 1),
('Shepherd''s Pie', 'Potato Masher', 1),
('Shepherd''s Pie', 'Knife', 1),
('Shepherd''s Pie', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Ground Beef', 250.0, 0, 'Meat and Meat Products', 'gr'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'cup'),
('Frozen Corn', 177.0, 0, 'Various Plant-based Foods', 'cup'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Tomato Paste', 53.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Worcestershire Sauce', 3.0, 0, 'Others', 'tbsp'),
('Beef Broth', 17.0, 0, 'Others', 'cup'),
('Potatoes', 104.0, 0, 'Various Plant-based Foods', 'cup'),
('Butter', 204.0, 0, 'Fats and Oils', 'tbsp'),
('Milk', 8.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Shepherd''s Pie', 'Ground Beef', 500, NULL),
('Shepherd''s Pie', 'Onion', 1, NULL),
('Shepherd''s Pie', 'Carrots', 1, NULL),
('Shepherd''s Pie', 'Frozen Corn', 1, NULL),
('Shepherd''s Pie', 'Garlic', 2,NULL),
('Shepherd''s Pie', 'Tomato Paste', 2,NULL),
('Shepherd''s Pie', 'Worcestershire Sauce', 2,NULL),
('Shepherd''s Pie', 'Beef Broth', 1, NULL),
('Shepherd''s Pie', 'Potatoes', 600, NULL),
('Shepherd''s Pie', 'Butter', 2, NULL),
('Shepherd''s Pie', 'Milk', 1, NULL),
('Shepherd''s Pie', 'Salt', NULL, 'to taste'),
('Shepherd''s Pie', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Shepherd''s Pie', 'Ground Beef');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Shepherd''s Pie', 'Preheat the oven to 375°F (190°C).', 1),
('Shepherd''s Pie', 'Peel and chop the potatoes into chunks. Place them in a pot of cold salted water and bring to a boil. Cook until tender, about 15 minutes.', 2),
('Shepherd''s Pie', 'While the potatoes are cooking, heat a skillet over medium heat. Add the ground beef and cook until browned, breaking it up with a spoon.', 3),
('Shepherd''s Pie', 'Add chopped onion, minced garlic, carrots, and frozen corn to the skillet. Cook until vegetables are softened, about 5 minutes.', 4),
('Shepherd''s Pie', 'Stir in tomato paste, Worcestershire sauce, beef broth, salt, and black pepper. Simmer for 5-7 minutes until the mixture thickens slightly.', 5),
('Shepherd''s Pie', 'Pour the beef mixture into a baking dish and spread it out into an even layer.', 6),
('Shepherd''s Pie', 'Drain the cooked potatoes and return them to the pot. Add butter and milk, then mash until smooth and creamy. Season with salt and black pepper to taste.', 7),
('Shepherd''s Pie', 'Spread the mashed potatoes over the beef mixture in the baking dish.', 8),
('Shepherd''s Pie', 'Bake in the preheated oven for 20-25 minutes, or until the top is golden brown and the filling is bubbling.', 9),
('Shepherd''s Pie', 'Let it cool for a few minutes before serving.', 10),
('Shepherd''s Pie', 'Enjoy your Shepherd''s Pie!', 11);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Shepherd''s Pie', 'Comfort Food'),
('Shepherd''s Pie', 'Classic'),
('Shepherd''s Pie', 'Family Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Shepherd''s Pie', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Garlic Parmesan Chicken', 'Cooking', 2, 'Garlic Parmesan Chicken is a delicious and easy-to-make dish that\'s perfect for a quick weeknight dinner. Tender chicken breasts are coated in a crispy Parmesan and breadcrumb mixture, then baked until golden and juicy. Served with a garlicky butter sauce, it\'s a crowd-pleaser the whole family will love.', 'For extra flavor, add dried herbs like basil, oregano, or thyme to the breadcrumb mixture.', 'If you prefer a lighter version, you can use chicken tenders or thighs instead of chicken breasts.', 'Serve with a side of pasta, salad, or roasted vegetables for a complete meal.', 15.0, 25.0, 20.0, 'Italy', 'http://fakephotolink.com/garlic_parmesan_chicken.jpg', 'Garlic Parmesan Chicken served on a plate', 15, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Garlic Parmesan Chicken', 'Baking Sheet', 1),
('Garlic Parmesan Chicken', 'Skillet', 1),
('Garlic Parmesan Chicken', 'Mixing Bowl', 1),
('Garlic Parmesan Chicken', 'Knife', 1),
('Garlic Parmesan Chicken', 'Cutting Board', 2);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breasts', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Breadcrumbs', 265.0, 0, 'Cereals and Cereal Products', 'cup'),
('Parmesan Cheese', 110.0, 0, 'Milk, Eggs, and Their Products', 'tbsp'),
('Garlic Powder', 10.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Butter', 204.0, 0, 'Fats and Oils', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Garlic Parmesan Chicken', 'Chicken Breasts', 600, NULL),
('Garlic Parmesan Chicken', 'Breadcrumbs', 1, NULL),
('Garlic Parmesan Chicken', 'Parmesan Cheese', 3, NULL),
('Garlic Parmesan Chicken', 'Garlic Powder', 1, NULL),
('Garlic Parmesan Chicken', 'Butter', 2, NULL),
('Garlic Parmesan Chicken', 'Garlic', 2, NULL),
('Garlic Parmesan Chicken', 'Salt', NULL, NULL),
('Garlic Parmesan Chicken', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Garlic Parmesan Chicken', 'Chicken Breasts');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Garlic Parmesan Chicken', 'Preheat the oven to 375°F (190°C).', 1),
('Garlic Parmesan Chicken', 'In a mixing bowl, combine breadcrumbs, grated Parmesan cheese, garlic powder, salt, and black pepper.', 2),
('Garlic Parmesan Chicken', 'Melt butter in a skillet over medium heat. Add minced garlic and cook until fragrant, about 1 minute.', 3),
('Garlic Parmesan Chicken', 'Dip each chicken breast into the garlic butter, then coat with the breadcrumb mixture, pressing gently to adhere.', 4),
('Garlic Parmesan Chicken', 'Place the coated chicken breasts on a baking sheet lined with parchment paper.', 5),
('Garlic Parmesan Chicken', 'Bake in the preheated oven for 20-25 minutes, or until the chicken is cooked through and the coating is golden and crispy.', 6),
('Garlic Parmesan Chicken', 'While the chicken is baking, make the garlic butter sauce. Melt butter in a small saucepan and add minced garlic. Cook until garlic is fragrant and butter is melted.', 7),
('Garlic Parmesan Chicken', 'Serve the baked chicken breasts with the garlic butter sauce drizzled over the top.', 8),
('Garlic Parmesan Chicken', 'Enjoy your Garlic Parmesan Chicken!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Garlic Parmesan Chicken', 'Italian'),
('Garlic Parmesan Chicken', 'Easy'),
('Garlic Parmesan Chicken', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Garlic Parmesan Chicken', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Turkey Pot Pie', 'Cooking', 3, 'Turkey Pot Pie is a comforting and hearty dish that\'s perfect for using up leftover turkey. Tender pieces of turkey are mixed with vegetables and gravy, then topped with a flaky pie crust and baked until golden brown. It\'s a delicious way to enjoy Thanksgiving leftovers or to make any time of year.', 'Feel free to use store-bought pie crust for a quicker option.', 'You can add other vegetables like peas, carrots, or mushrooms to the filling for extra flavor and nutrition.', 'Serve with cranberry sauce on the side for a classic Thanksgiving touch.', 20.0, 60.0, 30.0, 'United States', 'http://fakephotolink.com/turkey_pot_pie.jpg', 'Turkey Pot Pie served in a baking dish', 20, 60);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Turkey Pot Pie', 'Baking Dish', 1),
('Turkey Pot Pie', 'Skillet', 1),
('Turkey Pot Pie', 'Rolling Pin', 1),
('Turkey Pot Pie', 'Knife', 2),
('Turkey Pot Pie', 'Cutting Board', 2);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Turkey Meat', 189.0, 0, 'Meat and Meat Products', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'cup'),
('Frozen Peas', 62.0, 0, 'Various Plant-based Foods', 'cup'),
('Butter', 204.0, 0, 'Fats and Oils', 'tbsp'),
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup'),
('Chicken Broth', 17.0, 0, 'Others', 'cup'),
('Milk', 8.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Pie Crust', 49.0, 0, 'Cereals and Cereal Products', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Turkey Pot Pie', 'Turkey Meat', 4, NULL),
('Turkey Pot Pie', 'Onion', 1, NULL),
('Turkey Pot Pie', 'Carrots', 1, NULL),
('Turkey Pot Pie', 'Frozen Peas', 1, NULL),
('Turkey Pot Pie', 'Butter', 4, NULL),
('Turkey Pot Pie', 'All-Purpose Flour', 0.5, NULL),
('Turkey Pot Pie', 'Chicken Broth', 2, NULL),
('Turkey Pot Pie', 'Milk', 1, NULL),
('Turkey Pot Pie', 'Pie Crust', 2, NULL),
('Turkey Pot Pie', 'Salt', NULL, 'to taste'),
('Turkey Pot Pie', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Turkey Pot Pie', 'Turkey Meat');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Turkey Pot Pie', 'Preheat the oven to 375°F (190°C).', 1),
('Turkey Pot Pie', 'In a skillet, melt butter over medium heat. Add chopped onion, carrots, and frozen peas. Cook until vegetables are tender, about 5 minutes.', 2),
('Turkey Pot Pie', 'Stir in all-purpose flour and cook for 1-2 minutes to remove the raw flour taste.', 3),
('Turkey Pot Pie', 'Gradually add chicken broth and milk, stirring constantly, until the mixture thickens and comes to a simmer.', 4),
('Turkey Pot Pie', 'Add chopped turkey meat to the skillet and season with salt and black pepper to taste. Stir to combine.', 5),
('Turkey Pot Pie', 'Pour the turkey mixture into a baking dish.', 6),
('Turkey Pot Pie', 'Roll out the pie crust on a floured surface using a rolling pin until it\'s large enough to cover the baking dish.', 7),
('Turkey Pot Pie', 'Place the pie crust over the filling in the baking dish. Trim any excess crust and crimp the edges to seal.', 8),
('Turkey Pot Pie', 'Make a few slits in the top of the crust to allow steam to escape.', 9),
('Turkey Pot Pie', 'Bake in the preheated oven for 30-35 minutes, or until the crust is golden brown and the filling is bubbly.', 10),
('Turkey Pot Pie', 'Let it cool for a few minutes before serving.', 11),
('Turkey Pot Pie', 'Enjoy your Turkey Pot Pie!', 12);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Turkey Pot Pie', 'Comfort Food'),
('Turkey Pot Pie', 'Leftovers'),
('Turkey Pot Pie', 'Family Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Turkey Pot Pie', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Balsamic Bacon Brussels Sprouts', 'Cooking', 2, 'Balsamic Bacon Brussels Sprouts is a delicious and flavorful side dish that pairs perfectly with any meal. Brussels sprouts are sautéed with crispy bacon and glazed with a tangy balsamic reduction, creating a dish that\'s both savory and slightly sweet. It\'s quick and easy to make, and sure to be a hit with the whole family.', 'Make sure to trim the Brussels sprouts and cut them in half for even cooking.', 'For extra crispiness, cook the bacon separately until crispy, then crumble it over the Brussels sprouts just before serving.', 'You can adjust the amount of balsamic glaze according to your taste preferences.', 15.0, 20.0, 20.0, 'United States', 'http://fakephotolink.com/balsamic_bacon_brussels_sprouts.jpg', 'Balsamic Bacon Brussels Sprouts served in a bowl', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Balsamic Bacon Brussels Sprouts', 'Skillet', 1),
('Balsamic Bacon Brussels Sprouts', 'Knife', 1),
('Balsamic Bacon Brussels Sprouts', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Brussels Sprouts', 38.0, 0, 'Various Plant-based Foods', 'cup'),
('Bacon', 42.0, 0, 'Meat and Meat Products', 'slice'),
('Balsamic Vinegar', 14.0, 0, 'Others', 'tbsp'),
('Brown Sugar', 52.0, 0, 'Sweeteners', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Balsamic Bacon Brussels Sprouts', 'Brussels Sprouts', 4,NULL),
('Balsamic Bacon Brussels Sprouts', 'Bacon', 4, 'slices'),
('Balsamic Bacon Brussels Sprouts', 'Balsamic Vinegar', 2, NULL),
('Balsamic Bacon Brussels Sprouts', 'Brown Sugar', 1, NULL),
('Balsamic Bacon Brussels Sprouts', 'Salt', NULL, 'to taste'),
('Balsamic Bacon Brussels Sprouts', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Balsamic Bacon Brussels Sprouts', 'Brussels Sprouts');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Balsamic Bacon Brussels Sprouts', 'Trim the Brussels sprouts and cut them in half.', 1),
('Balsamic Bacon Brussels Sprouts', 'In a skillet, cook the bacon over medium heat until crispy. Remove from skillet and set aside.', 2),
('Balsamic Bacon Brussels Sprouts', 'In the same skillet with the bacon fat, add the Brussels sprouts, cut side down. Cook until browned and slightly crispy, about 5-7 minutes.', 3),
('Balsamic Bacon Brussels Sprouts', 'While the Brussels sprouts are cooking, whisk together balsamic vinegar and brown sugar in a small bowl.', 4),
('Balsamic Bacon Brussels Sprouts', 'Once the Brussels sprouts are browned, add the balsamic mixture to the skillet. Stir to coat the Brussels sprouts evenly.', 5),
('Balsamic Bacon Brussels Sprouts', 'Continue cooking for another 2-3 minutes, or until the Brussels sprouts are tender and the glaze has thickened slightly.', 6),
('Balsamic Bacon Brussels Sprouts', 'Crumble the cooked bacon and sprinkle it over the Brussels sprouts.', 7),
('Balsamic Bacon Brussels Sprouts', 'Season with salt and black pepper to taste.', 8),
('Balsamic Bacon Brussels Sprouts', 'Serve hot, and enjoy your Balsamic Bacon Brussels Sprouts!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Balsamic Bacon Brussels Sprouts', 'Side Dish'),
('Balsamic Bacon Brussels Sprouts', 'Quick'),
('Balsamic Bacon Brussels Sprouts', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Balsamic Bacon Brussels Sprouts', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lemon Red Potatoes', 'Cooking', 1, 'Lemon Red Potatoes are a simple yet flavorful side dish that pairs well with a variety of main courses. Red potatoes are roasted with olive oil, garlic, and fresh lemon juice until tender and golden brown. Finished with a sprinkle of parsley, these potatoes are bright and zesty, making them the perfect addition to any meal.', 'For extra flavor, add a sprinkle of grated Parmesan cheese before serving.', 'You can use other herbs like rosemary or thyme instead of parsley.', 'Make sure to toss the potatoes halfway through cooking to ensure even browning.', 10.0, 30.0, 20.0, 'United States', 'http://fakephotolink.com/lemon_red_potatoes.jpg', 'Lemon Red Potatoes served in a bowl', 10, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lemon Red Potatoes', 'Baking Sheet', 1),
('Lemon Red Potatoes', 'Mixing Bowl', 1),
('Lemon Red Potatoes', 'Knife', 1),
('Lemon Red Potatoes', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Red Potatoes', 105.0, 0, 'Various Plant-based Foods', 'cup'),
('Olive Oil', 239.0, 0, 'Fats and Oils', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Lemon Juice', 4.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Parsley', 1.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lemon Red Potatoes', 'Red Potatoes', 4, NULL),
('Lemon Red Potatoes', 'Olive Oil', 2, NULL),
('Lemon Red Potatoes', 'Garlic', 2, NULL),
('Lemon Red Potatoes', 'Lemon Juice', 2, NULL),
('Lemon Red Potatoes', 'Parsley', 2, NULL),
('Lemon Red Potatoes', 'Salt', NULL, 'to taste'),
('Lemon Red Potatoes', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lemon Red Potatoes', 'Red Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lemon Red Potatoes', 'Preheat the oven to 400°F (200°C).', 1),
('Lemon Red Potatoes', 'Wash and quarter the red potatoes.', 2),
('Lemon Red Potatoes', 'In a mixing bowl, combine the quartered red potatoes, olive oil, minced garlic, lemon juice, salt, and black pepper. Toss until the potatoes are evenly coated.', 3),
('Lemon Red Potatoes', 'Spread the seasoned potatoes in a single layer on a baking sheet.', 4),
('Lemon Red Potatoes', 'Roast in the preheated oven for 25-30 minutes, or until the potatoes are tender and golden brown, tossing halfway through cooking.', 5),
('Lemon Red Potatoes', 'Remove from the oven and sprinkle with chopped parsley.', 6),
('Lemon Red Potatoes', 'Serve hot, and enjoy your Lemon Red Potatoes!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lemon Red Potatoes', 'Side Dish'),
('Lemon Red Potatoes', 'Quick'),
('Lemon Red Potatoes', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lemon Red Potatoes', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Potato and Corn Chowder', 'Cooking', 5, 'Potato and Corn Chowder is a hearty and comforting soup that\'s perfect for chilly days. Tender potatoes and sweet corn are simmered in a creamy broth flavored with bacon, onions, and garlic. Finished with a sprinkle of cheddar cheese and fresh chives, it\'s a satisfying meal in a bowl.', 'For extra creaminess, blend a portion of the soup until smooth before adding back to the pot.', 'Feel free to add other vegetables like carrots or celery for added flavor and nutrition.', 'Serve with crusty bread or oyster crackers for dipping.', 20.0, 40.0, 30.0, 'United States', 'http://fakephotolink.com/potato_corn_chowder.jpg', 'Potato and Corn Chowder served in a bowl', 20, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Potato and Corn Chowder', 'Pot', 1),
('Potato and Corn Chowder', 'Knife', 1),
('Potato and Corn Chowder', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Potatoes', 104.0, 0, 'Various Plant-based Foods', 'cup'),
('Bacon', 42.0, 0, 'Meat and Meat Products', 'slice'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Corn', 86.0, 0, 'Various Plant-based Foods', 'cup'),
('Chicken Broth', 17.0, 0, 'Others', 'cup'),
('Milk', 8.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Cheddar Cheese', 113.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Potato and Corn Chowder', 'Potatoes', 4, NULL),
('Potato and Corn Chowder', 'Bacon', 4, 'slices'),
('Potato and Corn Chowder', 'Onion', 1, NULL),
('Potato and Corn Chowder', 'Garlic', 2, NULL),
('Potato and Corn Chowder', 'Corn', 2,NULL),
('Potato and Corn Chowder', 'Chicken Broth', 4, NULL),
('Potato and Corn Chowder', 'Milk', 1, NULL),
('Potato and Corn Chowder', 'Cheddar Cheese', 1, NULL),
('Potato and Corn Chowder', 'Salt', NULL, 'to taste'),
('Potato and Corn Chowder', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Potato and Corn Chowder', 'Bacon');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Potato and Corn Chowder', 'In a large pot, cook bacon over medium heat until crispy. Remove bacon from pot and set aside.', 1),
('Potato and Corn Chowder', 'In the same pot with the bacon fat, add chopped onion and minced garlic. Cook until softened, about 3-4 minutes.', 2),
('Potato and Corn Chowder', 'Add diced potatoes and corn to the pot. Pour in chicken broth and bring to a boil. Reduce heat and simmer until potatoes are tender, about 15-20 minutes.', 3),
('Potato and Corn Chowder', 'Stir in milk and season with salt and black pepper to taste.', 4),
('Potato and Corn Chowder', 'Crumble the cooked bacon and add it back to the pot.', 5),
('Potato and Corn Chowder', 'Serve hot, garnished with shredded cheddar cheese and chopped chives.', 6),
('Potato and Corn Chowder', 'Enjoy your Potato and Corn Chowder!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Potato and Corn Chowder', 'Soup'),
('Potato and Corn Chowder', 'Comfort Food'),
('Potato and Corn Chowder', 'Family Friendly');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Potato and Corn Chowder', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Thai Chicken', 'Cooking', 4, 'Thai Chicken is a vibrant and flavorful dish that\'s easy to make at home. Tender chicken is marinated in a spicy, tangy sauce made with coconut milk, lime juice, garlic, and ginger, then grilled or broiled to perfection. Served with rice and garnished with cilantro and peanuts, it\'s a delicious taste of Thailand.', 'For extra heat, add chopped Thai chilies or red pepper flakes to the marinade.', 'You can also use this marinade for tofu or shrimp for a vegetarian or seafood option.', 'If you don''t have a grill, you can broil the chicken in the oven.', 20.0, 20.0, 20.0, 'Thailand', 'http://fakephotolink.com/thai_chicken.jpg', 'Thai Chicken served with rice and vegetables', 20, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Thai Chicken', 'Grill', 1),
('Thai Chicken', 'Mixing Bowl', 1),
('Thai Chicken', 'Knife', 1),
('Thai Chicken', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breasts', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Coconut Milk', 230.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Lime Juice', 8.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Ginger', 18.0, 0, 'Herbs and Essential Oils', 'slice'),
('Soy Sauce', 8.0, 0, 'Legumes and Legume Products', 'tbsp'),
('Brown Sugar', 52.0, 0, 'Sweeteners', 'tbsp'),
('Peanuts', 166.0, 0, 'Legumes and Legume Products', 'tbsp'),
('Cilantro', 1.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Thai Chicken', 'Chicken Breasts', 600, NULL),
('Thai Chicken', 'Coconut Milk', 0.5, NULL),
('Thai Chicken', 'Lime Juice', 3, NULL),
('Thai Chicken', 'Garlic', 2, NULL),
('Thai Chicken', 'Ginger', 2, 'slices'),
('Thai Chicken', 'Soy Sauce', 2, NULL),
('Thai Chicken', 'Brown Sugar', 1, NULL),
('Thai Chicken', 'Peanuts', 2, NULL),
('Thai Chicken', 'Cilantro', 2, NULL),
('Thai Chicken', 'Salt', NULL, 'to taste'),
('Thai Chicken', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Thai Chicken', 'Chicken Breasts');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Thai Chicken', 'In a mixing bowl, combine coconut milk, lime juice, minced garlic, sliced ginger, soy sauce, brown sugar, salt, and black pepper.', 1),
('Thai Chicken', 'Add chicken breasts to the marinade and let them marinate for at least 20 minutes, or up to 4 hours in the refrigerator.', 2),
('Thai Chicken', 'Preheat the grill to medium-high heat. Remove chicken from the marinade and grill for 6-7 minutes per side, or until cooked through and slightly charred.', 3),
('Thai Chicken', 'While the chicken is grilling, prepare the garnishes. Chop cilantro and peanuts for topping.', 4),
('Thai Chicken', 'Once the chicken is done, remove it from the grill and let it rest for a few minutes before slicing.', 5),
('Thai Chicken', 'Serve the grilled chicken with rice and garnish with chopped cilantro and peanuts.', 6),
('Thai Chicken', 'Enjoy your Thai Chicken!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Thai Chicken', 'Thai'),
('Thai Chicken', 'Spicy'),
('Thai Chicken', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Thai Chicken', 'Dinner'),
('Thai Chicken', 'Lunch');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Italian Fagoli Vegetable Soup', 'Cooking', 4, 'Italian Fagoli Vegetable Soup is a hearty and comforting dish that\'s packed with flavor and nutrition. This classic Italian soup features a rich tomato broth, cannellini beans, pasta, and plenty of vegetables like carrots, celery, and spinach. Finished with a sprinkle of Parmesan cheese and fresh basil, it\'s a delicious meal that\'s perfect for chilly nights.', 'Feel free to customize the vegetables based on what you have on hand.', 'For extra protein, add cooked Italian sausage or shredded chicken.', 'Serve with crusty bread or a side salad for a complete meal.', 20.0, 40.0, 30.0, 'Italy', 'http://fakephotolink.com/italian_fagoli_vegetable_soup.jpg', 'Italian Fagoli Vegetable Soup served in a bowl', 20, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Italian Fagoli Vegetable Soup', 'Pot', 1),
('Italian Fagoli Vegetable Soup', 'Knife', 1),
('Italian Fagoli Vegetable Soup', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Cannellini Beans', 127.0, 0, 'Legumes and Legume Products', 'cup'),
('Tomato Sauce', 39.0, 0, 'Various Plant-based Foods', 'cup'),
('Vegetable Broth', 3.0, 0, 'Others', 'cup'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'cup'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Spinach', 7.0, 0, 'Various Plant-based Foods', 'cup'),
('Pasta', 200.0, 0, 'Cereals and Cereal Products', 'cup'),
('Parmesan Cheese', 110.0, 0, 'Milk, Eggs, and Their Products', 'tbsp'),
('Basil', 1.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Italian Fagoli Vegetable Soup', 'Cannellini Beans', 1, NULL),
('Italian Fagoli Vegetable Soup', 'Tomato Sauce', 1, NULL),
('Italian Fagoli Vegetable Soup', 'Vegetable Broth', 6, NULL),
('Italian Fagoli Vegetable Soup', 'Carrots', 1, NULL),
('Italian Fagoli Vegetable Soup', 'Celery', 2, NULL),
('Italian Fagoli Vegetable Soup', 'Spinach', 2, NULL),
('Italian Fagoli Vegetable Soup', 'Pasta', 1, NULL),
('Italian Fagoli Vegetable Soup', 'Parmesan Cheese', 2, NULL),
('Italian Fagoli Vegetable Soup', 'Basil', 2, NULL),
('Italian Fagoli Vegetable Soup', 'Salt', NULL, 'to taste'),
('Italian Fagoli Vegetable Soup', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Italian Fagoli Vegetable Soup', 'Cannellini Beans');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Italian Fagoli Vegetable Soup', 'In a large pot, heat olive oil over medium heat. Add chopped carrots, celery, and minced garlic. Cook until vegetables are softened, about 5 minutes.', 1),
('Italian Fagoli Vegetable Soup', 'Add vegetable broth, tomato sauce, cannellini beans, and pasta to the pot. Bring to a boil, then reduce heat and simmer for 10-15 minutes, or until pasta is cooked through.', 2),
('Italian Fagoli Vegetable Soup', 'Stir in chopped spinach and cook until wilted, about 2 minutes.', 3),
('Italian Fagoli Vegetable Soup', 'Season with salt and black pepper to taste.', 4),
('Italian Fagoli Vegetable Soup', 'Serve hot, garnished with grated Parmesan cheese and chopped basil.', 5),
('Italian Fagoli Vegetable Soup', 'Enjoy your Italian Fagoli Vegetable Soup!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Italian Fagoli Vegetable Soup', 'Soup'),
('Italian Fagoli Vegetable Soup', 'Italian'),
('Italian Fagoli Vegetable Soup', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Italian Fagoli Vegetable Soup', 'Dinner'),
('Italian Fagoli Vegetable Soup', 'Appetizer');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Blueberry Pie', 'Pastry', 5, 'Blueberry Pie is a classic dessert that\'s bursting with sweet, juicy blueberries and wrapped in a flaky, golden crust. Whether you\'re using fresh or frozen berries, this pie is sure to be a hit at any gathering. Serve it warm with a scoop of vanilla ice cream for the ultimate treat.', 'Toss the blueberries with a bit of lemon juice and zest to enhance their flavor.', 'For a decorative touch, cut vents or shapes in the top crust before baking.', 'To prevent the crust from getting too dark, cover the edges with aluminum foil halfway through baking.', 20.0, 50.0, 30.0, 'United States', 'http://fakephotolink.com/blueberry_pie.jpg', 'Blueberry Pie served with vanilla ice cream', 20, 50);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Blueberry Pie', 'Rolling Pin', 1),
('Blueberry Pie', 'Knife', 1),
('Blueberry Pie', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Blueberries', 84.0, 0, 'Various Plant-based Foods', 'cup'),
('Granulated Sugar', 774.0, 0, 'Sweeteners', 'cup'),
('Cornstarch', 488.0, 0, 'Cereals and Cereal Products', 'tbsp'),
('Lemon Juice', 4.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Pie Crust', 49.0, 0, 'Cereals and Cereal Products', 'cup'),
('Butter', 204.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Blueberry Pie', 'Blueberries', 4, NULL),
('Blueberry Pie', 'Granulated Sugar', 0.75, NULL),
('Blueberry Pie', 'Cornstarch', 3, NULL),
('Blueberry Pie', 'Lemon Juice', 1,NULL),
('Blueberry Pie', 'Pie Crust', 2, NULL),
('Blueberry Pie', 'Butter', 1, NULL),
('Blueberry Pie', 'Salt', NULL, 'pinch');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Blueberry Pie', 'Blueberries');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Blueberry Pie', 'Preheat the oven to 375°F (190°C).', 1),
('Blueberry Pie', 'In a large bowl, combine blueberries, sugar, cornstarch, lemon juice, and a pinch of salt. Toss until the blueberries are coated.', 2),
('Blueberry Pie', 'Roll out one pie crust on a floured surface using a rolling pin until it\'s large enough to line a 9-inch pie dish. Transfer the crust to the pie dish.', 3),
('Blueberry Pie', 'Pour the blueberry mixture into the crust and dot with butter.', 4),
('Blueberry Pie', 'Roll out the second pie crust and place it over the filling. Trim any excess crust and crimp the edges to seal. Cut slits in the top crust to allow steam to escape.', 5),
('Blueberry Pie', 'Bake in the preheated oven for 45-50 minutes, or until the crust is golden brown and the filling is bubbly.', 6),
('Blueberry Pie', 'If the crust starts to get too dark, cover the edges with aluminum foil.', 7),
('Blueberry Pie', 'Let the pie cool for at least 30 minutes before slicing and serving.', 8),
('Blueberry Pie', 'Enjoy your Blueberry Pie!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Blueberry Pie', 'Dessert'),
('Blueberry Pie', 'Classic'),
('Blueberry Pie', 'Summer');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Blueberry Pie', 'Dessert');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chocolate Pudding', 'Pastry', 2, 'Chocolate Pudding is a rich and creamy dessert that\'s sure to satisfy any chocolate craving. Made with cocoa powder, milk, and sugar, this stovetop pudding is quick and easy to prepare. Serve it warm or chilled, topped with whipped cream or fresh berries, for a decadent treat.', 'For extra richness, use whole milk instead of low-fat milk.', 'To prevent a skin from forming on the pudding, press plastic wrap directly onto the surface before chilling.', 'Feel free to adjust the sweetness by adding more or less sugar to taste.', 10.0, 20.0, 15.0, 'United States', 'http://fakephotolink.com/chocolate_pudding.jpg', 'Chocolate Pudding served in a glass', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chocolate Pudding', 'Saucepan', 1),
('Chocolate Pudding', 'Whisk', 1),
('Chocolate Pudding', 'Measuring Cups', 1),
('Chocolate Pudding', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Granulated Sugar', 774.0, 0, 'Sweeteners', 'cup'),
('Cocoa Powder', 197.0, 0, 'Sweeteners', 'cup'),
('Cornstarch', 488.0, 0, 'Cereals and Cereal Products', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Vanilla Extract', 37.0, 0, 'Herbs and Essential Oils', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chocolate Pudding', 'Granulated Sugar', 0.5, NULL),
('Chocolate Pudding', 'Cocoa Powder', 0.25, 'cups'),
('Chocolate Pudding', 'Cornstarch', 3, NULL),
('Chocolate Pudding', 'Salt', 0.25, NULL),
('Chocolate Pudding', 'Milk', 2, 'cups'),
('Chocolate Pudding', 'Vanilla Extract', 1, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chocolate Pudding', 'In a saucepan, whisk together sugar, cocoa powder, cornstarch, and salt.', 1),
('Chocolate Pudding', 'Gradually whisk in milk until smooth.', 2),
('Chocolate Pudding', 'Cook over medium heat, whisking constantly, until the mixture thickens and comes to a boil, about 5-7 minutes.', 3),
('Chocolate Pudding', 'Remove from heat and stir in vanilla extract.', 4),
('Chocolate Pudding', 'Pour the pudding into serving dishes.', 5),
('Chocolate Pudding', 'Press plastic wrap directly onto the surface of the pudding to prevent a skin from forming.', 6),
('Chocolate Pudding', 'Chill in the refrigerator for at least 1 hour, or until set.', 7),
('Chocolate Pudding', 'Serve warm or chilled, topped with whipped cream or fresh berries.', 8),
('Chocolate Pudding', 'Enjoy your Chocolate Pudding!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chocolate Pudding', 'Dessert'),
('Chocolate Pudding', 'Quick'),
('Chocolate Pudding', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Chocolate Pudding', 'Dessert');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Browned Butter Beets', 'Cooking', 2, 'Browned Butter Beets is a simple and delicious side dish that highlights the natural sweetness of beets. Sliced beets are sautéed in browned butter until tender and caramelized, then finished with a sprinkle of fresh herbs. It\'s a perfect accompaniment to any meal.', 'Use fresh beets for the best flavor and texture.', 'To save time, you can use pre-cooked beets from the grocery store.', 'Feel free to experiment with different herbs like thyme or rosemary.', 10.0, 20.0, 15.0, 'United States', 'http://fakephotolink.com/browned_butter_beets.jpg', 'Browned Butter Beets served in a skillet', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Browned Butter Beets', 'Skillet', 1),
('Browned Butter Beets', 'Knife', 1),
('Browned Butter Beets', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Beets', 44.0, 0, 'Various Plant-based Foods', 'cup'),
('Butter', 204.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 1.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Browned Butter Beets', 'Beets', 4, 'cups'),
('Browned Butter Beets', 'Butter', 2, NULL),
('Browned Butter Beets', 'Salt', NULL, 'to taste'),
('Browned Butter Beets', 'Black Pepper', NULL, 'to taste'),
('Browned Butter Beets', 'Fresh Herbs', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Browned Butter Beets', 'Beets');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Browned Butter Beets', 'Peel and slice the beets into thin rounds.', 1),
('Browned Butter Beets', 'In a skillet, melt the butter over medium heat. Continue cooking until the butter begins to brown and develops a nutty aroma, about 3-5 minutes.', 2),
('Browned Butter Beets', 'Add the sliced beets to the skillet and cook, stirring occasionally, until tender and caramelized, about 10-15 minutes.', 3),
('Browned Butter Beets', 'Season with salt and black pepper to taste.', 4),
('Browned Butter Beets', 'Remove from heat and sprinkle with chopped fresh herbs.', 5),
('Browned Butter Beets', 'Serve hot, and enjoy your Browned Butter Beets!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Browned Butter Beets', 'Side Dish'),
('Browned Butter Beets', 'Quick'),
('Browned Butter Beets', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Browned Butter Beets', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Turkey Soup with Homemade Noodles', 'Cooking', 2, 'Turkey Soup with Homemade Noodles is a comforting and nourishing dish that\'s perfect for using up leftover turkey. The broth is flavored with aromatic vegetables and fresh herbs, and the homemade noodles add a rustic touch. Serve this soup on a chilly day for a cozy and satisfying meal.', 'Feel free to add other vegetables like carrots or celery for extra flavor.', 'For a shortcut, you can use store-bought noodles instead of making them from scratch.', 'Make a double batch and freeze half for an easy meal later.', 30.0, 90.0, 60.0, 'United States', 'http://fakephotolink.com/turkey_soup_with_homemade_noodles.jpg', 'Turkey Soup with Homemade Noodles served in a bowl', 30, 90);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Turkey Soup with Homemade Noodles', 'Pot', 1),
('Turkey Soup with Homemade Noodles', 'Knife', 1),
('Turkey Soup with Homemade Noodles', 'Cutting Board', 1),
('Turkey Soup with Homemade Noodles', 'Rolling Pin', 1),
('Turkey Soup with Homemade Noodles', 'Pasta Machine', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Turkey', 189.0, 0, 'Meat and Meat Products', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'cup'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Bay Leaf', 1.0, 0, 'Herbs and Essential Oils', 'leaf'),
('Thyme', 1.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Chicken Broth', 17.0, 0, 'Others', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', 'unit'),
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Turkey Soup with Homemade Noodles', 'Turkey', 2, 'cups'),
('Turkey Soup with Homemade Noodles', 'Onion', 1, NULL),
('Turkey Soup with Homemade Noodles', 'Carrots', 1, 'cups'),
('Turkey Soup with Homemade Noodles', 'Celery', 2, 'stalks'),
('Turkey Soup with Homemade Noodles', 'Garlic', 2, 'cloves'),
('Turkey Soup with Homemade Noodles', 'Bay Leaf', 1, NULL),
('Turkey Soup with Homemade Noodles', 'Thyme', 1, NULL),
('Turkey Soup with Homemade Noodles', 'Chicken Broth', 8, 'cups'),
('Turkey Soup with Homemade Noodles', 'Salt', NULL, 'to taste'),
('Turkey Soup with Homemade Noodles', 'Black Pepper', NULL, 'to taste'),
('Turkey Soup with Homemade Noodles', 'Eggs', 2, NULL),
('Turkey Soup with Homemade Noodles', 'All-Purpose Flour', 2, 'cups');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Turkey Soup with Homemade Noodles', 'Turkey');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Turkey Soup with Homemade Noodles', 'In a large pot, combine diced onion, carrots, celery, minced garlic, bay leaf, and thyme. Cook over medium heat until vegetables are softened, about 5 minutes.', 1),
('Turkey Soup with Homemade Noodles', 'Add diced turkey and chicken broth to the pot. Bring to a boil, then reduce heat and simmer for 20-30 minutes, or until flavors have melded.', 2),
('Turkey Soup with Homemade Noodles', 'While the soup is simmering, make the noodles. In a mixing bowl, combine eggs and flour to form a stiff dough.', 3),
('Turkey Soup with Homemade Noodles', 'On a floured surface, roll out the dough until thin. Use a knife or pasta machine to cut the dough into thin strips.', 4),
('Turkey Soup with Homemade Noodles', 'Add the noodles to the simmering soup and cook for an additional 5-7 minutes, or until noodles are tender.', 5),
('Turkey Soup with Homemade Noodles', 'Season the soup with salt and black pepper to taste.', 6),
('Turkey Soup with Homemade Noodles', 'Serve hot, and enjoy your Turkey Soup with Homemade Noodles!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Turkey Soup with Homemade Noodles', 'Soup'),
('Turkey Soup with Homemade Noodles', 'Comfort Food'),
('Turkey Soup with Homemade Noodles', 'Homemade');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Turkey Soup with Homemade Noodles', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Home fries', 'Cooking', 1, 'Home fries are a classic breakfast side dish made from diced potatoes that are seasoned and fried until crispy and golden brown. This simple recipe is easy to customize with your favorite seasonings and herbs, making it the perfect accompaniment to eggs, bacon, or pancakes.', 'For extra flavor, try adding diced onions or bell peppers to the potatoes.', 'Make sure not to overcrowd the pan when frying the potatoes to ensure they get crispy.', 'Feel free to use your preferred cooking fat, such as butter or olive oil.', 10.0, 20.0, 15.0, 'United States', 'http://fakephotolink.com/home_fries.jpg', 'Home fries served on a plate', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Home fries', 'Skillet', 1),
('Home fries', 'Knife', 1),
('Home fries', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Potatoes', 77.0, 0, 'Various Plant-based Foods', 'unit'),
('Vegetable Oil', 192.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Paprika', 2.0, 0, 'Herbs and Essential Oils', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Home fries', 'Potatoes', 4, NULL),
('Home fries', 'Vegetable Oil', 2, NULL),
('Home fries', 'Salt', NULL, 'to taste'),
('Home fries', 'Black Pepper', NULL, 'to taste'),
('Home fries', 'Paprika', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Home fries', 'Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Home fries', 'Wash and scrub the potatoes, then dice them into small cubes.', 1),
('Home fries', 'Heat vegetable oil in a skillet over medium heat.', 2),
('Home fries', 'Add the diced potatoes to the skillet and season with salt, black pepper, and paprika.', 3),
('Home fries', 'Cook, stirring occasionally, until the potatoes are golden brown and crispy on the outside, and tender on the inside, about 15-20 minutes.', 4),
('Home fries', 'Remove the home fries from the skillet and drain on paper towels to remove excess oil.', 5),
('Home fries', 'Serve hot, and enjoy your Home fries!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Home fries', 'Side Dish'),
('Home fries', 'Breakfast'),
('Home fries', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Home fries', 'Breakfast'),
('Home fries', 'Side Dish');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chocolate Raspberry Torte', 'Pastry', 3, 'Chocolate Raspberry Torte is an elegant dessert that\'s perfect for special occasions. Layers of rich chocolate cake are sandwiched with raspberry preserves and finished with a decadent chocolate ganache. Garnished with fresh raspberries, it\'s a show-stopping finale to any meal.', 'For extra flavor, add a splash of raspberry liqueur to the cake layers.', 'Make sure to use good quality chocolate for the ganache for the best flavor and texture.', 'Allow the torte to chill in the refrigerator for at least 1 hour before serving to set the ganache.', 30.0, 60.0, 60.0, 'United States', 'http://fakephotolink.com/chocolate_raspberry_torte.jpg', 'Chocolate Raspberry Torte garnished with fresh raspberries', 30, 60);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chocolate Raspberry Torte', 'Round Cake Pans', 2),
('Chocolate Raspberry Torte', 'Mixing Bowls Set', 2),
('Chocolate Raspberry Torte', 'Saucepan', 1),
('Chocolate Raspberry Torte', 'Whisk', 1),
('Chocolate Raspberry Torte', 'Spatula', 1),
('Chocolate Raspberry Torte', 'Cooling Rack', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup'),
('Cocoa Powder', 197.0, 0, 'Sweeteners', 'cup'),
('Baking Powder', 5.0, 0, 'Cereals and Cereal Products', 'tsp'),
('Baking Soda', 0.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Butter', 204.0, 0, 'Fats and Oils', 'cup'),
('Granulated Sugar', 774.0, 0, 'Sweeteners', 'cup'),
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', 'unit'),
('Vanilla Extract', 37.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Buttermilk', 98.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Raspberry Preserves', 120.0, 0, 'Sweeteners', 'cup'),
('Heavy Cream', 52.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Semi-Sweet Chocolate', 401.0, 0, 'Sweeteners', 'cup'),
('Fresh Raspberries', 64.0, 0, 'Various Plant-based Foods', 'cup');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chocolate Raspberry Torte', 'All-Purpose Flour', 1.5, 'cups'),
('Chocolate Raspberry Torte', 'Cocoa Powder', 0.75, 'cups'),
('Chocolate Raspberry Torte', 'Baking Powder', 1, NULL),
('Chocolate Raspberry Torte', 'Baking Soda', 1, NULL),
('Chocolate Raspberry Torte', 'Salt', 0.5, NULL),
('Chocolate Raspberry Torte', 'Butter', 0.5, 'cups'),
('Chocolate Raspberry Torte', 'Granulated Sugar', 1.5, 'cups'),
('Chocolate Raspberry Torte', 'Eggs', 3, NULL),
('Chocolate Raspberry Torte', 'Vanilla Extract', 1, NULL),
('Chocolate Raspberry Torte', 'Buttermilk', 0.5, NULL),
('Chocolate Raspberry Torte', 'Raspberry Preserves', 0.5, 'cups'),
('Chocolate Raspberry Torte', 'Heavy Cream', 1, 'cups'),
('Chocolate Raspberry Torte', 'Semi-Sweet Chocolate', 1, 'cups'),
('Chocolate Raspberry Torte', 'Fresh Raspberries', NULL, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chocolate Raspberry Torte', 'Semi-Sweet Chocolate');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chocolate Raspberry Torte', 'Preheat the oven to 350°F (175°C). Grease and flour two 9-inch round cake pans.', 1),
('Chocolate Raspberry Torte', 'In a mixing bowl, sift together flour, cocoa powder, baking powder, baking soda, and salt.', 2),
('Chocolate Raspberry Torte', 'In another bowl, cream together butter and sugar until light and fluffy. Beat in eggs, one at a time, then stir in vanilla extract.', 3),
('Chocolate Raspberry Torte', 'Gradually mix in the dry ingredients alternately with the buttermilk until just blended.', 4),
('Chocolate Raspberry Torte', 'Divide the batter evenly between the prepared cake pans. Smooth the tops with a spatula.', 5),
('Chocolate Raspberry Torte', 'Bake in the preheated oven for 25 to 30 minutes, or until a toothpick inserted into the center comes out clean.', 6),
('Chocolate Raspberry Torte', 'Allow the cakes to cool in the pans for 10 minutes before transferring to a wire rack to cool completely.', 7),
('Chocolate Raspberry Torte', 'Once the cakes have cooled, spread raspberry preserves over the top of one cake layer. Place the second layer on top.', 8),
('Chocolate Raspberry Torte', 'In a saucepan, heat heavy cream until it just begins to boil. Remove from heat and pour over chopped semi-sweet chocolate in a mixing bowl. Stir until smooth and glossy.', 9),
('Chocolate Raspberry Torte', 'Pour the chocolate ganache over the assembled cake, allowing it to drip down the sides.', 10),
('Chocolate Raspberry Torte', 'Chill the cake in the refrigerator for at least 1 hour to set the ganache.', 11),
('Chocolate Raspberry Torte', 'Garnish with fresh raspberries before serving.', 12),
('Chocolate Raspberry Torte', 'Slice and enjoy your Chocolate Raspberry Torte!', 13);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chocolate Raspberry Torte', 'Dessert'),
('Chocolate Raspberry Torte', 'Cake'),
('Chocolate Raspberry Torte', 'Special Occasion');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Chocolate Raspberry Torte', 'Dessert');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Golden Latte', 'Pastry', 1, 'Golden Latte, also known as Turmeric Latte or Golden Milk, is a warm and soothing drink made with turmeric, milk, and spices. It\'s known for its anti-inflammatory properties and has a rich, earthy flavor with a hint of sweetness. Enjoy it as a comforting beverage any time of day.', 'You can use any type of milk you prefer, such as cow\'s milk, almond milk, or coconut milk.', 'Adjust the sweetness by adding more or less honey or sweetener of your choice.', 'Feel free to customize the spices to your taste, adding more ginger for a spicier kick or more cinnamon for sweetness.', 5.0, 10.0, 5.0, 'India', 'http://fakephotolink.com/golden_latte.jpg', 'Golden Latte served in a mug', 5, 10);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Golden Latte', 'Saucepan', 1),
('Golden Latte', 'Whisk', 1),
('Golden Latte', 'Mug', 1),
('Golden Latte', 'Measuring Spoons', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Turmeric', 24.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Cinnamon', 6.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Ginger', 9.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'pinch'),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Honey', 304.0, 0, 'Sweeteners', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Golden Latte', 'Turmeric', 0.5, NULL),
('Golden Latte', 'Cinnamon', 0.5, NULL),
('Golden Latte', 'Ginger', 0.25, NULL),
('Golden Latte', 'Black Pepper', NULL, 'pinch'),
('Golden Latte', 'Milk', 1, 'cups'),
('Golden Latte', 'Honey', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Golden Latte', 'Turmeric');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Golden Latte', 'In a small saucepan, whisk together turmeric, cinnamon, ginger, black pepper, and milk.', 1),
('Golden Latte', 'Heat the mixture over medium heat until it is hot but not boiling, whisking occasionally.', 2),
('Golden Latte', 'Remove from heat and stir in honey or sweetener of your choice.', 3),
('Golden Latte', 'Pour the golden latte into a mug and enjoy!', 4);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Golden Latte', 'Beverage'),
('Golden Latte', 'Healthy'),
('Golden Latte', 'Vegan');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Golden Latte', 'Snack'),
('Golden Latte', 'Drink');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Fig Shake', 'Beverage', 1, 'Fig Shake is a delicious and refreshing drink made with fresh figs, yogurt, and honey. It\'s packed with nutrients and makes for a perfect breakfast or snack. Blend it up in minutes for a quick and satisfying treat.', 'For a thicker shake, add more yogurt or a frozen banana.', 'Feel free to adjust the sweetness by adding more or less honey.', 'Garnish with a sprinkle of cinnamon or a few sliced figs for an extra special touch.', 5.0, 5.0, 5.0, 'Kuwait', 'http://fakephotolink.com/fig_shake.jpg', 'Fig Shake served in a glass', 5, 5);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Fig Shake', 'Blender', 1),
('Fig Shake', 'Measuring Cups', 1),
('Fig Shake', 'Knife', 1),
('Fig Shake', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Fresh Figs', 74.0, 0, 'Various Plant-based Foods', 'cup'),
('Yogurt', 149.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Honey', 304.0, 0, 'Sweeteners', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Fig Shake', 'Fresh Figs', 1, 'cups'),
('Fig Shake', 'Yogurt', 0.5, 'cups'),
('Fig Shake', 'Honey', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Fig Shake', 'Fresh Figs');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Fig Shake', 'Wash and remove the stems from the fresh figs.', 1),
('Fig Shake', 'In a blender, combine the figs, yogurt, and honey.', 2),
('Fig Shake', 'Blend until smooth and creamy.', 3),
('Fig Shake', 'Pour into a glass and enjoy your Fig Shake!', 4);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Fig Shake', 'Beverage'),
('Fig Shake', 'Healthy'),
('Fig Shake', 'Quick');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Fig Shake', 'Snack'),
('Fig Shake', 'Drink');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lentil Soup', 'Cooking', 4, 'Lentil Soup is a hearty and nutritious dish that\'s perfect for a cold day. Made with lentils, vegetables, and spices, this soup is packed with flavor and protein. Serve it with crusty bread for a satisfying meal.', 'For extra flavor, add a splash of balsamic vinegar or a squeeze of lemon juice before serving.', 'Feel free to customize the vegetables and spices based on what you have on hand.', 'Lentil soup tends to thicken as it sits, so you may need to add more broth or water when reheating leftovers.', 15.0, 45.0, 30.0, 'Iraq', 'http://fakephotolink.com/lentil_soup.jpg', 'Lentil Soup served in a bowl with bread', 15, 45);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lentil Soup', 'Pot', 1),
('Lentil Soup', 'Knife', 1),
('Lentil Soup', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Legumes and Legume Products', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'cup'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Vegetable Broth', 11.0, 0, 'Others', 'cup'),
('Tomato Paste', 29.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Bay Leaf', 1.0, 0, 'Herbs and Essential Oils', 'leaf'),
('Cumin', 8.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Parsley', 1.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lentil Soup', 'Lentils', 1, 'cups'),
('Lentil Soup', 'Onion', 1, NULL),
('Lentil Soup', 'Carrots', 0.5, 'cups'),
('Lentil Soup', 'Celery', 1, 'stalks'),
('Lentil Soup', 'Garlic', 2, 'cloves'),
('Lentil Soup', 'Vegetable Broth', 6, 'cups'),
('Lentil Soup', 'Tomato Paste', 2, NULL),
('Lentil Soup', 'Bay Leaf', 1, NULL),
('Lentil Soup', 'Cumin', 1, NULL),
('Lentil Soup', 'Salt', NULL, 'to taste'),
('Lentil Soup', 'Black Pepper', NULL, 'to taste'),
('Lentil Soup', 'Fresh Parsley', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lentil Soup', 'Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lentil Soup', 'Rinse the lentils under cold water and pick out any debris.', 1),
('Lentil Soup', 'In a large pot, heat olive oil over medium heat. Add diced onion, carrots, and celery. Cook until vegetables are softened, about 5 minutes.', 2),
('Lentil Soup', 'Add minced garlic, tomato paste, cumin, salt, and black pepper. Cook for another 2 minutes.', 3),
('Lentil Soup', 'Stir in lentils, bay leaf, and vegetable broth. Bring to a boil, then reduce heat and simmer, covered, for 30-40 minutes, or until lentils are tender.', 4),
('Lentil Soup', 'Season with additional salt and pepper to taste, if needed.', 5),
('Lentil Soup', 'Remove bay leaf before serving.', 6),
('Lentil Soup', 'Garnish with chopped fresh parsley and serve hot.', 7),
('Lentil Soup', 'Enjoy your hearty Lentil Soup!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lentil Soup', 'Soup'),
('Lentil Soup', 'Healthy'),
('Lentil Soup', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lentil Soup', 'Lunch'),
('Lentil Soup', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Buckwheat Tabbouleh', 'Cooking', 5, 'Buckwheat Tabbouleh is a gluten-free twist on the traditional Middle Eastern salad. Instead of bulgur wheat, this version uses nutty and nutritious buckwheat as the base. Combined with fresh herbs, vegetables, and a zesty lemon dressing, it\'s a light and refreshing dish.', 'Make sure to rinse the buckwheat thoroughly before cooking to remove any bitterness.', 'Feel free to add other vegetables like cucumbers or bell peppers for extra crunch.', 'This salad can be made ahead of time and stored in the refrigerator for up to 3 days.', 15.0, 15.0, 30.0, 'Brazil', 'http://fakephotolink.com/buckwheat_tabbouleh.jpg', 'Buckwheat Tabbouleh served in a bowl', 15, 15);

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Potato Curry', 'Cooking', 3, 'A flavorful and comforting potato curry made with potatoes cooked in a fragrant and spicy sauce. Perfect served over rice or with naan.', 'For a creamier texture, mash some of the potatoes into the curry.', 'Adjust the spice level by adding more or less chili powder according to your preference.', 'Garnish with fresh cilantro before serving for extra flavor.', 5.0, 30.0, 15.0, 'India', 'http://fakephotolink.com/potato_curry.jpg', 'Delicious and aromatic Potato Curry', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Potato Curry', 'Saucepan', 1),
('Potato Curry', 'Skillet', 1),
('Potato Curry', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Potatoes', 77.0, 0, 'Cereals and Cereal Products', 'gr'),
('Onion', 44.0, 0, 'Herbs and Essential Oils', 'gr'),
('Tomatoes', 18.0, 0, 'Vegetables', 'gr'),
('Garlic', 149.0, 0, 'Herbs and Essential Oils', 'gr'),
('Ginger', 80.0, 0, 'Herbs and Essential Oils', 'gr'),
('Chili Powder', 282.0, 0, 'Herbs and Essential Oils', 'gr'),
('Turmeric', 525.0, 0, 'Herbs and Essential Oils', 'gr'),
('Cumin Seeds', 375.0, 0, 'Herbs and Essential Oils', 'gr'),
('Coriander Powder', 23.0, 0, 'Herbs and Essential Oils', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Vegetable Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Water', 0.0, 0, 'Others', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Potato Curry', 'Potatoes', 500, NULL),
('Potato Curry', 'Onion', 1, NULL),
('Potato Curry', 'Tomatoes', 2, NULL),
('Potato Curry', 'Garlic', 3, NULL),
('Potato Curry', 'Ginger', NULL, 'Some'),
('Potato Curry', 'Chili Powder', 1, NULL),
('Potato Curry', 'Turmeric', 1, NULL),
('Potato Curry', 'Cumin Seeds', 1, NULL),
('Potato Curry', 'Coriander Powder', 1, NULL),
('Potato Curry', 'Salt',NULL, NULL),
('Potato Curry', 'Vegetable Oil', 2, NULL),
('Potato Curry', 'Water', 250, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Potato Curry', 'Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Potato Curry', 'Peel and dice the potatoes, onion, and tomatoes.', 1),
('Potato Curry', 'Heat vegetable oil in a skillet over medium heat. Add cumin seeds and let them splutter.', 2),
('Potato Curry', 'Add chopped onion, garlic, and ginger. Sauté until the onions are translucent.', 3),
('Potato Curry', 'Add diced tomatoes, chili powder, turmeric, coriander powder, and salt. Cook until the tomatoes are soft and oil starts to separate.', 4),
('Potato Curry', 'Add the diced potatoes and water. Cover and cook until the potatoes are tender, stirring occasionally.', 5),
('Potato Curry', 'Garnish with chopped cilantro and serve hot with rice or naan.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Potato Curry', 'Spicy'),
('Potato Curry', 'Vegetarian'),
('Potato Curry', 'Indian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Potato Curry', 'Dinner');

-- Bucatini all'Amatriciana
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Bucatini all\'Amatriciana', 'Cooking', 4, 'Bucatini all\'Amatriciana is a classic Italian pasta dish made with bucatini pasta, pancetta, tomatoes, and pecorino cheese. It\'s simple yet delicious, perfect for a cozy dinner.', 'For extra flavor, use high-quality canned tomatoes or fresh tomatoes when they\'re in season.', 'If you can\'t find bucatini pasta, spaghetti works well as a substitute.', 'Serve with a sprinkle of freshly grated pecorino cheese on top.', 10.0, 50.0, 15.0, 'Italy', 'http://fakephotolink.com/bucatini_all_amatriciana.jpg', 'Bucatini all\'Amatriciana with pancetta and tomatoes', 10, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Bucatini all\'Amatriciana', 'Pot', 1),
('Bucatini all\'Amatriciana', 'Skillet', 1),
('Bucatini all\'Amatriciana', 'Colander', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Bucatini Pasta', 349.0, 0, 'Cereals and Cereal Products', 'gr'),
('Pancetta', 416.0, 0, 'Meat and Meat Products', 'gr'),
('Onion', 44.0, 0, 'Herbs and Essential Oils', 'gr'),
('Canned Tomatoes', 32.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 149.0, 0, 'Herbs and Essential Oils', 'gr'),
('Red Chili Flakes', 282.0, 0, 'Herbs and Essential Oils', 'gr'),
('Pecorino Cheese', 392.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 255.0, 0, 'Herbs and Essential Oils', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Bucatini all\'Amatriciana', 'Bucatini Pasta', 400, NULL),
('Bucatini all\'Amatriciana', 'Pancetta', 150, NULL),
('Bucatini all\'Amatriciana', 'Onion', 1, NULL),
('Bucatini all\'Amatriciana', 'Canned Tomatoes', 400, NULL),
('Bucatini all\'Amatriciana', 'Garlic', 2, NULL),
('Bucatini all\'Amatriciana', 'Red Chili Flakes', NULL, 'Some'),
('Bucatini all\'Amatriciana', 'Pecorino Cheese', 50, NULL),
('Bucatini all\'Amatriciana', 'Salt', 1, NULL),
('Bucatini all\'Amatriciana', 'Black Pepper', 1, NULL),
('Bucatini all\'Amatriciana', 'Olive Oil', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Bucatini all\'Amatriciana', 'Bucatini Pasta');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Bucatini all\'Amatriciana', 'Cook the pasta in a large pot of boiling salted water until al dente. Reserve 1 cup of pasta water, then drain the pasta in a colander.', 1),
('Bucatini all\'Amatriciana', 'In a skillet, heat olive oil over medium heat. Add pancetta and cook until browned and crispy.', 2),
('Bucatini all\'Amatriciana', 'Add chopped onion and garlic to the skillet. Cook until softened.', 3),
('Bucatini all\'Amatriciana', 'Add canned tomatoes and red chili flakes to the skillet. Cook until the sauce thickens slightly.', 4),
('Bucatini all\'Amatriciana', 'Add the cooked pasta to the skillet along with some reserved pasta water. Toss to combine and coat the pasta in the sauce.', 5),
('Bucatini all\'Amatriciana', 'Season with salt and black pepper to taste. Serve hot with grated pecorino cheese on top.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Bucatini all\'Amatriciana', 'Italian'),
('Bucatini all\'Amatriciana', 'Pasta'),
('Bucatini all\'Amatriciana', 'Comfort Food');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Bucatini all\'Amatriciana', 'Dinner');

-- Brioche Chocolate Rolls
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Brioche Chocolate Rolls', 'Pastry', 2, 'Brioche chocolate rolls are soft and buttery rolls filled with rich chocolate, perfect for breakfast or as a sweet treat. They\'re easy to make and sure to impress!', 'For best results, use high-quality chocolate for the filling.', 'You can make the dough ahead of time and refrigerate overnight for convenience.', 'Serve warm for a gooey chocolate experience.', 6.0, 40.0, 20.0, 'France', 'http://fakephotolink.com/brioche_chocolate_rolls.jpg', 'Brioche Chocolate Rolls with rich chocolate filling', 20, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Brioche Chocolate Rolls', 'Mixing Bowl', 1),
('Brioche Chocolate Rolls', 'Baking Sheet', 1),
('Brioche Chocolate Rolls', 'Rolling Pin', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Bread Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Sugar', 387.0, 1, 'Sweeteners', 'gr'),
('Active Dry Yeast', 47.0, 0, 'Others', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Eggs', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Chocolate Chips', 535.0, 1, 'Products with Sweeteners', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Brioche Chocolate Rolls', 'Bread Flour', 500, NULL),
('Brioche Chocolate Rolls', 'Sugar', 50, NULL),
('Brioche Chocolate Rolls', 'Active Dry Yeast', 7, NULL),
('Brioche Chocolate Rolls', 'Salt', 5, NULL),
('Brioche Chocolate Rolls', 'Eggs', 2, NULL),
('Brioche Chocolate Rolls', 'Milk', 250, NULL),
('Brioche Chocolate Rolls', 'Butter', 113, NULL),
('Brioche Chocolate Rolls', 'Chocolate Chips', 100, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Brioche Chocolate Rolls', 'Chocolate Chips');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Brioche Chocolate Rolls', 'In a mixing bowl, combine flour, sugar, yeast, and salt.', 1),
('Brioche Chocolate Rolls', 'Add eggs, milk, and softened butter to the bowl. Mix until a dough forms.', 2),
('Brioche Chocolate Rolls', 'Knead the dough on a floured surface until smooth and elastic.', 3),
('Brioche Chocolate Rolls', 'Place the dough in a greased bowl, cover, and let it rise until doubled in size.', 4),
('Brioche Chocolate Rolls', 'Punch down the dough and roll it out into a rectangle. Sprinkle chocolate chips evenly over the dough.', 5),
('Brioche Chocolate Rolls', 'Roll up the dough tightly and cut it into slices.', 6),
('Brioche Chocolate Rolls', 'Place the rolls on a baking sheet, cover, and let rise again until puffy.', 7),
('Brioche Chocolate Rolls', 'Bake in a preheated oven until golden brown.', 8),
('Brioche Chocolate Rolls', 'Serve warm and enjoy!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Brioche Chocolate Rolls', 'Breakfast'),
('Brioche Chocolate Rolls', 'Dessert'),
('Brioche Chocolate Rolls', 'French');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Brioche Chocolate Rolls', 'Breakfast');

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Buckwheat Tabbouleh', 'Pot', 1),
('Buckwheat Tabbouleh', 'Strainer', 1),
('Buckwheat Tabbouleh', 'Knife', 1),
('Buckwheat Tabbouleh', 'Cutting Board', 1),
('Buckwheat Tabbouleh', 'Mixing Bowl', 1),
('Buckwheat Tabbouleh', 'Whisk', 1),
('Buckwheat Tabbouleh', 'Bowl', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Buckwheat Groats', 155.0, 0, 'Cereals and Cereal Products', 'cup'),
('Water', 0.0, 0, 'Beverages', 'cup'),
('Tomatoes', 18.0, 0, 'Various Plant-based Foods', 'unit'),
('Cucumber', 8.0, 0, 'Various Plant-based Foods', 'unit'),
('Green Onion', 4.0, 0, 'Various Plant-based Foods', 'unit'),
('Fresh Parsley', 1.0, 0, 'Various Plant-based Foods', 'cup'),
('Fresh Mint', 2.0, 0, 'Various Plant-based Foods', 'cup'),
('Lemon Juice', 4.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Buckwheat Tabbouleh', 'Buckwheat Groats', 1, 'cups'),
('Buckwheat Tabbouleh', 'Water', 2, 'cups'),
('Buckwheat Tabbouleh', 'Tomatoes', 2, NULL),
('Buckwheat Tabbouleh', 'Cucumber', 0.5, NULL),
('Buckwheat Tabbouleh', 'Green Onion', 3, NULL),
('Buckwheat Tabbouleh', 'Fresh Parsley', 0.5, 'cups'),
('Buckwheat Tabbouleh', 'Fresh Mint', 0.25, 'cups'),
('Buckwheat Tabbouleh', 'Lemon Juice', 2, NULL),
('Buckwheat Tabbouleh', 'Olive Oil', 2, NULL),
('Buckwheat Tabbouleh', 'Salt', NULL, 'to taste'),
('Buckwheat Tabbouleh', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Buckwheat Tabbouleh', 'Buckwheat Groats');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Buckwheat Tabbouleh', 'Rinse the buckwheat groats under cold water using a fine mesh strainer.', 1),
('Buckwheat Tabbouleh', 'In a pot, bring water to a boil. Add the rinsed buckwheat groats and reduce heat to low. Cover and simmer for 10-12 minutes, or until tender and water is absorbed.', 2),
('Buckwheat Tabbouleh', 'While the buckwheat is cooking, dice the tomatoes, cucumber, and green onions. Chop the fresh parsley and mint.', 3),
('Buckwheat Tabbouleh', 'In a mixing bowl, whisk together lemon juice, olive oil, salt, and black pepper to make the dressing.', 4),
('Buckwheat Tabbouleh', 'Once the buckwheat is cooked, fluff it with a fork and let it cool slightly.', 5),
('Buckwheat Tabbouleh', 'Add the cooked buckwheat and chopped vegetables and herbs to the bowl with the dressing. Toss until everything is well coated.', 6),
('Buckwheat Tabbouleh', 'Taste and adjust seasoning if needed.', 7),
('Buckwheat Tabbouleh', 'Transfer the buckwheat tabbouleh to a serving bowl and enjoy!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Buckwheat Tabbouleh', 'Salad'),
('Buckwheat Tabbouleh', 'Gluten-Free'),
('Buckwheat Tabbouleh', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Buckwheat Tabbouleh', 'Lunch'),
('Buckwheat Tabbouleh', 'Dinner');

-- Lentil Rice Bowls with Egg
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lentil Rice Bowls with Egg', 'Cooking', 5, 'These Lentil Rice Bowls with Egg are a nutritious and satisfying meal. They feature a flavorful combination of lentils, rice, vegetables, and a perfectly cooked egg on top. This dish is easy to customize with your favorite toppings and seasonings.', 'You can use any type of lentils you prefer, such as green, brown, or red lentils.', 'Feel free to add extra vegetables like bell peppers, spinach, or cherry tomatoes for added nutrition.', 'For extra flavor, drizzle with your favorite sauce or dressing, such as tahini, yogurt, or sriracha.', 15.0, 30.0, 20.0, 'Japan', 'http://fakephotolink.com/lentil_rice_bowls.jpg', 'Lentil Rice Bowls with Egg served in a bowl', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lentil Rice Bowls with Egg', 'Pot', 1),
('Lentil Rice Bowls with Egg', 'Saucepan', 1),
('Lentil Rice Bowls with Egg', 'Skillet', 1),
('Lentil Rice Bowls with Egg', 'Mixing Bowl', 1),
('Lentil Rice Bowls with Egg', 'Whisk', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Rice', 205.0, 0, 'Cereals and Cereal Products', 'cup'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Mixed Vegetables', 25.0, 0, 'Various Plant-based Foods', 'cup'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lentil Rice Bowls with Egg', 'Lentils', 1, 'cups'),
('Lentil Rice Bowls with Egg', 'Rice', 0.5, 'cups'),
('Lentil Rice Bowls with Egg', 'Egg', 1, NULL),
('Lentil Rice Bowls with Egg', 'Mixed Vegetables', 0.5, 'cups'),
('Lentil Rice Bowls with Egg', 'Olive Oil', 1, NULL),
('Lentil Rice Bowls with Egg', 'Salt', NULL, 'to taste'),
('Lentil Rice Bowls with Egg', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lentil Rice Bowls with Egg', 'Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lentil Rice Bowls with Egg', 'Cook lentils according to package instructions.', 1),
('Lentil Rice Bowls with Egg', 'Cook rice according to package instructions.', 2),
('Lentil Rice Bowls with Egg', 'In a skillet, heat olive oil over medium heat. Add mixed vegetables and sauté until tender.', 3),
('Lentil Rice Bowls with Egg', 'In a mixing bowl, whisk together cooked lentils, rice, sautéed vegetables, salt, and black pepper.', 4),
('Lentil Rice Bowls with Egg', 'In the same skillet, fry the egg until the whites are set but the yolk is still runny.', 5),
('Lentil Rice Bowls with Egg', 'Divide the lentil rice mixture into bowls and top each with a fried egg.', 6),
('Lentil Rice Bowls with Egg', 'Serve immediately and enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lentil Rice Bowls with Egg', 'Healthy'),
('Lentil Rice Bowls with Egg', 'Vegetarian'),
('Lentil Rice Bowls with Egg', 'Main Course');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lentil Rice Bowls with Egg', 'Lunch'),
('Lentil Rice Bowls with Egg', 'Dinner');

-- Italian Vegetable Lentil Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Italian Vegetable Lentil Soup', 'Cooking', 4, 'Italian Vegetable Lentil Soup is a hearty and flavorful dish that\'s perfect for chilly days. Loaded with lentils, vegetables, and Italian herbs, this soup is nutritious and comforting. Serve it with crusty bread for a complete meal.', 'For extra flavor, add a Parmesan rind to the soup while it simmers.', 'Feel free to use any vegetables you have on hand, such as carrots, celery, zucchini, or bell peppers.', 'If you prefer a thicker soup, blend a portion of it with an immersion blender.', 10.0, 30.0, 40.0, 'Italy', 'http://fakephotolink.com/italian_lentil_soup.jpg', 'Italian Vegetable Lentil Soup served in a bowl', 10, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Italian Vegetable Lentil Soup', 'Pot', 1),
('Italian Vegetable Lentil Soup', 'Saucepan', 1),
('Italian Vegetable Lentil Soup', 'Knife', 1),
('Italian Vegetable Lentil Soup', 'Cutting Board', 1),
('Italian Vegetable Lentil Soup', 'Mixing Spoon', 1),
('Italian Vegetable Lentil Soup', 'Immersion Blender', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Vegetable Broth', 15.0, 0, 'Others', 'cup'),
('Tomatoes', 18.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Italian Seasoning', 0.0, 0, 'Others', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Italian Vegetable Lentil Soup', 'Lentils', 1, 'cups'),
('Italian Vegetable Lentil Soup', 'Vegetable Broth', 4, 'cups'),
('Italian Vegetable Lentil Soup', 'Tomatoes', 2, NULL),
('Italian Vegetable Lentil Soup', 'Carrots', 2, NULL),
('Italian Vegetable Lentil Soup', 'Celery', 1, NULL),
('Italian Vegetable Lentil Soup', 'Onion', 1, NULL),
('Italian Vegetable Lentil Soup', 'Garlic', 2, NULL),
('Italian Vegetable Lentil Soup', 'Olive Oil', 1, NULL),
('Italian Vegetable Lentil Soup', 'Italian Seasoning', 2, NULL),
('Italian Vegetable Lentil Soup', 'Salt', NULL, 'to taste'),
('Italian Vegetable Lentil Soup', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Italian Vegetable Lentil Soup', 'Vegetable Broth');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Italian Vegetable Lentil Soup', 'Rinse lentils under cold water and drain.', 1),
('Italian Vegetable Lentil Soup', 'In a pot, heat olive oil over medium heat. Add chopped onion, carrots, celery, and garlic. Sauté until vegetables are tender.', 2),
('Italian Vegetable Lentil Soup', 'Stir in lentils, diced tomatoes, vegetable broth, Italian seasoning, salt, and black pepper.', 3),
('Italian Vegetable Lentil Soup', 'Bring the soup to a boil, then reduce heat and simmer for 20-25 minutes, or until lentils are tender.', 4),
('Italian Vegetable Lentil Soup', 'Optional: Blend a portion of the soup with an immersion blender for a thicker consistency.', 5),
('Italian Vegetable Lentil Soup', 'Taste and adjust seasoning if needed. Serve hot.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Italian Vegetable Lentil Soup', 'Healthy'),
('Italian Vegetable Lentil Soup', 'Vegetarian'),
('Italian Vegetable Lentil Soup', 'Soup');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Italian Vegetable Lentil Soup', 'Lunch'),
('Italian Vegetable Lentil Soup', 'Dinner');

-- One Pot Chicken & Potatoes
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('One Pot Chicken & Potatoes', 'Cooking', 2, 'One Pot Chicken & Potatoes is a simple and delicious meal that\'s perfect for busy weeknights. Everything cooks together in one pot, making cleanup a breeze. Tender chicken thighs, potatoes, and flavorful seasonings make this dish a family favorite.', 'For extra flavor, add lemon slices and fresh herbs such as rosemary or thyme.', 'You can use any type of potatoes you like, such as russet, red, or Yukon gold.', 'Feel free to add extra vegetables like carrots, green beans, or bell peppers for a complete meal.', 15.0, 40.0, 30.0, 'Australia', 'http://fakephotolink.com/one_pot_chicken_potatoes.jpg', 'One Pot Chicken & Potatoes served in a skillet', 15, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('One Pot Chicken & Potatoes', 'Skillet', 1),
('One Pot Chicken & Potatoes', 'Knife', 1),
('One Pot Chicken & Potatoes', 'Cutting Board', 1),
('One Pot Chicken & Potatoes', 'Mixing Spoon', 1),
('One Pot Chicken & Potatoes', 'Tongs', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Thighs', 280.0, 0, 'Meat and Meat Products', 'unit'),
('Potatoes', 163.0, 0, 'Various Plant-based Foods', 'unit'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Italian Seasoning', 0.0, 0, 'Others', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('One Pot Chicken & Potatoes', 'Chicken Thighs', 4, NULL),
('One Pot Chicken & Potatoes', 'Potatoes', 4, NULL),
('One Pot Chicken & Potatoes', 'Olive Oil', 2, NULL),
('One Pot Chicken & Potatoes', 'Garlic', 4, 'cloves'),
('One Pot Chicken & Potatoes', 'Italian Seasoning', 1, NULL),
('One Pot Chicken & Potatoes', 'Salt', NULL, 'to taste'),
('One Pot Chicken & Potatoes', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('One Pot Chicken & Potatoes', 'Chicken Thighs');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('One Pot Chicken & Potatoes', 'Season chicken thighs with salt, pepper, and Italian seasoning.', 1),
('One Pot Chicken & Potatoes', 'In a skillet, heat olive oil over medium-high heat. Add chicken thighs and cook until browned on both sides.', 2),
('One Pot Chicken & Potatoes', 'Remove chicken from skillet and set aside.', 3),
('One Pot Chicken & Potatoes', 'In the same skillet, add a bit more olive oil if needed. Add potatoes and garlic, and cook until potatoes are golden brown.', 4),
('One Pot Chicken & Potatoes', 'Return chicken to skillet and nestle it among the potatoes.', 5),
('One Pot Chicken & Potatoes', 'Cover and cook for 20-25 minutes, or until chicken is cooked through and potatoes are tender.', 6),
('One Pot Chicken & Potatoes', 'Serve hot and enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('One Pot Chicken & Potatoes', 'Easy'),
('One Pot Chicken & Potatoes', 'Main Course');

INSERT INTO meal_type (recipe_name, meal) VALUES
('One Pot Chicken & Potatoes', 'Dinner');

-- Sweet Korean Lentils
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Sweet Korean Lentils', 'Cooking', 5, 'Sweet Korean Lentils are a delicious and healthy dish inspired by Korean flavors. Made with lentils cooked in a sweet and savory sauce, this recipe is easy to make and perfect for a weeknight dinner. Serve over rice for a complete meal.', 'Adjust the amount of gochujang sauce according to your spice preference.', 'Feel free to add vegetables like bell peppers, carrots, or spinach for extra nutrition.', 'Garnish with sliced green onions and sesame seeds for added flavor and texture.', 15.0, 30.0, 20.0, 'South Korea', 'http://fakephotolink.com/sweet_korean_lentils.jpg', 'Sweet Korean Lentils served in a bowl over rice', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Sweet Korean Lentils', 'Saucepan', 1),
('Sweet Korean Lentils', 'Skillet', 1),
('Sweet Korean Lentils', 'Knife', 1),
('Sweet Korean Lentils', 'Cutting Board', 1),
('Sweet Korean Lentils', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Soy Sauce', 8.0, 0, 'Others', 'tbsp'),
('Gochujang Sauce', 40.0, 0, 'Others', 'tbsp'),
('Honey', 64.0, 1, 'Sweeteners', 'tbsp'),
('Rice Vinegar', 4.0, 0, 'Others', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Sesame Oil', 120.0, 0, 'Fats and Oils', 'tbsp'),
('Green Onions', 4.0, 0, 'Various Plant-based Foods', 'stalk'),
('Sesame Seeds', 52.0, 0, 'Others', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Sweet Korean Lentils', 'Lentils', 1, 'cups'),
('Sweet Korean Lentils', 'Water', 2, 'cups'),
('Sweet Korean Lentils', 'Soy Sauce', 3, NULL),
('Sweet Korean Lentils', 'Gochujang Sauce', 2, NULL),
('Sweet Korean Lentils', 'Honey', 1, NULL),
('Sweet Korean Lentils', 'Rice Vinegar', 1, NULL),
('Sweet Korean Lentils', 'Garlic', 2, 'cloves'),
('Sweet Korean Lentils', 'Sesame Oil', 1, NULL),
('Sweet Korean Lentils', 'Green Onions', 2, NULL),
('Sweet Korean Lentils', 'Sesame Seeds', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Sweet Korean Lentils', 'Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Sweet Korean Lentils', 'In a saucepan, combine lentils and water. Bring to a boil, then reduce heat and simmer for 15-20 minutes, or until lentils are tender.', 1),
('Sweet Korean Lentils', 'In a skillet, combine soy sauce, gochujang sauce, honey, rice vinegar, minced garlic, and sesame oil. Cook over medium heat until sauce thickens slightly.', 2),
('Sweet Korean Lentils', 'Add cooked lentils to the skillet with the sauce. Stir to coat the lentils evenly.', 3),
('Sweet Korean Lentils', 'Cook for an additional 5 minutes, stirring occasionally, until the flavors are well combined.', 4),
('Sweet Korean Lentils', 'Garnish with sliced green onions and sesame seeds before serving.', 5),
('Sweet Korean Lentils', 'Serve hot over rice and enjoy!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Sweet Korean Lentils', 'Healthy'),
('Sweet Korean Lentils', 'Vegetarian'),
('Sweet Korean Lentils', 'Main Course');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Sweet Korean Lentils', 'Lunch'),
('Sweet Korean Lentils', 'Dinner');

-- Buckwheat Beetroot Salad
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Buckwheat Beetroot Salad', 'Cooking', 5, 'Buckwheat Beetroot Salad is a vibrant and nutritious dish that\'s perfect for lunch or as a side dish. It features earthy buckwheat, sweet roasted beets, crunchy vegetables, and a tangy vinaigrette. This salad is easy to make and bursting with flavor.', 'You can cook the buckwheat ahead of time and store it in the refrigerator until ready to use.', 'Feel free to add other vegetables like cucumber, radishes, or bell peppers for extra crunch and color.', 'Garnish with fresh herbs like parsley, dill, or chives for added freshness.', 15.0, 30.0, 30.0, 'Germany', 'http://fakephotolink.com/buckwheat_beetroot_salad.jpg', 'Buckwheat Beetroot Salad served in a bowl', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Buckwheat Beetroot Salad', 'Pot', 1),
('Buckwheat Beetroot Salad', 'Baking Sheet', 1),
('Buckwheat Beetroot Salad', 'Knife', 2),
('Buckwheat Beetroot Salad', 'Cutting Board', 1),
('Buckwheat Beetroot Salad', 'Mixing Bowl', 1),
('Buckwheat Beetroot Salad', 'Whisk', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Buckwheat Groats', 155.0, 0, 'Cereals and Cereal Products', 'cup'),
('Beets', 43.0, 0, 'Various Plant-based Foods', 'unit'),
('Red Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Cucumber', 8.0, 0, 'Various Plant-based Foods', 'unit'),
('Bell Pepper', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Balsamic Vinegar', 14.0, 0, 'Others', 'tbsp'),
('Dijon Mustard', 15.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 2.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Buckwheat Beetroot Salad', 'Buckwheat Groats', 1, 'cups'),
('Buckwheat Beetroot Salad', 'Beets', 2, NULL),
('Buckwheat Beetroot Salad', 'Red Onion', 1, NULL),
('Buckwheat Beetroot Salad', 'Cucumber', 1, NULL),
('Buckwheat Beetroot Salad', 'Bell Pepper', 1, NULL),
('Buckwheat Beetroot Salad', 'Olive Oil', 2, NULL),
('Buckwheat Beetroot Salad', 'Balsamic Vinegar', 1, NULL),
('Buckwheat Beetroot Salad', 'Dijon Mustard', 1, NULL),
('Buckwheat Beetroot Salad', 'Salt', NULL, 'to taste'),
('Buckwheat Beetroot Salad', 'Black Pepper', NULL, 'to taste'),
('Buckwheat Beetroot Salad', 'Fresh Herbs', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Buckwheat Beetroot Salad', 'Buckwheat Groats');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Buckwheat Beetroot Salad', 'Preheat the oven to 400°F (200°C).', 1),
('Buckwheat Beetroot Salad', 'Peel and dice the beets. Place them on a baking sheet, drizzle with olive oil, and season with salt and pepper. Roast in the oven for 20-25 minutes, or until tender.', 2),
('Buckwheat Beetroot Salad', 'Cook buckwheat groats according to package instructions. Once cooked, fluff with a fork and let cool.', 3),
('Buckwheat Beetroot Salad', 'Chop the red onion, cucumber, and bell pepper into small pieces.', 4),
('Buckwheat Beetroot Salad', 'In a mixing bowl, whisk together olive oil, balsamic vinegar, Dijon mustard, salt, and pepper to make the dressing.', 5),
('Buckwheat Beetroot Salad', 'Add cooked buckwheat, roasted beets, chopped vegetables, and fresh herbs to the bowl with the dressing. Toss until everything is well coated.', 6),
('Buckwheat Beetroot Salad', 'Serve immediately or chill in the refrigerator for later. Enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Buckwheat Beetroot Salad', 'Healthy'),
('Buckwheat Beetroot Salad', 'Salad'),
('Buckwheat Beetroot Salad', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Buckwheat Beetroot Salad', 'Lunch'),
('Buckwheat Beetroot Salad', 'Dinner');

-- New Potato Lentil Salad
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('New Potato Lentil Salad', 'Cooking', 4, 'New Potato Lentil Salad is a hearty and flavorful dish that\'s perfect for picnics, barbecues, or as a light lunch. It combines tender new potatoes, cooked lentils, fresh herbs, and a zesty vinaigrette. This salad is easy to make and bursting with summery flavors.', 'You can use any type of lentils you prefer, such as green, brown, or red lentils.', 'Feel free to add other vegetables like cherry tomatoes, cucumbers, or bell peppers for extra color and flavor.', 'Garnish with chopped fresh parsley or dill for added freshness.', 15.0, 30.0, 30.0, 'Japan', 'http://fakephotolink.com/new_potato_lentil_salad.jpg', 'New Potato Lentil Salad served in a bowl', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('New Potato Lentil Salad', 'Pot', 1),
('New Potato Lentil Salad', 'Mixing Bowl', 1),
('New Potato Lentil Salad', 'Whisk', 1),
('New Potato Lentil Salad', 'Knife', 1),
('New Potato Lentil Salad', 'Cutting Board', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('New Potatoes', 77.0, 0, 'Various Plant-based Foods', 'unit'),
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Red Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('White Wine Vinegar', 2.0, 0, 'Others', 'tbsp'),
('Dijon Mustard', 15.0, 0, 'Others', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 2.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('New Potato Lentil Salad', 'New Potatoes', 1.5, NULL),
('New Potato Lentil Salad', 'Lentils', 1, 'cups'),
('New Potato Lentil Salad', 'Red Onion', 0.5, NULL),
('New Potato Lentil Salad', 'Olive Oil', 3, NULL),
('New Potato Lentil Salad', 'White Wine Vinegar', 2, NULL),
('New Potato Lentil Salad', 'Dijon Mustard', 1,NULL),
('New Potato Lentil Salad', 'Salt', NULL, 'to taste'),
('New Potato Lentil Salad', 'Black Pepper', NULL, 'to taste'),
('New Potato Lentil Salad', 'Fresh Herbs', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('New Potato Lentil Salad', 'New Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('New Potato Lentil Salad', 'Boil the new potatoes in salted water until tender, about 15-20 minutes. Drain and let cool slightly.', 1),
('New Potato Lentil Salad', 'Cook lentils according to package instructions. Once cooked, drain any excess water and let cool.', 2),
('New Potato Lentil Salad', 'In a mixing bowl, whisk together olive oil, white wine vinegar, Dijon mustard, salt, and pepper to make the dressing.', 3),
('New Potato Lentil Salad', 'Cut the cooled potatoes into bite-sized pieces and add them to the bowl with the dressing.', 4),
('New Potato Lentil Salad', 'Finely chop the red onion and add it to the bowl with the potatoes.', 5),
('New Potato Lentil Salad', 'Add cooked lentils to the bowl and gently toss everything together until well combined.', 6),
('New Potato Lentil Salad', 'Garnish with chopped fresh herbs before serving. Enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('New Potato Lentil Salad', 'Healthy'),
('New Potato Lentil Salad', 'Salad'),
('New Potato Lentil Salad', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('New Potato Lentil Salad', 'Lunch'),
('New Potato Lentil Salad', 'Dinner');

-- Ham & Potato Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Ham & Potato Soup', 'Cooking', 2, 'Ham & Potato Soup is a comforting and hearty dish that\'s perfect for chilly days. Made with tender potatoes, smoky ham, and flavorful herbs, this soup is sure to warm you up from the inside out. Serve with crusty bread for a satisfying meal.', 'For extra flavor, use homemade chicken or vegetable broth instead of store-bought.', 'Feel free to add other vegetables like carrots, celery, or peas for added nutrition.', 'Garnish each bowl with a dollop of sour cream or a sprinkle of shredded cheese for extra richness.', 15.0, 40.0, 30.0, 'Egypt', 'http://fakephotolink.com/ham_potato_soup.jpg', 'Ham & Potato Soup served in a bowl', 15, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Ham & Potato Soup', 'Pot', 1),
('Ham & Potato Soup', 'Knife', 1),
('Ham & Potato Soup', 'Cutting Board', 2),
('Ham & Potato Soup', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Ham', 145.0, 0, 'Meat and Meat Products', 'cup'),
('Potatoes', 163.0, 0, 'Various Plant-based Foods', 'unit'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Chicken Broth', 15.0, 0, 'Others', 'cup'),
('Milk', 103.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Flour', 455.0, 0, 'Cereals and Cereal Products', 'tbsp'),
('Butter', 102.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Ham & Potato Soup', 'Ham', 1, 'cups'),
('Ham & Potato Soup', 'Potatoes', 2, NULL),
('Ham & Potato Soup', 'Onion', 1, NULL),
('Ham & Potato Soup', 'Celery', 1, NULL),
('Ham & Potato Soup', 'Carrots', 2, NULL),
('Ham & Potato Soup', 'Garlic', 2, 'cloves'),
('Ham & Potato Soup', 'Chicken Broth', 4, 'cups'),
('Ham & Potato Soup', 'Milk', 1, 'cups'),
('Ham & Potato Soup', 'Flour', 2, NULL),
('Ham & Potato Soup', 'Butter', 1, NULL),
('Ham & Potato Soup', 'Salt', NULL, 'to taste'),
('Ham & Potato Soup', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Ham & Potato Soup', 'Ham');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Ham & Potato Soup', 'In a large pot, melt butter over medium heat. Add diced onion, celery, carrots, and minced garlic. Sauté until vegetables are tender.', 1),
('Ham & Potato Soup', 'Stir in flour and cook for 1-2 minutes to make a roux.', 2),
('Ham & Potato Soup', 'Gradually whisk in chicken broth, stirring constantly to prevent lumps.', 3),
('Ham & Potato Soup', 'Add diced potatoes and bring the soup to a boil. Reduce heat and simmer until potatoes are tender, about 15-20 minutes.', 4),
('Ham & Potato Soup', 'Stir in diced ham and milk. Cook for an additional 5-10 minutes, until heated through.', 5),
('Ham & Potato Soup', 'Season with salt and black pepper to taste.', 6),
('Ham & Potato Soup', 'Serve hot and enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Ham & Potato Soup', 'Comfort Food'),
('Ham & Potato Soup', 'Soup');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Ham & Potato Soup', 'Lunch'),
('Ham & Potato Soup', 'Dinner');

-- Lemon Dill Potatoes
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lemon Dill Potatoes', 'Cooking', 1, 'Lemon Dill Potatoes are a bright and flavorful side dish that pairs perfectly with grilled meats or fish. Baby potatoes are roasted until tender and tossed with a tangy lemon dill dressing. This dish is simple to make but adds a burst of freshness to any meal.', 'For extra crispiness, roast the potatoes at a higher temperature for the last 5-10 minutes of cooking.', 'Feel free to substitute dried dill if you don\'t have fresh dill on hand.', 'Serve garnished with additional chopped fresh dill and lemon wedges for presentation.', 10.0, 30.0, 20.0, 'Australia', 'http://fakephotolink.com/lemon_dill_potatoes.jpg', 'Lemon Dill Potatoes served on a plate', 10, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lemon Dill Potatoes', 'Baking Sheet', 1),
('Lemon Dill Potatoes', 'Mixing Bowl', 1),
('Lemon Dill Potatoes', 'Whisk', 1),
('Lemon Dill Potatoes', 'Knife', 1),
('Lemon Dill Potatoes', 'Cutting Board', 2),
('Lemon Dill Potatoes', 'Zester', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Baby Potatoes', 77.0, 0, 'Various Plant-based Foods', 'unit'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Lemon Juice', 4.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Lemon Zest', 2.0, 0, 'Various Plant-based Foods', 'tsp'),
('Fresh Dill', 2.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lemon Dill Potatoes', 'Baby Potatoes', 1.5, NULL),
('Lemon Dill Potatoes', 'Olive Oil', 2, NULL),
('Lemon Dill Potatoes', 'Lemon Juice', 2, NULL),
('Lemon Dill Potatoes', 'Lemon Zest', 1, NULL),
('Lemon Dill Potatoes', 'Fresh Dill', 2, NULL),
('Lemon Dill Potatoes', 'Salt', NULL, 'to taste'),
('Lemon Dill Potatoes', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lemon Dill Potatoes', 'Baby Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lemon Dill Potatoes', 'Preheat the oven to 400°F (200°C).', 1),
('Lemon Dill Potatoes', 'Cut the baby potatoes in half and place them on a baking sheet.', 2),
('Lemon Dill Potatoes', 'In a mixing bowl, whisk together olive oil, lemon juice, lemon zest, chopped fresh dill, salt, and black pepper.', 3),
('Lemon Dill Potatoes', 'Pour the dressing over the potatoes and toss until evenly coated.', 4),
('Lemon Dill Potatoes', 'Roast in the preheated oven for 20-25 minutes, or until the potatoes are golden and tender.', 5),
('Lemon Dill Potatoes', 'Garnish with additional chopped fresh dill before serving. Enjoy!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lemon Dill Potatoes', 'Side Dish'),
('Lemon Dill Potatoes', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lemon Dill Potatoes', 'Lunch'),
('Lemon Dill Potatoes', 'Dinner');

-- BBQ Lentils
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('BBQ Lentils', 'Cooking', 2, 'BBQ Lentils are a tasty and satisfying vegetarian dish that\'s perfect for weeknight dinners. Lentils are simmered in a smoky barbecue sauce until tender and flavorful. Serve over rice or with crusty bread for a complete meal.', 'For extra heat, add a pinch of cayenne pepper or a dash of hot sauce to the lentils.', 'Feel free to customize the vegetables in this dish based on what you have on hand.', 'Top with a dollop of Greek yogurt or sour cream for a creamy contrast to the smoky lentils.', 10.0, 30.0, 20.0, 'Saudi Arabia', 'http://fakephotolink.com/bbq_lentils.jpg', 'BBQ Lentils served in a bowl', 10, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('BBQ Lentils', 'Pot', 1),
('BBQ Lentils', 'Skillet', 1),
('BBQ Lentils', 'Knife', 1),
('BBQ Lentils', 'Cutting Board', 1),
('BBQ Lentils', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Barbecue Sauce', 29.0, 0, 'Others', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Vegetable Oil', 124.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('BBQ Lentils', 'Lentils', 1, 'cups'),
('BBQ Lentils', 'Water', 2, 'cups'),
('BBQ Lentils', 'Barbecue Sauce', 0.5, 'cups'),
('BBQ Lentils', 'Onion', 1, NULL),
('BBQ Lentils', 'Garlic', 2, 'cloves'),
('BBQ Lentils', 'Vegetable Oil', 1, NULL),
('BBQ Lentils', 'Salt', NULL, 'to taste'),
('BBQ Lentils', 'Black Pepper', NULL, 'to taste');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('BBQ Lentils', 'Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('BBQ Lentils', 'Rinse the lentils under cold water and drain.', 1),
('BBQ Lentils', 'In a pot, combine the lentils, water, diced onion, minced garlic, vegetable oil, salt, and black pepper.', 2),
('BBQ Lentils', 'Bring to a boil, then reduce heat and simmer for 15-20 minutes, or until lentils are tender and most of the liquid is absorbed.', 3),
('BBQ Lentils', 'Stir in barbecue sauce and cook for an additional 5 minutes to heat through and allow flavors to blend.', 4),
('BBQ Lentils', 'Serve hot over rice or with crusty bread. Enjoy!', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('BBQ Lentils', 'Vegetarian'),
('BBQ Lentils', 'Main Course'),
('BBQ Lentils', 'Easy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('BBQ Lentils', 'Lunch'),
('BBQ Lentils', 'Dinner');

-- Healthy Buckwheat Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Healthy Buckwheat Soup', 'Cooking', 2, 'Healthy Buckwheat Soup is a nutritious and comforting dish that\'s perfect for chilly days. Loaded with vegetables, protein-rich buckwheat, and fragrant herbs, this soup is both satisfying and delicious. Serve with a slice of crusty bread for a complete meal.', 'Feel free to add other vegetables like carrots, celery, or spinach to the soup.', 'For extra flavor, use homemade vegetable or chicken broth instead of store-bought.', 'Garnish each bowl with a drizzle of olive oil and a sprinkle of fresh herbs for added freshness.', 15.0, 40.0, 30.0, 'Russia', 'http://fakephotolink.com/healthy_buckwheat_soup.jpg', 'Healthy Buckwheat Soup served in a bowl', 15, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Healthy Buckwheat Soup', 'Pot', 1),
('Healthy Buckwheat Soup', 'Knife', 1),
('Healthy Buckwheat Soup', 'Cutting Board', 1),
('Healthy Buckwheat Soup', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Buckwheat Groats', 155.0, 0, 'Cereals and Cereal Products', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Vegetable Broth', 15.0, 0, 'Others', 'cup'),
('Bay Leaf', 2.0, 0, 'Herbs and Essential Oils', 'unit'),
('Thyme', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 2.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Healthy Buckwheat Soup', 'Buckwheat Groats', 1, 'cups'),
('Healthy Buckwheat Soup', 'Water', 4, 'cups'),
('Healthy Buckwheat Soup', 'Carrots', 2, NULL),
('Healthy Buckwheat Soup', 'Celery', 2, NULL),
('Healthy Buckwheat Soup', 'Onion', 1, NULL),
('Healthy Buckwheat Soup', 'Garlic', 2, 'cloves'),
('Healthy Buckwheat Soup', 'Vegetable Broth', 4, 'cups'),
('Healthy Buckwheat Soup', 'Bay Leaf', 2, NULL),
('Healthy Buckwheat Soup', 'Thyme', 1, NULL),
('Healthy Buckwheat Soup', 'Salt', NULL, 'to taste'),
('Healthy Buckwheat Soup', 'Black Pepper', NULL, 'to taste'),
('Healthy Buckwheat Soup', 'Fresh Herbs', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Healthy Buckwheat Soup', 'Buckwheat Groats');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Healthy Buckwheat Soup', 'In a large pot, heat some olive oil over medium heat. Add diced onion, carrots, celery, and minced garlic. Sauté until vegetables are tender.', 1),
('Healthy Buckwheat Soup', 'Add buckwheat groats, water, vegetable broth, bay leaves, thyme, salt, and black pepper to the pot. Bring to a boil, then reduce heat and simmer for 15-20 minutes, or until buckwheat is tender.', 2),
('Healthy Buckwheat Soup', 'Remove bay leaves from the soup. Adjust seasoning with more salt and pepper if needed.', 3),
('Healthy Buckwheat Soup', 'Serve hot, garnished with fresh herbs. Enjoy!', 4);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Healthy Buckwheat Soup', 'Healthy'),
('Healthy Buckwheat Soup', 'Soup'),
('Healthy Buckwheat Soup', 'Vegetarian');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Healthy Buckwheat Soup', 'Lunch'),
('Healthy Buckwheat Soup', 'Dinner');

-- Buckwheat Chicken Pilaf
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Buckwheat Chicken Pilaf', 'Cooking', 3, 'Buckwheat Chicken Pilaf is a wholesome and flavorful one-pot meal that\'s perfect for busy weeknights. Tender chicken, earthy buckwheat, and aromatic spices come together in this comforting dish. Serve with a side of yogurt or a fresh salad for a complete meal.', 'You can use boneless chicken thighs or breasts for this recipe, just adjust the cooking time accordingly.', 'Feel free to add your favorite vegetables like peas, carrots, or bell peppers for added nutrition.', 'Garnish with chopped fresh herbs like parsley or cilantro before serving for extra freshness.', 15.0, 40.0, 30.0, 'Turkey', 'http://fakephotolink.com/buckwheat_chicken_pilaf.jpg', 'Buckwheat Chicken Pilaf served in a bowl', 15, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Buckwheat Chicken Pilaf', 'Knife', 1),
('Buckwheat Chicken Pilaf', 'Cutting Board', 1),
('Buckwheat Chicken Pilaf', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Thighs', 209.0, 0, 'Meat and Meat Products', 'unit'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Buckwheat Groats', 155.0, 0, 'Cereals and Cereal Products', 'cup'),
('Chicken Broth', 15.0, 0, 'Others', 'cup'),
('Bay Leaf', 2.0, 0, 'Herbs and Essential Oils', 'unit'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 2.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Buckwheat Chicken Pilaf', 'Chicken Thighs', 4, NULL),
('Buckwheat Chicken Pilaf', 'Onion', 1, NULL),
('Buckwheat Chicken Pilaf', 'Carrots', 2, NULL),
('Buckwheat Chicken Pilaf', 'Garlic', 2, 'cloves'),
('Buckwheat Chicken Pilaf', 'Buckwheat Groats', 1, 'cups'),
('Buckwheat Chicken Pilaf', 'Chicken Broth', 2, 'cups'),
('Buckwheat Chicken Pilaf', 'Bay Leaf', 1, NULL),
('Buckwheat Chicken Pilaf', 'Salt', NULL, 'to taste'),
('Buckwheat Chicken Pilaf', 'Black Pepper', NULL, 'to taste'),
('Buckwheat Chicken Pilaf', 'Fresh Herbs', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Buckwheat Chicken Pilaf', 'Chicken Thighs');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Buckwheat Chicken Pilaf', 'Preheat the oven to 350°F (175°C).', 1),
('Buckwheat Chicken Pilaf', 'Chop onion, carrots, and garlic.', 2),
('Buckwheat Chicken Pilaf', 'Heat oil in a Dutch oven over medium heat. Add chicken thighs and cook until browned on both sides. Remove from the pot and set aside.', 3),
('Buckwheat Chicken Pilaf', 'In the same pot, add a bit more oil if needed. Sauté onion, carrots, and garlic until softened.', 4),
('Buckwheat Chicken Pilaf', 'Add buckwheat groats to the pot and toast for 2-3 minutes, stirring frequently.', 5),
('Buckwheat Chicken Pilaf', 'Return the chicken thighs to the pot. Add chicken broth, bay leaf, salt, and black pepper.', 6),
('Buckwheat Chicken Pilaf', 'Cover the pot and transfer to the preheated oven. Bake for 25-30 minutes, or until the chicken is cooked through and the buckwheat is tender.', 7),
('Buckwheat Chicken Pilaf', 'Garnish with chopped fresh herbs before serving. Enjoy!', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Buckwheat Chicken Pilaf', 'Main Course'),
('Buckwheat Chicken Pilaf', 'One-Pot Meal'),
('Buckwheat Chicken Pilaf', 'Comfort Food');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Buckwheat Chicken Pilaf', 'Lunch'),
('Buckwheat Chicken Pilaf', 'Dinner');

-- Vegetable Noodle Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Vegetable Noodle Soup', 'Cooking', 2, 'Vegetable Noodle Soup is a light and comforting dish that\'s perfect for any time of year. Loaded with colorful vegetables, tender noodles, and aromatic herbs, this soup is both nutritious and delicious. Serve as a starter or a light meal on its own.', 'Feel free to customize the vegetables based on what you have on hand.', 'For added protein, you can add cooked chicken, tofu, or beans to the soup.', 'To make this soup gluten-free, use gluten-free noodles or rice instead of wheat noodles.', 15.0, 30.0, 20.0, 'Japan', 'http://fakephotolink.com/vegetable_noodle_soup.jpg', 'Vegetable Noodle Soup served in a bowl', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Vegetable Noodle Soup', 'Pot', 1),
('Vegetable Noodle Soup', 'Knife', 1),
('Vegetable Noodle Soup', 'Cutting Board', 1),
('Vegetable Noodle Soup', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Vegetable Broth', 15.0, 0, 'Others', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Noodles', 221.0, 0, 'Cereals and Cereal Products', 'cup'),
('Bay Leaf', 2.0, 0, 'Herbs and Essential Oils', 'unit'),
('Thyme', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 2.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Vegetable Noodle Soup', 'Vegetable Broth', 4, 'cups'),
('Vegetable Noodle Soup', 'Water', 2, 'cups'),
('Vegetable Noodle Soup', 'Carrots', 2, NULL),
('Vegetable Noodle Soup', 'Celery', 2, NULL),
('Vegetable Noodle Soup', 'Onion', 1, NULL),
('Vegetable Noodle Soup', 'Garlic', 2, 'cloves'),
('Vegetable Noodle Soup', 'Noodles', 2, 'cups'),
('Vegetable Noodle Soup', 'Bay Leaf', 1, NULL),
('Vegetable Noodle Soup', 'Thyme', 1, NULL),
('Vegetable Noodle Soup', 'Salt', NULL, 'to taste'),
('Vegetable Noodle Soup', 'Black Pepper', NULL, 'to taste'),
('Vegetable Noodle Soup', 'Fresh Herbs', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Vegetable Noodle Soup', 'Noodles');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Vegetable Noodle Soup', 'In a large pot, heat vegetable broth and water over medium heat.', 1),
('Vegetable Noodle Soup', 'Chop onion, carrots, celery, and garlic. Add them to the pot along with bay leaf, thyme, salt, and black pepper.', 2),
('Vegetable Noodle Soup', 'Bring the soup to a boil, then reduce heat and simmer for 10 minutes, or until vegetables are tender.', 3),
('Vegetable Noodle Soup', 'Add noodles to the pot and cook according to package instructions until al dente.', 4),
('Vegetable Noodle Soup', 'Remove bay leaf from the soup. Adjust seasoning with more salt and pepper if needed.', 5),
('Vegetable Noodle Soup', 'Serve hot, garnished with fresh herbs. Enjoy!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Vegetable Noodle Soup', 'Soup'),
('Vegetable Noodle Soup', 'Vegetarian'),
('Vegetable Noodle Soup', 'Healthy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Vegetable Noodle Soup', 'Lunch'),
('Vegetable Noodle Soup', 'Dinner');

-- Bacon and Honey Potato Salad
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Bacon and Honey Potato Salad', 'Cooking', 2, 'Bacon and Honey Potato Salad is a flavorful twist on the classic potato salad. Tender potatoes are mixed with crispy bacon, sweet honey, and tangy mustard for a delicious side dish that\'s perfect for barbecues, picnics, or any occasion.', 'For a lighter version, you can use turkey bacon instead of regular bacon.', 'Feel free to add chopped hard-boiled eggs for extra protein.', 'Make sure to let the salad chill in the fridge for at least an hour before serving to allow the flavors to meld together.', 15.0, 30.0, 20.0, 'Poland', 'http://fakephotolink.com/bacon_honey_potato_salad.jpg', 'Bacon and Honey Potato Salad served in a bowl', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Bacon and Honey Potato Salad', 'Pot', 1),
('Bacon and Honey Potato Salad', 'Knife',1),
('Bacon and Honey Potato Salad', 'Cutting Board', 1),
('Bacon and Honey Potato Salad', 'Mixing Bowl', 1),
('Bacon and Honey Potato Salad', 'Whisk', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Potatoes', 163.0, 0, 'Various Plant-based Foods', 'unit'),
('Bacon', 145.0, 0, 'Meat and Meat Products', 'cup'),
('Honey', 304.0, 0, 'Sweeteners', 'tbsp'),
('Mustard', 66.0, 0, 'Others', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Green Onions', 32.0, 0, 'Various Plant-based Foods', 'unit');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Bacon and Honey Potato Salad', 'Potatoes', 2, NULL),
('Bacon and Honey Potato Salad', 'Bacon', 6, 'slices'),
('Bacon and Honey Potato Salad', 'Honey', 2, NULL),
('Bacon and Honey Potato Salad', 'Mustard', 2, NULL),
('Bacon and Honey Potato Salad', 'Salt', NULL, 'to taste'),
('Bacon and Honey Potato Salad', 'Black Pepper', NULL, 'to taste'),
('Bacon and Honey Potato Salad', 'Green Onions', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Bacon and Honey Potato Salad', 'Potatoes');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Bacon and Honey Potato Salad', 'Boil the potatoes in salted water until tender, about 15-20 minutes. Drain and let cool slightly.', 1),
('Bacon and Honey Potato Salad', 'Cook bacon until crispy, then chop into small pieces.', 2),
('Bacon and Honey Potato Salad', 'In a mixing bowl, whisk together honey, mustard, salt, and black pepper to make the dressing.', 3),
('Bacon and Honey Potato Salad', 'Cut the cooled potatoes into bite-sized pieces and add them to the bowl with the dressing.', 4),
('Bacon and Honey Potato Salad', 'Add chopped bacon and sliced green onions to the bowl. Gently toss everything together until well combined.', 5),
('Bacon and Honey Potato Salad', 'Chill the salad in the fridge for at least an hour before serving to allow the flavors to meld together.', 6),
('Bacon and Honey Potato Salad', 'Serve cold or at room temperature. Enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Bacon and Honey Potato Salad', 'Side Dish'),
('Bacon and Honey Potato Salad', 'Salad');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Bacon and Honey Potato Salad', 'Lunch'),
('Bacon and Honey Potato Salad', 'Dinner');

-- Pretzel Sticks
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Pretzel Sticks', 'Pastry', 2, 'Pretzel Sticks are a crunchy and addictive snack that\'s perfect for munching on during movie nights or as a party appetizer. These homemade pretzels are easy to make and can be customized with your favorite seasonings.', 'For a sweeter version, brush the pretzel sticks with melted butter and sprinkle with cinnamon sugar.', 'Serve with mustard, cheese sauce, or your favorite dip for dipping.', 'Store any leftover pretzel sticks in an airtight container for up to 3 days.', 15.0, 30.0, 20.0, 'Germany', 'http://fakephotolink.com/pretzel_sticks.jpg', 'Pretzel Sticks served on a plate', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Pretzel Sticks', 'Baking Sheet', 1),
('Pretzel Sticks', 'Pot', 1),
('Pretzel Sticks', 'Mixing Bowl', 1),
('Pretzel Sticks', 'Whisk', 1),
('Pretzel Sticks', 'Slotted Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup'),
('Active Dry Yeast', 23.0, 0, 'Baked Products', 'tsp'),
('Warm Water', 0.0, 0, 'Others', 'cup'),
('Sugar', 49.0, 0, 'Sweeteners', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Baking Soda', 0.0, 0, 'Baked Products', 'tbsp'),
('Water', 0.0, 0, 'Others', 'cup'),
('Coarse Salt', 0.0, 0, 'Others', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Pretzel Sticks', 'All-Purpose Flour', 3, 'cups'),
('Pretzel Sticks', 'Active Dry Yeast', 2, NULL),
('Pretzel Sticks', 'Warm Water', 1, 'cups'),
('Pretzel Sticks', 'Sugar', 1, NULL),
('Pretzel Sticks', 'Salt', 1, NULL),
('Pretzel Sticks', 'Baking Soda', 0.25, 'cups'),
('Pretzel Sticks', 'Water', 9, 'cups'),
('Pretzel Sticks', 'Coarse Salt', NULL, 'to taste');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Pretzel Sticks', 'In a mixing bowl, combine warm water, sugar, and yeast. Let it sit for 5-10 minutes until frothy.', 1),
('Pretzel Sticks', 'Add flour and salt to the yeast mixture, and knead until a smooth dough forms.', 2),
('Pretzel Sticks', 'Cover the dough and let it rise in a warm place for about 1 hour, or until doubled in size.', 3),
('Pretzel Sticks', 'Preheat oven to 450°F (230°C) and line a baking sheet with parchment paper.', 4),
('Pretzel Sticks', 'In a large pot, bring 9 cups of water to a boil. Add baking soda to the boiling water.', 5),
('Pretzel Sticks', 'Divide the dough into small pieces and roll each piece into a long rope. Cut the ropes into bite-sized pieces.', 6),
('Pretzel Sticks', 'Drop the dough pieces into the boiling water in batches, cooking for about 30 seconds. Remove with a slotted spoon and place them on the prepared baking sheet.', 7),
('Pretzel Sticks', 'Sprinkle the pretzel sticks with coarse salt.', 8),
('Pretzel Sticks', 'Bake for 10-12 minutes, or until golden brown and crispy.', 9),
('Pretzel Sticks', 'Let cool slightly before serving. Enjoy!', 10);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Pretzel Sticks', 'Snack'),
('Pretzel Sticks', 'Appetizer'),
('Pretzel Sticks', 'Baked');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Pretzel Sticks', 'Snack');

-- Golden French Lentil Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Golden French Lentil Soup', 'Cooking', 2, 'Golden French Lentil Soup is a hearty and flavorful dish that\'s perfect for chilly days. Made with nutritious lentils, aromatic spices, and a hint of lemon, this soup is both comforting and satisfying. Serve with crusty bread for a complete meal.', 'Feel free to add other vegetables like carrots, celery, or spinach to the soup.', 'For extra flavor, use homemade vegetable or chicken broth instead of store-bought.', 'Garnish each bowl with a drizzle of olive oil and a sprinkle of fresh herbs for added freshness.', 15.0, 40.0, 30.0, 'France', 'http://fakephotolink.com/golden_french_lentil_soup.jpg', 'Golden French Lentil Soup served in a bowl', 15, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Golden French Lentil Soup', 'Pot', 1),
('Golden French Lentil Soup', 'Knife', 1),
('Golden French Lentil Soup', 'Cutting Board',1),
('Golden French Lentil Soup', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('French Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Vegetable Broth', 15.0, 0, 'Others', 'cup'),
('Bay Leaf', 2.0, 0, 'Herbs and Essential Oils', 'unit'),
('Thyme', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Lemon', 17.0, 0, 'Various Plant-based Foods', 'unit'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Herbs', 2.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Golden French Lentil Soup', 'French Lentils', 1, 'cups'),
('Golden French Lentil Soup', 'Water', 4, 'cups'),
('Golden French Lentil Soup', 'Carrots', 2, NULL),
('Golden French Lentil Soup', 'Celery', 2, NULL),
('Golden French Lentil Soup', 'Onion', 1, NULL),
('Golden French Lentil Soup', 'Garlic', 2, 'cloves'),
('Golden French Lentil Soup', 'Vegetable Broth', 4, 'cups'),
('Golden French Lentil Soup', 'Bay Leaf', 2, NULL),
('Golden French Lentil Soup', 'Thyme', 1,NULL),
('Golden French Lentil Soup', 'Lemon', 1, NULL),
('Golden French Lentil Soup', 'Salt', NULL, 'to taste'),
('Golden French Lentil Soup', 'Black Pepper', NULL, 'to taste'),
('Golden French Lentil Soup', 'Fresh Herbs', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Golden French Lentil Soup', 'French Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Golden French Lentil Soup', 'In a large pot, heat some olive oil over medium heat. Add diced onion, carrots, celery, and minced garlic. Sauté until vegetables are tender.', 1),
('Golden French Lentil Soup', 'Add French lentils, water, vegetable broth, bay leaves, thyme, salt, and black pepper to the pot. Bring to a boil, then reduce heat and simmer for 20-25 minutes, or until lentils are tender.', 2),
('Golden French Lentil Soup', 'Zest the lemon and add it to the soup. Cut the lemon in half and squeeze the juice into the pot.', 3),
('Golden French Lentil Soup', 'Remove bay leaves from the soup. Adjust seasoning with more salt and pepper if needed.', 4),
('Golden French Lentil Soup', 'Serve hot, garnished with fresh herbs. Enjoy!', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Golden French Lentil Soup', 'Soup'),
('Golden French Lentil Soup', 'Vegetarian'),
('Golden French Lentil Soup', 'Healthy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Golden French Lentil Soup', 'Lunch'),
('Golden French Lentil Soup', 'Dinner');

-- Lentil Shepherd's Pie
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lentil Shepherd''s Pie', 'Cooking', 3, 'Lentil Shepherd''s Pie is a hearty and comforting dish that\'s perfect for vegetarians or anyone looking for a meatless meal option. This version replaces the traditional lamb with protein-rich lentils and tops it with creamy mashed potatoes. It\'s a delicious and nutritious dinner that the whole family will love.', 'Feel free to add other vegetables like peas, carrots, or corn to the lentil mixture for extra flavor and nutrition.', 'For a vegan version, use plant-based milk and vegan butter in the mashed potatoes.', 'Let the shepherd''s pie rest for 10-15 minutes after baking to allow it to set before serving.', 20.0, 60.0, 40.0, 'Egypt', 'http://fakephotolink.com/lentil_shepherds_pie.jpg', 'Lentil Shepherd''s Pie served in a dish', 20, 60);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lentil Shepherd''s Pie', 'Pot', 2),
('Lentil Shepherd''s Pie', 'Baking Dish', 1),
('Lentil Shepherd''s Pie', 'Mixing Bowl', 1),
('Lentil Shepherd''s Pie', 'Knife', 1),
('Lentil Shepherd''s Pie', 'Cutting Board', 1),
('Lentil Shepherd''s Pie', 'Potato Masher', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Carrots', 25.0, 0, 'Various Plant-based Foods', 'unit'),
('Celery', 6.0, 0, 'Various Plant-based Foods', 'stalk'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Vegetable Broth', 15.0, 0, 'Others', 'cup'),
('Tomato Paste', 29.0, 0, 'Others', 'tbsp'),
('Worcestershire Sauce', 3.0, 0, 'Others', 'tbsp'),
('Frozen Peas', 134.0, 0, 'Various Plant-based Foods', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Potatoes', 163.0, 0, 'Various Plant-based Foods', 'unit'),
('Milk', 50.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lentil Shepherd''s Pie', 'Lentils', 1, 'cups'),
('Lentil Shepherd''s Pie', 'Water', 2, 'cups'),
('Lentil Shepherd''s Pie', 'Onion', 1, NULL),
('Lentil Shepherd''s Pie', 'Carrots', 2, NULL),
('Lentil Shepherd''s Pie', 'Celery', 2, NULL),
('Lentil Shepherd''s Pie', 'Garlic', 2, 'cloves'),
('Lentil Shepherd''s Pie', 'Vegetable Broth', 1, 'cups'),
('Lentil Shepherd''s Pie', 'Tomato Paste', 2, NULL),
('Lentil Shepherd''s Pie', 'Worcestershire Sauce', 1, NULL),
('Lentil Shepherd''s Pie', 'Frozen Peas', 0.5, 'cups'),
('Lentil Shepherd''s Pie', 'Salt', NULL, 'to taste'),
('Lentil Shepherd''s Pie', 'Black Pepper', NULL, 'to taste'),
('Lentil Shepherd''s Pie', 'Potatoes', 4, NULL),
('Lentil Shepherd''s Pie', 'Milk', 0.5, 'cups'),
('Lentil Shepherd''s Pie', 'Butter', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lentil Shepherd''s Pie', 'Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lentil Shepherd''s Pie', 'Preheat the oven to 375°F (190°C).', 1),
('Lentil Shepherd''s Pie', 'In a large pot, combine lentils and water. Bring to a boil, then reduce heat and simmer for 15-20 minutes, or until lentils are tender. Drain and set aside.', 2),
('Lentil Shepherd''s Pie', 'In the same pot, heat some olive oil over medium heat. Add diced onion, carrots, celery, and minced garlic. Sauté until vegetables are tender.', 3),
('Lentil Shepherd''s Pie', 'Add vegetable broth, tomato paste, Worcestershire sauce, cooked lentils, frozen peas, salt, and black pepper to the pot. Stir to combine and simmer for 5-10 minutes.', 4),
('Lentil Shepherd''s Pie', 'Transfer the lentil mixture to a baking dish and spread it out evenly.', 5),
('Lentil Shepherd''s Pie', 'Meanwhile, peel and chop the potatoes. Boil them in salted water until tender, about 15 minutes. Drain.', 6),
('Lentil Shepherd''s Pie', 'Mash the potatoes with milk, butter, salt, and black pepper until smooth and creamy.', 7),
('Lentil Shepherd''s Pie', 'Spread the mashed potatoes over the lentil mixture in the baking dish.', 8),
('Lentil Shepherd''s Pie', 'Bake in the preheated oven for 25-30 minutes, or until the top is golden brown.', 9),
('Lentil Shepherd''s Pie', 'Let it cool for a few minutes before serving. Enjoy!', 10);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lentil Shepherd''s Pie', 'Main Course'),
('Lentil Shepherd''s Pie', 'Vegetarian'),
('Lentil Shepherd''s Pie', 'Comfort Food');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lentil Shepherd''s Pie', 'Dinner');

-- Honey Lime Chicken
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Honey Lime Chicken', 'Cooking', 2, 'Honey Lime Chicken is a sweet and tangy dish that\'s bursting with flavor. Tender chicken breasts are marinated in a mixture of honey, lime juice, garlic, and spices, then grilled or baked to perfection. Serve with rice and steamed vegetables for a complete meal.', 'For extra flavor, marinate the chicken for at least 30 minutes, or up to overnight.', 'Make sure not to overcook the chicken breasts to keep them juicy and tender.', 'You can use chicken thighs or drumsticks instead of chicken breasts if you prefer.', 10.0, 20.0, 30.0, 'Poland', 'http://fakephotolink.com/honey_lime_chicken.jpg', 'Honey Lime Chicken served with rice and vegetables', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Honey Lime Chicken', 'Grill', 1),
('Honey Lime Chicken', 'Mixing Bowl', 1),
('Honey Lime Chicken', 'Knife', 1),
('Honey Lime Chicken', 'Cutting Board', 1),
('Honey Lime Chicken', 'Measuring Spoons', 1),
('Honey Lime Chicken', 'Measuring Cups', 1),
('Honey Lime Chicken', 'Pastry Brush', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Chicken Breasts', 165.0, 0, 'Meat and Meat Products', 'unit'),
('Honey', 304.0, 0, 'Sweeteners', 'tbsp'),
('Lime Juice', 8.0, 0, 'Various Plant-based Foods', 'tbsp'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Honey Lime Chicken', 'Chicken Breasts', 4, NULL),
('Honey Lime Chicken', 'Honey', 0.25, 'cups'),
('Honey Lime Chicken', 'Lime Juice', 0.25, 'cups'),
('Honey Lime Chicken', 'Garlic', 2, 'cloves'),
('Honey Lime Chicken', 'Salt', NULL, 'to taste'),
('Honey Lime Chicken', 'Black Pepper', NULL, 'to taste'),
('Honey Lime Chicken', 'Olive Oil', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Honey Lime Chicken', 'Chicken Breasts');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Honey Lime Chicken', 'In a mixing bowl, whisk together honey, lime juice, minced garlic, salt, black pepper, and olive oil to make the marinade.', 1),
('Honey Lime Chicken', 'Place the chicken breasts in a resealable plastic bag or shallow dish. Pour the marinade over the chicken, making sure it\'s evenly coated. Marinate in the refrigerator for at least 30 minutes, or up to overnight.', 2),
('Honey Lime Chicken', 'Preheat the grill or oven to medium-high heat.', 3),
('Honey Lime Chicken', 'Remove the chicken from the marinade and discard the excess marinade.', 4),
('Honey Lime Chicken', 'Grill the chicken for 6-7 minutes per side, or until cooked through and juices run clear, or bake in the preheated oven for 25-30 minutes.', 5),
('Honey Lime Chicken', 'Baste the chicken with any remaining marinade while grilling or baking.', 6),
('Honey Lime Chicken', 'Let the chicken rest for a few minutes before serving. Enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Honey Lime Chicken', 'Main Course'),
('Honey Lime Chicken', 'Grilled'),
('Honey Lime Chicken', 'Baked');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Honey Lime Chicken', 'Lunch'),
('Honey Lime Chicken', 'Dinner');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Naan', 'Cooking', 3, 'Naan is a traditional Indian flatbread that is soft, fluffy, and perfect for scooping up curries or as a side dish. This recipe produces delicious homemade naan with just a few simple ingredients.', 'Make sure to knead the dough until it is smooth and elastic for the best texture.', 'Cook the naan in a hot skillet or grill for that authentic charred flavor.', 'Brush with melted butter before serving for extra richness and flavor.', 5.0, 30.0, 20.0, 'India', 'http://fakephotolink.com/naan.jpg', 'Homemade Naan Bread', 15, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Naan', 'Mixing Bowl', 1),
('Naan', 'Rolling Pin', 1),
('Naan', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Yeast', 7.0, 0, 'Others', 'gr'),
('Sugar', 387.0, 1, 'Sweeteners', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Milk', 42.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Yogurt', 59.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Naan', 'All-Purpose Flour', 400, NULL),
('Naan', 'Yeast', 7,NULL),
('Naan', 'Sugar', 10, NULL),
('Naan', 'Salt', 5, NULL),
('Naan', 'Milk', 120, NULL),
('Naan', 'Yogurt', 60, NULL),
('Naan', 'Butter', 30, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Naan', 'In a mixing bowl, combine flour, yeast, sugar, and salt.', 1),
('Naan', 'Add warm milk and yogurt to the bowl. Mix until a soft dough forms.', 2),
('Naan', 'Knead the dough on a floured surface until smooth and elastic.', 3),
('Naan', 'Place the dough in a greased bowl, cover, and let it rise until doubled in size.', 4),
('Naan', 'Divide the dough into equal portions and roll each portion into a ball.', 5),
('Naan', 'Roll out each ball into a thin oval shape using a rolling pin.', 6),
('Naan', 'Heat a skillet over medium-high heat. Cook each naan for a few minutes on each side until puffed and lightly browned.', 7),
('Naan', 'Brush with melted butter before serving.', 8);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Naan', 'Indian'),
('Naan', 'Bread'),
('Naan', 'Side Dish');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Naan', 'Side Dish');

-- Lemon Poppy Seed Scones
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lemon Poppy Seed Scones', 'Pastry', 2, 'These lemon poppy seed scones are light, tender, and bursting with fresh lemon flavor. They make a delightful breakfast or afternoon treat.', 'Use cold butter and work quickly to keep the dough cold and crumbly.', 'Don\'t overmix the dough to avoid tough scones. Mix until just combined.', 'Drizzle with a lemon glaze for extra sweetness and tanginess.', 4.0, 20.0, 15.0, 'United States', 'http://fakephotolink.com/lemon_poppy_seed_scones.jpg', 'Lemon Poppy Seed Scones with a lemon glaze', 15, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lemon Poppy Seed Scones', 'Mixing Bowl', 1),
('Lemon Poppy Seed Scones', 'Baking Sheet', 1),
('Lemon Poppy Seed Scones', 'Rolling Pin', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Sugar', 387.0, 1, 'Sweeteners', 'gr'),
('Baking Powder', 0.0, 0, 'Others', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Lemon Zest', 29.0, 0, 'Herbs and Essential Oils', 'gr'),
('Poppy Seeds', 525.0, 1, 'Herbs and Essential Oils', 'gr'),
('Heavy Cream', 345.0, 0, 'Milk, Eggs, and Their Products', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lemon Poppy Seed Scones', 'All-Purpose Flour', 250,NULL),
('Lemon Poppy Seed Scones', 'Sugar', 50, NULL),
('Lemon Poppy Seed Scones', 'Baking Powder', 7,NULL),
('Lemon Poppy Seed Scones', 'Salt', 2, NULL),
('Lemon Poppy Seed Scones', 'Butter', 100, NULL),
('Lemon Poppy Seed Scones', 'Lemon Zest', 10, NULL),
('Lemon Poppy Seed Scones', 'Poppy Seeds', 15, NULL),
('Lemon Poppy Seed Scones', 'Heavy Cream', 120, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lemon Poppy Seed Scones', 'Lemon Zest');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lemon Poppy Seed Scones', 'Preheat the oven to 400°F (200°C). Line a baking sheet with parchment paper.', 1),
('Lemon Poppy Seed Scones', 'In a mixing bowl, combine flour, sugar, baking powder, salt, lemon zest, and poppy seeds.', 2),
('Lemon Poppy Seed Scones', 'Cut in cold butter until the mixture resembles coarse crumbs.', 3),
('Lemon Poppy Seed Scones', 'Add heavy cream and mix until just combined.', 4),
('Lemon Poppy Seed Scones', 'Turn the dough out onto a floured surface and gently knead a few times until it comes together.', 5),
('Lemon Poppy Seed Scones', 'Pat the dough into a circle about 1-inch thick.', 6),
('Lemon Poppy Seed Scones', 'Cut the dough into wedges and transfer to the prepared baking sheet.', 7),
('Lemon Poppy Seed Scones', 'Bake for 15-20 minutes or until golden brown.', 8),
('Lemon Poppy Seed Scones', 'Allow to cool slightly before serving.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lemon Poppy Seed Scones', 'Breakfast'),
('Lemon Poppy Seed Scones', 'Brunch'),
('Lemon Poppy Seed Scones', 'Dessert');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Lemon Poppy Seed Scones', 'Breakfast'),
('Lemon Poppy Seed Scones', 'Brunch');

-- Balsamic Dijon Root Vegetables
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Balsamic Dijon Root Vegetables', 'Cooking', 2, 'These balsamic dijon root vegetables are a flavorful and colorful side dish that pairs perfectly with any main course. Roasted to perfection, they are both tender and caramelized.', 'Choose a variety of root vegetables for a colorful presentation.', 'Make sure to toss the vegetables halfway through roasting to ensure even cooking.', 'Drizzle with extra balsamic glaze before serving for added flavor.', 2.0, 35.0, 25.0, 'Turkey', 'http://fakephotolink.com/balsamic_dijon_root_vegetables.jpg', 'Balsamic Dijon Root Vegetables', 10, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Balsamic Dijon Root Vegetables', 'Baking Sheet', 1),
('Balsamic Dijon Root Vegetables', 'Mixing Bowl', 1),
('Balsamic Dijon Root Vegetables', 'Whisk', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Potatoes', 77.0, 0, 'Various Plant-based Foods', 'gr'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'gr'),
('Parsnips', 75.0, 0, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Balsamic Vinegar', 88.0, 0, 'Herbs and Essential Oils', 'ml'),
('Dijon Mustard', 73.0, 0, 'Various Plant-based Foods', 'ml'),
('Honey', 304.0, 0, 'Sweeteners', 'ml'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Fresh Rosemary', 131.0, 0, 'Herbs and Essential Oils', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Balsamic Dijon Root Vegetables', 'Potatoes', 500, NULL),
('Balsamic Dijon Root Vegetables', 'Carrots', 250, NULL),
('Balsamic Dijon Root Vegetables', 'Parsnips', 250, NULL),
('Balsamic Dijon Root Vegetables', 'Olive Oil', 60, NULL),
('Balsamic Dijon Root Vegetables', 'Balsamic Vinegar', 30, NULL),
('Balsamic Dijon Root Vegetables', 'Dijon Mustard', 15,NULL),
('Balsamic Dijon Root Vegetables', 'Honey', 15,NULL),
('Balsamic Dijon Root Vegetables', 'Salt', 3, NULL),
('Balsamic Dijon Root Vegetables', 'Black Pepper', 3, NULL),
('Balsamic Dijon Root Vegetables', 'Fresh Rosemary', 10, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Balsamic Dijon Root Vegetables', 'Preheat the oven to 400°F (200°C).', 1),
('Balsamic Dijon Root Vegetables', 'Peel and chop the potatoes, carrots, and parsnips into bite-sized pieces.', 2),
('Balsamic Dijon Root Vegetables', 'In a mixing bowl, whisk together olive oil, balsamic vinegar, Dijon mustard, honey, salt, and black pepper.', 3),
('Balsamic Dijon Root Vegetables', 'Add the chopped vegetables to the bowl and toss until well coated.', 4),
('Balsamic Dijon Root Vegetables', 'Spread the vegetables in a single layer on a baking sheet.', 5),
('Balsamic Dijon Root Vegetables', 'Roast in the preheated oven for 25-30 minutes, or until tender and caramelized, stirring halfway through cooking.', 6),
('Balsamic Dijon Root Vegetables', 'Sprinkle with fresh rosemary before serving.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Balsamic Dijon Root Vegetables', 'Side Dish'),
('Balsamic Dijon Root Vegetables', 'Vegetarian'),
('Balsamic Dijon Root Vegetables', 'Healthy');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Balsamic Dijon Root Vegetables', 'Side Dish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Balsamic Dijon Root Vegetables', 'Parsnips');

-- Best Baked Chicken Legs
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Best Baked Chicken Legs', 'Cooking', 2, 'These baked chicken legs are crispy on the outside, juicy on the inside, and packed with flavor. They make a simple and delicious dinner that the whole family will love.', 'Marinate the chicken legs for at least 30 minutes for maximum flavor.', 'Place a wire rack on the baking sheet to allow air to circulate around the chicken legs for even cooking.', 'Serve with your favorite dipping sauce or alongside roasted vegetables.', 20.0, 45.0, 35.0, 'Pakistan', 'http://fakephotolink.com/baked_chicken_legs.jpg', 'Best Baked Chicken Legs', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Best Baked Chicken Legs', 'Baking Sheet', 1),
-- ('Best Baked Chicken Legs', 'Wire Rack', 1),
('Best Baked Chicken Legs', 'Mixing Bowl', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Chicken Legs', 209.0, 0, 'Meat and Meat Products', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Garlic Powder', 331.0, 0, 'Others', 'gr'),
('Paprika', 282.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Best Baked Chicken Legs', 'Chicken Legs', 1000, NULL),
('Best Baked Chicken Legs', 'Olive Oil', 30, NULL),
('Best Baked Chicken Legs', 'Salt', 5, NULL),
('Best Baked Chicken Legs', 'Black Pepper', 3, NULL),
('Best Baked Chicken Legs', 'Garlic Powder', 5, NULL),
('Best Baked Chicken Legs', 'Paprika', 5, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Best Baked Chicken Legs', 'Preheat the oven to 425°F (220°C).', 1),
('Best Baked Chicken Legs', 'In a mixing bowl, combine olive oil, salt, pepper, garlic powder, and paprika.', 2),
('Best Baked Chicken Legs', 'Add the chicken legs to the bowl and toss until well coated.', 3),
('Best Baked Chicken Legs', 'Place a wire rack on a baking sheet and arrange the chicken legs on top.', 4),
('Best Baked Chicken Legs', 'Bake for 35-40 minutes, or until the chicken is golden brown and cooked through, flipping halfway through cooking.', 5),
('Best Baked Chicken Legs', 'Let the chicken legs rest for a few minutes before serving.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Best Baked Chicken Legs', 'Main Course'),
('Best Baked Chicken Legs', 'Chicken'),
('Best Baked Chicken Legs', 'Easy');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Best Baked Chicken Legs', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Best Baked Chicken Legs', 'Chicken Legs');

-- Spanish Lentil Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Spanish Lentil Soup', 'Cooking', 2, 'Spanish lentil soup, or "Lentejas", is a hearty and flavorful dish made with lentils, vegetables, and Spanish chorizo. It\'s easy to make and perfect for a cozy meal on a cold day.', 'Soak the lentils for at least 1 hour before cooking to reduce cooking time.', 'Use Spanish chorizo for an authentic flavor, but you can also use other types of sausage.', 'Garnish with fresh parsley and a squeeze of lemon juice before serving for brightness.', 15.0, 45.0, 30.0, 'Spain', 'http://fakephotolink.com/spanish_lentil_soup.jpg', 'Spanish Lentil Soup with chorizo and vegetables', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
-- ('Spanish Lentil Soup', 'Dutch Oven', 1),
('Spanish Lentil Soup', 'Mixing Spoon', 1),
('Spanish Lentil Soup', 'Knife', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Lentils', 353.0, 0, 'Various Plant-based Foods', 'gr'),
('Spanish Chorizo', 455.0, 0, 'Meat and Meat Products', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Onion', 44.0, 0, 'Various Plant-based Foods', ''),
('Carrots', 41.0, 0, 'Various Plant-based Foods', ''),
('Celery', 16.0, 0, 'Various Plant-based Foods', ''),
('Garlic', 149.0, 0, 'Various Plant-based Foods', 'cloves'),
('Tomatoes', 18.0, 0, 'Various Plant-based Foods', ''),
('Bay Leaf', 5.0, 0, 'Herbs and Essential Oils', ''),
('Chicken Broth', 7.0, 0, 'Others', 'ml'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Spanish Lentil Soup', 'Lentils', 250, NULL),
('Spanish Lentil Soup', 'Spanish Chorizo', 150, NULL),
('Spanish Lentil Soup', 'Olive Oil', 30, NULL),
('Spanish Lentil Soup', 'Onion', 1, NULL),
('Spanish Lentil Soup', 'Carrots', 2, NULL),
('Spanish Lentil Soup', 'Celery', 2,NULL),
('Spanish Lentil Soup', 'Garlic', 3, 'cloves'),
('Spanish Lentil Soup', 'Tomatoes', 2, NULL),
('Spanish Lentil Soup', 'Bay Leaf', 2, NULL),
('Spanish Lentil Soup', 'Chicken Broth', 750, NULL),
('Spanish Lentil Soup', 'Salt', 5, NULL),
('Spanish Lentil Soup', 'Black Pepper', 3, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Spanish Lentil Soup', 'Heat olive oil in a Dutch oven over medium heat.', 1),
('Spanish Lentil Soup', 'Add diced onion, carrots, and celery to the pot. Cook until softened.', 2),
('Spanish Lentil Soup', 'Stir in minced garlic and cook until fragrant.', 3),
('Spanish Lentil Soup', 'Add chopped tomatoes, bay leaf, lentils, chicken broth, salt, and black pepper.', 4),
('Spanish Lentil Soup', 'Bring the soup to a boil, then reduce heat and simmer for about 25-30 minutes, or until the lentils are tender.', 5),
('Spanish Lentil Soup', 'While the soup is simmering, slice the chorizo into rounds.', 6),
('Spanish Lentil Soup', 'Add the sliced chorizo to the soup and cook for an additional 10 minutes.', 7),
('Spanish Lentil Soup', 'Taste and adjust seasoning if necessary.', 8),
('Spanish Lentil Soup', 'Serve hot, garnished with fresh parsley if desired.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Spanish Lentil Soup', 'Soup'),
('Spanish Lentil Soup', 'Spanish'),
('Spanish Lentil Soup', 'Comfort Food');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Spanish Lentil Soup', 'Main Course'),
('Spanish Lentil Soup', 'Soup');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Spanish Lentil Soup', 'Chicken Broth');

-- Chocolate Chip Irish Soda Bread
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chocolate Chip Irish Soda Bread', 'Pastry', 2, 'Chocolate chip Irish soda bread is a delicious twist on the traditional Irish soda bread. It\'s quick and easy to make, with no yeast required, and is loaded with chocolate chips for a sweet treat.', 'Be sure not to overmix the dough, or the bread may become tough.', 'Fold the chocolate chips into the dough gently to prevent them from sinking to the bottom.', 'Serve warm with butter and a cup of tea for a cozy snack or breakfast.', 7.0, 40.0, 30.0, 'Ireland', 'http://fakephotolink.com/chocolate_chip_irish_soda_bread.jpg', 'Chocolate Chip Irish Soda Bread', 10, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chocolate Chip Irish Soda Bread', 'Mixing Bowl', 1),
('Chocolate Chip Irish Soda Bread', 'Baking Sheet', 1),
('Chocolate Chip Irish Soda Bread', 'Pastry Cutter', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('All-Purpose Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Sugar', 387.0, 1, 'Sweeteners', 'gr'),
('Baking Soda', 0.0, 0, 'Others', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Buttermilk', 62.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Chocolate Chips', 535.0, 1, 'Products with Added Fats and/or Sugar', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chocolate Chip Irish Soda Bread', 'All-Purpose Flour', 400, NULL),
('Chocolate Chip Irish Soda Bread', 'Sugar', 50, NULL),
('Chocolate Chip Irish Soda Bread', 'Baking Soda', 7, NULL),
('Chocolate Chip Irish Soda Bread', 'Salt', 5, NULL),
('Chocolate Chip Irish Soda Bread', 'Buttermilk', 240, NULL),
('Chocolate Chip Irish Soda Bread', 'Egg', 1, NULL),
('Chocolate Chip Irish Soda Bread', 'Butter', 60, NULL),
('Chocolate Chip Irish Soda Bread', 'Chocolate Chips', 150, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chocolate Chip Irish Soda Bread', 'Preheat the oven to 375°F (190°C).', 1),
('Chocolate Chip Irish Soda Bread', 'In a mixing bowl, combine flour, sugar, baking soda, and salt.', 2),
('Chocolate Chip Irish Soda Bread', 'Cut cold butter into the flour mixture using a pastry cutter until it resembles coarse crumbs.', 3),
('Chocolate Chip Irish Soda Bread', 'In a separate bowl, whisk together buttermilk and egg.', 4),
('Chocolate Chip Irish Soda Bread', 'Add the wet ingredients to the dry ingredients and stir until just combined.', 5),
('Chocolate Chip Irish Soda Bread', 'Gently fold in the chocolate chips.', 6),
('Chocolate Chip Irish Soda Bread', 'Transfer the dough to a lightly floured surface and shape it into a round loaf.', 7),
('Chocolate Chip Irish Soda Bread', 'Place the loaf on a baking sheet lined with parchment paper.', 8),
('Chocolate Chip Irish Soda Bread', 'Score a deep cross on top of the loaf with a sharp knife.', 9),
('Chocolate Chip Irish Soda Bread', 'Bake for 30-35 minutes, or until the bread is golden brown and sounds hollow when tapped on the bottom.', 10),
('Chocolate Chip Irish Soda Bread', 'Cool on a wire rack before slicing and serving.', 11);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chocolate Chip Irish Soda Bread', 'Bread'),
('Chocolate Chip Irish Soda Bread', 'Dessert'),
('Chocolate Chip Irish Soda Bread', 'Irish');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Chocolate Chip Irish Soda Bread', 'Breakfast'),
('Chocolate Chip Irish Soda Bread', 'Snack');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chocolate Chip Irish Soda Bread', 'Baking Soda');

-- Malteese Gilatti
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Malteese Gilatti', 'Pastry', 3, 'Malteese Gilatti is a delicious Maltese dessert made with puff pastry, ricotta cheese, and citrus zest. It\'s light, flaky, and perfect for any occasion.', 'Make sure to thoroughly drain the ricotta cheese to prevent the pastry from becoming soggy.', 'You can add a sprinkle of powdered sugar on top for extra sweetness.', 'Serve with a cup of coffee or tea for a delightful treat.', 5.0, 30.0, 25.0, 'Malta', 'http://fakephotolink.com/malteese_gilatti.jpg', 'Malteese Gilatti with ricotta cheese and citrus zest', 10, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Malteese Gilatti', 'Baking Sheet', 1),
('Malteese Gilatti', 'Mixing Bowl', 1),
('Malteese Gilatti', 'Rolling Pin', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Puff Pastry', 466.0, 0, 'Cereals and Cereal Products', 'gr'),
('Ricotta Cheese', 174.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', ''),
('Sugar', 387.0, 1, 'Sweeteners', 'gr'),
('Lemon Zest', 29.0, 0, 'Herbs and Essential Oils', 'gr'),
('Orange Zest', 27.0, 0, 'Herbs and Essential Oils', 'gr'),
('Vanilla Extract', 288.0, 0, 'Herbs and Essential Oils', 'ml');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Malteese Gilatti', 'Puff Pastry', 300, NULL),
('Malteese Gilatti', 'Ricotta Cheese', 200, NULL),
('Malteese Gilatti', 'Egg', 1, NULL),
('Malteese Gilatti', 'Sugar', 50, NULL),
('Malteese Gilatti', 'Lemon Zest', 5, NULL),
('Malteese Gilatti', 'Orange Zest', 5, NULL),
('Malteese Gilatti', 'Vanilla Extract', 15, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Malteese Gilatti', 'Preheat the oven to 375°F (190°C).', 1),
('Malteese Gilatti', 'In a mixing bowl, combine ricotta cheese, egg, sugar, lemon zest, orange zest, and vanilla extract.', 2),
('Malteese Gilatti', 'Roll out the puff pastry on a lightly floured surface into a rectangle.', 3),
('Malteese Gilatti', 'Spread the ricotta mixture evenly over the pastry, leaving a border around the edges.', 4),
('Malteese Gilatti', 'Roll up the pastry tightly, starting from the long side.', 5),
('Malteese Gilatti', 'Place the pastry roll on a baking sheet lined with parchment paper, seam side down.', 6),
('Malteese Gilatti', 'Brush the top of the pastry with beaten egg for a golden finish.', 7),
('Malteese Gilatti', 'Bake for 20-25 minutes, or until the pastry is golden brown and puffed.', 8),
('Malteese Gilatti', 'Let cool slightly before slicing and serving.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Malteese Gilatti', 'Dessert'),
('Malteese Gilatti', 'Maltese'),
('Malteese Gilatti', 'Pastry');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Malteese Gilatti', 'Dessert');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Malteese Gilatti', 'Sugar');

-- Buckwheat Carrot and Onion
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Buckwheat Carrot and Onion', 'Cooking', 2, 'This buckwheat carrot and onion dish is a healthy and flavorful side that pairs well with a variety of mains. It\'s simple to make and packed with nutrients from the vegetables and buckwheat.', 'Make sure to rinse the buckwheat thoroughly before cooking to remove any bitterness.', 'Toast the buckwheat in a dry skillet before cooking to enhance its nutty flavor.', 'Garnish with fresh herbs like parsley or dill before serving for added freshness.', 5.0, 25.0, 20.0, 'Russia', 'http://fakephotolink.com/buckwheat_carrot_and_onion.jpg', 'Buckwheat Carrot and Onion Side Dish', 10, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Buckwheat Carrot and Onion', 'Skillet', 1),
('Buckwheat Carrot and Onion', 'Saucepan', 1),
('Buckwheat Carrot and Onion', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Buckwheat Groats', 343.0, 0, 'Cereals and Cereal Products', 'gr'),
('Carrots', 41.0, 0, 'Various Plant-based Foods', 'gr'),
('Onion', 44.0, 0, 'Various Plant-based Foods', ''),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Buckwheat Carrot and Onion', 'Buckwheat Groats', 200, NULL),
('Buckwheat Carrot and Onion', 'Carrots', 2, NULL),
('Buckwheat Carrot and Onion', 'Onion', 1, NULL),
('Buckwheat Carrot and Onion', 'Olive Oil', 30, NULL),
('Buckwheat Carrot and Onion', 'Salt', 3, NULL),
('Buckwheat Carrot and Onion', 'Black Pepper', 3, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Buckwheat Carrot and Onion', 'Rinse the buckwheat groats under cold water until the water runs clear.', 1),
('Buckwheat Carrot and Onion', 'Heat olive oil in a skillet over medium heat.', 2),
('Buckwheat Carrot and Onion', 'Add diced onion to the skillet and cook until softened.', 3),
('Buckwheat Carrot and Onion', 'Stir in grated carrots and cook for another 2-3 minutes.', 4),
('Buckwheat Carrot and Onion', 'Add the rinsed buckwheat groats to the skillet and toast for 2-3 minutes, stirring occasionally.', 5),
('Buckwheat Carrot and Onion', 'Transfer the toasted buckwheat mixture to a saucepan.', 6),
('Buckwheat Carrot and Onion', 'Add 2 cups of water to the saucepan and season with salt and black pepper.', 7),
('Buckwheat Carrot and Onion', 'Bring to a boil, then reduce heat to low, cover, and simmer for 15-20 minutes, or until the buckwheat is tender and the water is absorbed.', 8),
('Buckwheat Carrot and Onion', 'Fluff the buckwheat with a fork and serve.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Buckwheat Carrot and Onion', 'Side Dish'),
('Buckwheat Carrot and Onion', 'Healthy'),
('Buckwheat Carrot and Onion', 'Vegetarian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Buckwheat Carrot and Onion', 'Side Dish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Buckwheat Carrot and Onion', 'Onion');

-- Sweet Potatoes with Yogurt and Chickpeas
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Sweet Potatoes with Yogurt and Chickpeas', 'Cooking', 2, 'These sweet potatoes with yogurt and chickpeas are a satisfying and nutritious vegetarian meal. Roasted sweet potatoes are topped with creamy yogurt, spiced chickpeas, and a drizzle of tahini for a burst of flavor.', 'Prick the sweet potatoes with a fork before roasting to allow steam to escape.', 'Make sure to drain and rinse the chickpeas well to remove excess salt and starch.', 'Feel free to customize the toppings with your favorite herbs, nuts, or seeds.', 12.0, 45.0, 30.0, 'Denmark', 'http://fakephotolink.com/sweet_potatoes_with_yogurt_and_chickpeas.jpg', 'Sweet Potatoes with Yogurt and Chickpeas', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Sweet Potatoes with Yogurt and Chickpeas', 'Baking Sheet', 1),
('Sweet Potatoes with Yogurt and Chickpeas', 'Mixing Bowl', 1),
('Sweet Potatoes with Yogurt and Chickpeas', 'Saucepan', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Sweet Potatoes', 86.0, 0, 'Various Plant-based Foods', 'gr'),
('Chickpeas', 164.0, 0, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Greek Yogurt', 59.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Tahini', 89.0, 0, 'Fats and Oils', 'ml'),
('Cumin', 375.0, 0, 'Herbs and Essential Oils', 'gr'),
('Paprika', 282.0, 0, 'Others', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Fresh Cilantro', 23.0, 0, 'Herbs and Essential Oils', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Sweet Potatoes with Yogurt and Chickpeas', 'Sweet Potatoes', 600, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Chickpeas', 400, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Olive Oil', 30, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Greek Yogurt', 120, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Tahini', 30,NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Cumin', 5, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Paprika', 5, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Salt', 3, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Black Pepper', 3, NULL),
('Sweet Potatoes with Yogurt and Chickpeas', 'Fresh Cilantro', 5, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Sweet Potatoes with Yogurt and Chickpeas', 'Preheat the oven to 400°F (200°C).', 1),
('Sweet Potatoes with Yogurt and Chickpeas', 'Wash and dry the sweet potatoes. Prick them several times with a fork.', 2),
('Sweet Potatoes with Yogurt and Chickpeas', 'Place the sweet potatoes on a baking sheet and roast for 40-50 minutes, or until tender.', 3),
('Sweet Potatoes with Yogurt and Chickpeas', 'Meanwhile, heat olive oil in a saucepan over medium heat.', 4),
('Sweet Potatoes with Yogurt and Chickpeas', 'Add chickpeas, cumin, paprika, salt, and black pepper to the saucepan. Cook for 5-7 minutes, stirring occasionally.', 5),
('Sweet Potatoes with Yogurt and Chickpeas', 'In a small bowl, mix Greek yogurt with tahini.', 6),
('Sweet Potatoes with Yogurt and Chickpeas', 'Once the sweet potatoes are cooked, split them open and fluff the insides with a fork.', 7),
('Sweet Potatoes with Yogurt and Chickpeas', 'Top each sweet potato with spiced chickpeas and a dollop of yogurt tahini mixture.', 8),
('Sweet Potatoes with Yogurt and Chickpeas', 'Garnish with fresh cilantro before serving.', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Sweet Potatoes with Yogurt and Chickpeas', 'Main Course'),
('Sweet Potatoes with Yogurt and Chickpeas', 'Vegetarian'),
('Sweet Potatoes with Yogurt and Chickpeas', 'Healthy');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Sweet Potatoes with Yogurt and Chickpeas', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Sweet Potatoes with Yogurt and Chickpeas', 'Tahini');

-- Lentil Curry
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lentil Curry', 'Cooking', 2, 'Lentil Curry is a flavorful and satisfying dish that\'s perfect for vegetarians and meat-eaters alike. Made with protein-rich lentils, aromatic spices, and creamy coconut milk, this curry is both nutritious and delicious. Serve with rice or naan for a complete meal.', 'Feel free to add other vegetables like spinach, potatoes, or cauliflower to the curry for extra flavor and nutrition.', 'Adjust the amount of spices according to your taste preferences.', 'For a thicker curry, you can mash some of the lentils before serving.', 15.0, 30.0, 20.0, 'Bangladesh', 'http://fakephotolink.com/lentil_curry.jpg', 'Lentil Curry served in a bowl with rice and naan', 15, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lentil Curry', 'Pot', 1),
('Lentil Curry', 'Knife', 1),
('Lentil Curry', 'Cutting Board', 1),
('Lentil Curry', 'Mixing Spoon', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Lentils', 230.0, 0, 'Meat and Meat Products', 'cup'),
('Water', 0.0, 0, 'Others', 'cup'),
('Onion', 44.0, 0, 'Various Plant-based Foods', 'unit'),
('Garlic', 4.0, 0, 'Various Plant-based Foods', 'clove'),
('Ginger', 18.0, 0, 'Various Plant-based Foods', 'tsp'),
('Curry Powder', 20.0, 0, 'Herbs and Essential Oils', 'tbsp'),
('Turmeric', 29.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Cumin', 8.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Coriander', 5.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Coconut Milk', 230.0, 0, 'Nut and Seed Products', 'cup'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Fresh Cilantro', 1.0, 0, 'Various Plant-based Foods', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lentil Curry', 'Lentils', 1, 'cups'),
('Lentil Curry', 'Water', 4, 'cups'),
('Lentil Curry', 'Onion', 1, NULL),
('Lentil Curry', 'Garlic', 2, 'cloves'),
('Lentil Curry', 'Ginger', 1, NULL),
('Lentil Curry', 'Curry Powder', 2, NULL),
('Lentil Curry', 'Turmeric', 1, NULL),
('Lentil Curry', 'Cumin', 0.5, NULL),
('Lentil Curry', 'Coriander', 0.5, NULL),
('Lentil Curry', 'Coconut Milk', 1, 'cups'),
('Lentil Curry', 'Salt', NULL, 'to taste'),
('Lentil Curry', 'Black Pepper', NULL, 'to taste'),
('Lentil Curry', 'Fresh Cilantro', 2, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lentil Curry', 'Lentils');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lentil Curry', 'In a large pot, combine lentils and water. Bring to a boil, then reduce heat and simmer for 15-20 minutes, or until lentils are tender. Drain and set aside.', 1),
('Lentil Curry', 'In the same pot, heat some olive oil over medium heat. Add diced onion and cook until translucent.', 2),
('Lentil Curry', 'Add minced garlic, grated ginger, curry powder, turmeric, cumin, and coriander to the pot. Cook for 1-2 minutes, or until fragrant.', 3),
('Lentil Curry', 'Stir in cooked lentils and coconut milk. Simmer for 10-15 minutes, stirring occasionally, until the flavors are well combined.', 4),
('Lentil Curry', 'Season with salt and black pepper to taste. Garnish with fresh cilantro.', 5),
('Lentil Curry', 'Serve hot with rice or naan. Enjoy!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lentil Curry', 'Main Course'),
('Lentil Curry', 'Vegetarian'),
('Lentil Curry', 'Healthy');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Lentil Curry', 'Lunch'),
('Lentil Curry', 'Dinner');

-- Dutch Oven Bread
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Dutch Oven Bread', 'Cooking', 2, 'Dutch Oven Bread is a rustic and crusty loaf that\'s surprisingly easy to make at home. With just a few simple ingredients and some patience, you can enjoy fresh-baked bread straight from your oven. It\'s perfect for sandwiches, toast, or dipping in soups and stews.', 'Make sure your Dutch oven is preheated along with the oven to ensure a crispy crust.', 'Feel free to add seeds, herbs, or cheese to the dough for extra flavor.', 'Let the bread cool completely before slicing to prevent it from becoming too dense.', 10.0, 60.0, 50.0, 'Netherlands', 'http://fakephotolink.com/dutch_oven_bread.jpg', 'Dutch Oven Bread served on a wooden board', 10, 60);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
-- ('Dutch Oven Bread', 'Dutch Oven', 1),
('Dutch Oven Bread', 'Mixing Bowl', 1),
-- ('Dutch Oven Bread', 'Kitchen Towel', NULL),
('Dutch Oven Bread', 'Baking Sheet', 1);
-- ('Dutch Oven Bread', 'Bench Scraper', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup'),
('Active Dry Yeast', 23.0, 0, 'Baked Products', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Water', 0.0, 0, 'Others', 'cup');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Dutch Oven Bread', 'All-Purpose Flour', 3, 'cups'),
('Dutch Oven Bread', 'Active Dry Yeast', 2, NULL),
('Dutch Oven Bread', 'Salt', 1, NULL),
('Dutch Oven Bread', 'Water', 1.5, 'cups');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Dutch Oven Bread', 'In a large mixing bowl, combine flour, yeast, and salt. Gradually add water, stirring until a shaggy dough forms.', 1),
('Dutch Oven Bread', 'Cover the bowl with a kitchen towel and let the dough rise at room temperature for 12-18 hours, or until doubled in size.', 2),
('Dutch Oven Bread', 'Preheat the oven to 450°F (230°C). Place a Dutch oven with the lid on in the oven while preheating.', 3),
('Dutch Oven Bread', 'Once the oven is preheated, carefully remove the hot Dutch oven. Transfer the dough to the Dutch oven and cover with the lid.', 4),
('Dutch Oven Bread', 'Bake covered for 30 minutes, then remove the lid and bake for an additional 15-20 minutes, or until the bread is golden brown and sounds hollow when tapped on the bottom.', 5),
('Dutch Oven Bread', 'Remove the bread from the Dutch oven and let it cool on a wire rack before slicing.', 6),
('Dutch Oven Bread', 'Slice and serve with butter or your favorite spreads. Enjoy!', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Dutch Oven Bread', 'Bread'),
('Dutch Oven Bread', 'Homemade'),
('Dutch Oven Bread', 'Crusty');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Dutch Oven Bread', 'Breakfast'),
('Dutch Oven Bread', 'Lunch'),
('Dutch Oven Bread', 'Dinner');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Dutch Oven Bread','Salt');

-- Potato Apple Roast
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Potato Apple Roast', 'Cooking', 1, 'Potato Apple Roast is a simple yet delicious side dish that pairs well with roasted meats or as a vegetarian main course. Tender potatoes and sweet apples are roasted with herbs and spices until golden and caramelized. It\'s the perfect blend of savory and sweet flavors.', 'Use a mix of tart and sweet apples for a balanced flavor profile.', 'Make sure to cut the potatoes and apples into uniform pieces to ensure even cooking.', 'Feel free to customize the seasoning with your favorite herbs and spices.', 10.0, 40.0, 30.0, 'United Arab Emirates', 'http://fakephotolink.com/potato_apple_roast.jpg', 'Potato Apple Roast served in a dish', 10, 40);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Potato Apple Roast', 'Baking Sheet', 1),
('Potato Apple Roast', 'Mixing Bowl', 1),
('Potato Apple Roast', 'Knife', 1),
('Potato Apple Roast', 'Cutting Board', 1),
('Potato Apple Roast', 'Measuring Spoons', 1),
('Potato Apple Roast', 'Measuring Cups', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Potatoes', 77.0, 0, 'Various Plant-based Foods', 'unit'),
('Apples', 95.0, 0, 'Various Plant-based Foods', 'unit'),
('Olive Oil', 119.0, 0, 'Fats and Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Black Pepper', 0.0, 0, 'Others', 'tsp'),
('Thyme', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Rosemary', 2.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Maple Syrup', 52.0, 0, 'Sweeteners', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Potato Apple Roast', 'Potatoes', 4, NULL),
('Potato Apple Roast', 'Apples', 2, NULL),
('Potato Apple Roast', 'Olive Oil', 2,NULL),
('Potato Apple Roast', 'Salt', NULL, 'to taste'),
('Potato Apple Roast', 'Black Pepper', NULL, 'to taste'),
('Potato Apple Roast', 'Thyme', 1, NULL),
('Potato Apple Roast', 'Rosemary', 1, NULL),
('Potato Apple Roast', 'Maple Syrup', 1, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Potato Apple Roast', 'Apples');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Potato Apple Roast', 'Preheat the oven to 400°F (200°C).', 1),
('Potato Apple Roast', 'Wash and peel the potatoes, then cut them into wedges. Core and slice the apples into wedges.', 2),
('Potato Apple Roast', 'In a mixing bowl, toss the potato and apple wedges with olive oil, salt, black pepper, thyme, rosemary, and maple syrup until evenly coated.', 3),
('Potato Apple Roast', 'Spread the seasoned potato and apple wedges in a single layer on a baking sheet.', 4),
('Potato Apple Roast', 'Roast in the preheated oven for 25-30 minutes, flipping halfway through, or until the potatoes are golden and tender.', 5),
('Potato Apple Roast', 'Remove from the oven and serve hot. Enjoy!', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Potato Apple Roast', 'Side Dish'),
('Potato Apple Roast', 'Vegetarian'),
('Potato Apple Roast', 'Roasted');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Potato Apple Roast', 'Lunch'),
('Potato Apple Roast', 'Dinner');

-- Baking Powder Biscuits
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Baking Powder Biscuits', 'Pastry', 1, 'Baking Powder Biscuits are light, fluffy, and perfect for breakfast, brunch, or alongside a comforting bowl of soup or stew. These biscuits require just a few basic ingredients and come together quickly, making them a great addition to any meal.', 'Make sure your butter is cold for flakier biscuits.', 'Handle the dough gently to keep the biscuits tender and airy.', 'For extra flavor, brush the tops of the biscuits with melted butter before baking.', 5.0, 15.0, 10.0, 'Hungary', 'http://fakephotolink.com/baking_powder_biscuits.jpg', 'Baking Powder Biscuits served with butter and jam', 5, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Baking Powder Biscuits', 'Baking Sheet', 1),
('Baking Powder Biscuits', 'Mixing Bowl', 1),
('Baking Powder Biscuits', 'Pastry Cutter', 1),
('Baking Powder Biscuits', 'Blender', 1),
('Baking Powder Biscuits', 'Rolling Pin', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup'),
('Baking Powder', 5.0, 0, 'Baked Products', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'tsp'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'tbsp'),
('Milk', 50.0, 0, 'Milk, Eggs, and Their Products', 'cup');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Baking Powder Biscuits', 'All-Purpose Flour', 2, 'cups'),
('Baking Powder Biscuits', 'Baking Powder', 1, NULL),
('Baking Powder Biscuits', 'Salt', 0.5, NULL),
('Baking Powder Biscuits', 'Butter', 6, NULL),
('Baking Powder Biscuits', 'Milk', 0.75, 'cups');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Baking Powder Biscuits', 'All-Purpose Flour');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Baking Powder Biscuits', 'Preheat the oven to 450°F (230°C).', 1),
('Baking Powder Biscuits', 'In a mixing bowl, whisk together flour, baking powder, and salt.', 2),
('Baking Powder Biscuits', 'Cut the cold butter into small cubes and add it to the flour mixture. Use a pastry blender or fork to cut the butter into the flour until the mixture resembles coarse crumbs.', 3),
('Baking Powder Biscuits', 'Make a well in the center of the mixture and pour in the milk. Stir until the dough comes together.', 4),
('Baking Powder Biscuits', 'Turn the dough out onto a floured surface and gently knead it a few times until it holds together.', 5),
('Baking Powder Biscuits', 'Pat the dough into a rectangle about 1/2 inch thick. Use a pastry cutter to cut out biscuits, rerolling the scraps as needed.', 6),
('Baking Powder Biscuits', 'Place the biscuits on a baking sheet lined with parchment paper, spacing them about 1 inch apart.', 7),
('Baking Powder Biscuits', 'Bake for 10-12 minutes, or until the biscuits are golden brown and cooked through.', 8),
('Baking Powder Biscuits', 'Remove from the oven and serve warm. Enjoy!', 9);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Baking Powder Biscuits', 'Bread'),
('Baking Powder Biscuits', 'Breakfast'),
('Baking Powder Biscuits', 'Brunch');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Baking Powder Biscuits', 'Breakfast'),
('Baking Powder Biscuits', 'Brunch');

-- Sugar Cookies
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Sugar Cookies', 'Pastry', 2, 'Sugar Cookies are a classic treat that\'s perfect for any occasion. These cookies are soft, buttery, and deliciously sweet, with a hint of vanilla. Decorate them with icing or sprinkles for a festive touch.', 'Chill the dough for at least 1 hour before rolling and cutting to prevent spreading.', 'For extra flavor, add a teaspoon of almond or lemon extract to the dough.', 'Don\'t overbake the cookies - they should be just set and slightly golden around the edges.', 2.0, 10.0, 10.0, 'Peru', 'http://fakephotolink.com/sugar_cookies.jpg', 'Sugar Cookies decorated with icing and sprinkles', 20, 30);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Sugar Cookies', 'Baking Sheet', 2),
('Sugar Cookies', 'Mixing Bowl', 2),
('Sugar Cookies', 'Rolling Pin', 1),
('Sugar Cookies', 'Pastry Cutter', 1),
-- ('Sugar Cookies', 'Parchment Paper', NULL),
('Sugar Cookies', 'Spatula', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit) VALUES 
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'cup'),
('Sugar', 774.0, 0, 'Sweeteners', 'cup'),
('Egg', 72.0, 0, 'Milk, Eggs, and Their Products', 'unit'),
('Vanilla Extract', 12.0, 0, 'Baked Products', 'tsp'),
('All-Purpose Flour', 455.0, 0, 'Cereals and Cereal Products', 'cup'),
('Baking Powder', 5.0, 0, 'Baked Products', 'tsp'),
('Salt', 0.0, 0, 'Others', 'tsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Sugar Cookies', 'Butter', 1, 'cups'),
('Sugar Cookies', 'Sugar', 1.5, 'cups'),
('Sugar Cookies', 'Egg', 1, NULL),
('Sugar Cookies', 'Vanilla Extract', 1, NULL),
('Sugar Cookies', 'All-Purpose Flour', 3, 'cups'),
('Sugar Cookies', 'Baking Powder', 2, NULL),
('Sugar Cookies', 'Salt', 0.25, NULL);

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Sugar Cookies', 'Butter');

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Sugar Cookies', 'In a mixing bowl, cream together butter and sugar until light and fluffy.', 1),
('Sugar Cookies', 'Beat in the egg and vanilla extract until well combined.', 2),
('Sugar Cookies', 'In a separate bowl, whisk together flour, baking powder, and salt.', 3),
('Sugar Cookies', 'Gradually add the dry ingredients to the wet ingredients, mixing until a smooth dough forms.', 4),
('Sugar Cookies', 'Divide the dough in half, shape each half into a disk, and wrap in plastic wrap. Chill in the refrigerator for at least 1 hour.', 5),
('Sugar Cookies', 'Preheat the oven to 375°F (190°C). Line baking sheets with parchment paper.', 6),
('Sugar Cookies', 'On a floured surface, roll out the chilled dough to about 1/4 inch thickness. Use cookie cutters to cut out shapes.', 7),
('Sugar Cookies', 'Place the cookies on the prepared baking sheets, spacing them about 2 inches apart.', 8),
('Sugar Cookies', 'Bake for 8-10 minutes, or until the edges are lightly golden.', 9),
('Sugar Cookies', 'Let the cookies cool on the baking sheets for a few minutes before transferring to wire racks to cool completely.', 10),
('Sugar Cookies', 'Once cooled, decorate the cookies with icing and sprinkles as desired. Enjoy!', 11);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Sugar Cookies', 'Dessert'),
('Sugar Cookies', 'Holiday'),
('Sugar Cookies', 'Baked');

INSERT INTO meal_type (recipe_name, meal) VALUES
('Sugar Cookies', 'Dessert'),
('Sugar Cookies', 'Snack');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Spanish Chickpeas', 'Cooking', 2, 'This Spanish Chickpeas recipe is a hearty and flavorful dish made with chickpeas, tomatoes, onions, garlic, and spices. It\'s a simple and satisfying vegetarian meal that\'s perfect for a cozy dinner.', 'For extra flavor, you can add smoked paprika or Spanish chorizo.', 'Serve with crusty bread or over cooked rice for a complete meal.', 'Garnish with fresh parsley or cilantro before serving for a burst of freshness.', 15.0, 30.0, 20.0, 'Spain', 'http://fakephotolink.com/spanish_chickpeas.jpg', 'Spanish Chickpeas with tomatoes, onions, and garlic', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Spanish Chickpeas', 'Skillet', 1),
('Spanish Chickpeas', 'Saucepan', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Chickpeas', 164.0, 0, 'Various Plant-based Foods', 'gr'),
('Tomatoes', 18.0, 0, 'Various Plant-based Foods', 'gr'),
('Onion', 40.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Paprika', 282.0, 0, 'Herbs and Essential Oils', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Spanish Chickpeas', 'Chickpeas', 400, NULL),
('Spanish Chickpeas', 'Tomatoes', 200, NULL),
('Spanish Chickpeas', 'Onion', 100, NULL),
('Spanish Chickpeas', 'Garlic', 2, 'cloves'),
('Spanish Chickpeas', 'Olive Oil', 30,NULL),
('Spanish Chickpeas', 'Paprika', 5, NULL),
('Spanish Chickpeas', 'Salt', 3, NULL),
('Spanish Chickpeas', 'Black Pepper', 3, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Spanish Chickpeas', 'Heat olive oil in a skillet over medium heat.', 1),
('Spanish Chickpeas', 'Add chopped onion and minced garlic. Cook until softened and fragrant.', 2),
('Spanish Chickpeas', 'Stir in diced tomatoes, paprika, salt, and black pepper. Cook for 5 minutes.', 3),
('Spanish Chickpeas', 'Add drained chickpeas to the skillet. Stir to combine.', 4),
('Spanish Chickpeas', 'Simmer for 10-15 minutes, stirring occasionally, until the flavors meld together and the chickpeas are heated through.', 5),
('Spanish Chickpeas', 'Adjust seasoning to taste, adding more salt and pepper if needed.', 6),
('Spanish Chickpeas', 'Serve hot, garnished with fresh parsley or cilantro if desired.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Spanish Chickpeas', 'Main Course'),
('Spanish Chickpeas', 'Vegetarian'),
('Spanish Chickpeas', 'Spanish');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Spanish Chickpeas', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Spanish Chickpeas', 'Olive Oil');

-- Lemon Fettuchini
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lemon Fettuchini', 'Cooking', 2, 'This Lemon Fettuccine recipe is a light and refreshing pasta dish that\'s perfect for spring or summer. It features tender fettuccine noodles tossed in a creamy lemon sauce with garlic, Parmesan cheese, and fresh parsley.', 'For extra flavor, you can add cooked chicken, shrimp, or veggies to the pasta.', 'Use freshly grated Parmesan cheese for the best flavor and texture.', 'Garnish with lemon zest and additional parsley before serving for a pop of color and freshness.', 10.0, 15.0, 15.0, 'Italy', 'http://fakephotolink.com/lemon_fettuccine.jpg', 'Lemon Fettuccine with garlic, Parmesan cheese, and parsley', 5, 10);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lemon Fettuchini', 'Saucepan', 1),
('Lemon Fettuchini', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Fettuccine', 210.0, 0, 'Cereals and Cereal Products', 'gr'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Heavy Cream', 340.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Lemon', 29.0, 0, 'Herbs and Essential Oils', 'unit'),
('Parmesan Cheese', 420.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Fresh Parsley', 4.0, 0, 'Herbs and Essential Oils', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lemon Fettuchini', 'Fettuccine', 300, NULL),
('Lemon Fettuchini', 'Garlic', 3, 'cloves'),
('Lemon Fettuchini', 'Butter', 60, NULL),
('Lemon Fettuchini', 'Heavy Cream', 240,NULL),
('Lemon Fettuchini', 'Lemon', 1, NULL),
('Lemon Fettuchini', 'Parmesan Cheese', 100, NULL),
('Lemon Fettuchini', 'Salt', 2, NULL),
('Lemon Fettuchini', 'Black Pepper', 2, NULL),
('Lemon Fettuchini', 'Fresh Parsley', 15, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lemon Fettuchini', 'Cook the fettuccine according to package instructions until al dente. Drain and set aside.', 1),
('Lemon Fettuchini', 'In a skillet, melt butter over medium heat. Add minced garlic and cook until fragrant, about 1 minute.', 2),
('Lemon Fettuchini', 'Pour in heavy cream and bring to a simmer. Stir in lemon zest, lemon juice, and grated Parmesan cheese until smooth and creamy.', 3),
('Lemon Fettuchini', 'Season with salt and black pepper to taste.', 4),
('Lemon Fettuchini', 'Add the cooked fettuccine to the skillet and toss to coat in the sauce.', 5),
('Lemon Fettuchini', 'Garnish with chopped parsley before serving.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lemon Fettuchini', 'Pasta'),
('Lemon Fettuchini', 'Italian'),
('Lemon Fettuchini', 'Creamy');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Lemon Fettuchini', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lemon Fettuchini', 'Fettuccine');

-- Chickpea Masala
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chickpea Masala', 'Cooking', 2, 'Chickpea Masala is a flavorful and comforting Indian dish made with chickpeas cooked in a spiced tomato-based sauce. It\'s packed with protein and spices, making it perfect for a satisfying vegetarian meal.', 'For extra heat, add chopped green chilies or a pinch of cayenne pepper.', 'Serve the chickpea masala over steamed rice or with naan bread for a complete meal.', 'Garnish with fresh cilantro before serving for a pop of color and freshness.', 15.0, 30.0, 20.0, 'India', 'http://fakephotolink.com/chickpea_masala.jpg', 'Chickpea Masala with spiced tomato sauce', 10, 25);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chickpea Masala', 'Skillet', 1),
('Chickpea Masala', 'Saucepan', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Chickpeas', 164.0, 0, 'Various Plant-based Foods', 'gr'),
('Tomato', 18.0, 0, 'Various Plant-based Foods', 'gr'),
('Onion', 40.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Ginger', 80.0, 0, 'Herbs and Essential Oils', 'gr'),
('Garam Masala', 340.0, 0, 'Herbs and Essential Oils', 'gr'),
('Turmeric', 312.0, 0, 'Herbs and Essential Oils', 'gr'),
('Cumin', 375.0, 0, 'Herbs and Essential Oils', 'gr'),
('Coriander', 23.0, 0, 'Herbs and Essential Oils', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Cilantro', 4.0, 0, 'Herbs and Essential Oils', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chickpea Masala', 'Chickpeas', 400, NULL),
('Chickpea Masala', 'Tomato', 200, NULL),
('Chickpea Masala', 'Onion', 100, NULL),
('Chickpea Masala', 'Garlic', 2, 'cloves'),
('Chickpea Masala', 'Ginger', 1, NULL),
('Chickpea Masala', 'Garam Masala', 10, NULL),
('Chickpea Masala', 'Turmeric', 5, NULL),
('Chickpea Masala', 'Cumin', 5, NULL),
('Chickpea Masala', 'Coriander', 5, NULL),
('Chickpea Masala', 'Salt', 3, NULL),
('Chickpea Masala', 'Black Pepper', 3, NULL),
('Chickpea Masala', 'Cilantro', 10,NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chickpea Masala', 'Heat oil in a skillet over medium heat. Add chopped onion, garlic, and ginger. Cook until softened and fragrant.', 1),
('Chickpea Masala', 'Stir in diced tomato, garam masala, turmeric, cumin, and coriander. Cook for 5 minutes, stirring occasionally.', 2),
('Chickpea Masala', 'Add drained chickpeas to the skillet. Stir to combine.', 3),
('Chickpea Masala', 'Season with salt and black pepper to taste.', 4),
('Chickpea Masala', 'Simmer for 10-15 minutes, stirring occasionally, until the flavors meld together and the chickpeas are heated through.', 5),
('Chickpea Masala', 'Garnish with chopped cilantro before serving.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chickpea Masala', 'Main Course'),
('Chickpea Masala', 'Vegetarian'),
('Chickpea Masala', 'Indian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Chickpea Masala', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chickpea Masala', 'Cumin');

-- Chickpea Broccoli Pesto
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Chickpea Broccoli Pesto', 'Cooking', 2, 'Chickpea Broccoli Pesto is a delicious and nutritious twist on traditional pesto pasta. It\'s made with a creamy pesto sauce featuring chickpeas, broccoli, garlic, Parmesan cheese, and pine nuts.', 'For extra creaminess, you can add a splash of heavy cream or a dollop of Greek yogurt to the sauce.', 'Use whole wheat or gluten-free pasta for a healthier option.', 'Garnish with extra grated Parmesan cheese and fresh basil leaves before serving.', 15.0, 25.0, 20.0, 'Italy', 'http://fakephotolink.com/chickpea_broccoli_pesto.jpg', 'Chickpea Broccoli Pesto with pasta, garlic, and Parmesan cheese', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Chickpea Broccoli Pesto', 'Saucepan', 1),
('Chickpea Broccoli Pesto', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Pasta', 210.0, 0, 'Cereals and Cereal Products', 'gr'),
('Broccoli', 34.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Chickpeas', 164.0, 0, 'Various Plant-based Foods', 'gr'),
('Parmesan Cheese', 420.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Pine Nuts', 673.0, 0, 'Various Plant-based Foods', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Fresh Basil', 3.0, 0, 'Herbs and Essential Oils', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Chickpea Broccoli Pesto', 'Pasta', 300, NULL),
('Chickpea Broccoli Pesto', 'Broccoli', 200, NULL),
('Chickpea Broccoli Pesto', 'Garlic', 3, 'cloves'),
('Chickpea Broccoli Pesto', 'Chickpeas', 200, NULL),
('Chickpea Broccoli Pesto', 'Parmesan Cheese', 100, NULL),
('Chickpea Broccoli Pesto', 'Olive Oil', 45, NULL),
('Chickpea Broccoli Pesto', 'Pine Nuts', 50, NULL),
('Chickpea Broccoli Pesto', 'Salt', 3, NULL),
('Chickpea Broccoli Pesto', 'Black Pepper', 3, NULL),
('Chickpea Broccoli Pesto', 'Fresh Basil', 10, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Chickpea Broccoli Pesto', 'Cook the pasta according to package instructions until al dente. Drain and set aside.', 1),
('Chickpea Broccoli Pesto', 'In a saucepan, blanch broccoli florets in boiling water for 2 minutes. Drain and set aside.', 2),
('Chickpea Broccoli Pesto', 'In a skillet, heat olive oil over medium heat. Add minced garlic and cook until fragrant.', 3),
('Chickpea Broccoli Pesto', 'Add cooked chickpeas to the skillet. Cook for 3-4 minutes, stirring occasionally.', 4),
('Chickpea Broccoli Pesto', 'In a food processor, combine blanched broccoli, cooked chickpeas, grated Parmesan cheese, olive oil, pine nuts, garlic, salt, and black pepper. Blend until smooth.', 5),
('Chickpea Broccoli Pesto', 'Toss the cooked pasta with the chickpea broccoli pesto until well coated.', 6),
('Chickpea Broccoli Pesto', 'Garnish with fresh basil leaves before serving.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Chickpea Broccoli Pesto', 'Main Course'),
('Chickpea Broccoli Pesto', 'Pasta'),
('Chickpea Broccoli Pesto', 'Vegetarian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Chickpea Broccoli Pesto', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Chickpea Broccoli Pesto', 'Pasta');

-- Thai Veggie Soup
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Thai Veggie Soup', 'Cooking', 2, 'This Thai Veggie Soup is a light and flavorful soup that\'s packed with fresh vegetables, Thai spices, and creamy coconut milk. It\'s a healthy and satisfying dish that\'s perfect for any time of year.', 'For extra protein, you can add cooked chicken, shrimp, or tofu to the soup.', 'Adjust the spiciness of the soup by adding more or less Thai red curry paste.', 'Garnish with fresh cilantro, lime wedges, and sliced red chili before serving for a burst of freshness and flavor.', 10.0, 25.0, 20.0, 'Thailand', 'http://fakephotolink.com/thai_veggie_soup.jpg', 'Thai Veggie Soup with coconut milk and Thai spices', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Thai Veggie Soup', 'Pot', 1),
('Thai Veggie Soup', 'Knife', 1),
('Thai Veggie Soup', 'Cutting Board', 1),
('Thai Veggie Soup', 'Saucepan', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Coconut Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Onion', 40.0, 0, 'Various Plant-based Foods', 'gr'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Ginger', 80.0, 0, 'Herbs and Essential Oils', 'gr'),
('Carrot', 41.0, 0, 'Various Plant-based Foods', 'gr'),
('Red Bell Pepper', 31.0, 0, 'Various Plant-based Foods', 'gr'),
('Zucchini', 17.0, 0, 'Various Plant-based Foods', 'gr'),
('Thai Red Curry Paste', 30.0, 0, 'Herbs and Essential Oils', 'gr'),
('Coconut Milk', 230.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Vegetable Broth', 10.0, 0, 'Various Plant-based Foods', 'ml'),
('Lime', 30.0, 0, 'Herbs and Essential Oils', 'unit'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Fresh Cilantro', 4.0, 0, 'Herbs and Essential Oils', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Thai Veggie Soup', 'Coconut Oil', 30, NULL),
('Thai Veggie Soup', 'Onion', 100, NULL),
('Thai Veggie Soup', 'Garlic', 3, 'cloves'),
('Thai Veggie Soup', 'Ginger', 1, NULL),
('Thai Veggie Soup', 'Carrot', 100, NULL),
('Thai Veggie Soup', 'Red Bell Pepper', 100, NULL),
('Thai Veggie Soup', 'Zucchini', 100, NULL),
('Thai Veggie Soup', 'Thai Red Curry Paste', 15, NULL),
('Thai Veggie Soup', 'Coconut Milk', 200, NULL),
('Thai Veggie Soup', 'Vegetable Broth', 500, NULL),
('Thai Veggie Soup', 'Lime', 1, NULL),
('Thai Veggie Soup', 'Salt', 3, NULL),
('Thai Veggie Soup', 'Black Pepper', 3, NULL),
('Thai Veggie Soup', 'Fresh Cilantro', 10, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Thai Veggie Soup', 'In a saucepan, heat coconut oil over medium heat.', 1),
('Thai Veggie Soup', 'Add chopped onion, minced garlic, and grated ginger. Cook until softened and fragrant.', 2),
('Thai Veggie Soup', 'Stir in sliced carrot, diced red bell pepper, and chopped zucchini. Cook for 5 minutes, stirring occasionally.', 3),
('Thai Veggie Soup', 'Add Thai red curry paste and cook for another 2 minutes.', 4),
('Thai Veggie Soup', 'Pour in coconut milk and vegetable broth. Bring to a simmer and cook for 10-15 minutes, or until the vegetables are tender.', 5),
('Thai Veggie Soup', 'Season with salt and black pepper to taste.', 6),
('Thai Veggie Soup', 'Serve hot, garnished with fresh cilantro and lime wedges.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Thai Veggie Soup', 'Soup'),
('Thai Veggie Soup', 'Vegetarian'),
('Thai Veggie Soup', 'Thai');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Thai Veggie Soup', 'Soup');

INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Buttery Herb Chicken', 'Cooking', 2, 'Buttery Herb Chicken is a simple yet flavorful dish featuring tender chicken breasts cooked in a creamy herb sauce. It\'s easy to make and perfect for a cozy weeknight dinner.', 'For extra flavor, you can add minced garlic or shallots to the sauce.', 'Use boneless, skinless chicken breasts for quicker cooking.', 'Serve with mashed potatoes, rice, or roasted vegetables for a complete meal.', 30.0, 20.0, 25.0, 'Chile', 'http://fakephotolink.com/buttery_herb_chicken.jpg', 'Buttery Herb Chicken with creamy herb sauce', 10, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Buttery Herb Chicken', 'Skillet', 1),
('Buttery Herb Chicken', 'Saucepan', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Chicken Breast', 165.0, 0, 'Meat and Meat Products', 'gr'),
('Butter', 102.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Flour', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Chicken Broth', 10.0, 0, 'Meat and Meat Products', 'ml'),
('Heavy Cream', 340.0, 0, 'Milk, Eggs, and Their Products', 'ml'),
('Garlic Powder', 5.0, 0, 'Herbs and Essential Oils', 'gr'),
('Dried Thyme', 2.0, 0, 'Herbs and Essential Oils', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Buttery Herb Chicken', 'Chicken Breast', 500, NULL),
('Buttery Herb Chicken', 'Butter', 60, NULL),
('Buttery Herb Chicken', 'Flour', 30, NULL),
('Buttery Herb Chicken', 'Chicken Broth', 60, NULL),
('Buttery Herb Chicken', 'Heavy Cream', 120, NULL),
('Buttery Herb Chicken', 'Garlic Powder', 2, NULL),
('Buttery Herb Chicken', 'Dried Thyme', 1, NULL),
('Buttery Herb Chicken', 'Salt', 3, NULL),
('Buttery Herb Chicken', 'Black Pepper', 3, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Buttery Herb Chicken', 'Season chicken breasts with salt and black pepper.', 1),
('Buttery Herb Chicken', 'Dredge the chicken breasts in flour, shaking off any excess.', 2),
('Buttery Herb Chicken', 'In a skillet, melt butter over medium-high heat. Add chicken breasts and cook until browned on both sides, about 5 minutes per side.', 3),
('Buttery Herb Chicken', 'Remove chicken from skillet and set aside.', 4),
('Buttery Herb Chicken', 'In the same skillet, add chicken broth, heavy cream, garlic powder, and dried thyme. Bring to a simmer.', 5),
('Buttery Herb Chicken', 'Return chicken to the skillet and simmer for another 5-7 minutes, or until chicken is cooked through and sauce has thickened.', 6),
('Buttery Herb Chicken', 'Serve hot, spooning the creamy herb sauce over the chicken.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Buttery Herb Chicken', 'Main Course'),
('Buttery Herb Chicken', 'Chicken'),
('Buttery Herb Chicken', 'Creamy');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Buttery Herb Chicken', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Buttery Herb Chicken', 'Black Pepper');

-- Rosemary Parsnips
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Rosemary Parsnips', 'Cooking', 1, 'Rosemary Parsnips are a simple and delicious side dish that\'s perfect for any meal. Tender parsnips are roasted with olive oil, garlic, and fresh rosemary until caramelized and flavorful.', 'For extra sweetness, you can drizzle honey over the parsnips before roasting.', 'Make sure to toss the parsnips halfway through cooking to ensure even browning.', 'Garnish with fresh chopped parsley before serving for a pop of color.', 10.0, 25.0, 30.0, 'Saudi Arabia', 'http://fakephotolink.com/rosemary_parsnips.jpg', 'Rosemary Parsnips with garlic and fresh rosemary', 5, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Rosemary Parsnips', 'Baking Sheet', 1),
('Rosemary Parsnips', 'Mixing Bowl', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Parsnips', 75.0, 0, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Fresh Rosemary', 3.0, 0, 'Herbs and Essential Oils', 'sprigs'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Rosemary Parsnips', 'Parsnips', 500, NULL),
('Rosemary Parsnips', 'Olive Oil', 45, NULL),
('Rosemary Parsnips', 'Garlic', 2, 'cloves'),
('Rosemary Parsnips', 'Fresh Rosemary', 2, NULL),
('Rosemary Parsnips', 'Salt', 3, NULL),
('Rosemary Parsnips', 'Black Pepper', 3, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Rosemary Parsnips', 'Preheat oven to 200°C (400°F).', 1),
('Rosemary Parsnips', 'Peel and cut parsnips into evenly sized pieces.', 2),
('Rosemary Parsnips', 'In a mixing bowl, toss parsnips with olive oil, minced garlic, chopped rosemary, salt, and black pepper until well coated.', 3),
('Rosemary Parsnips', 'Spread the parsnips in a single layer on a baking sheet.', 4),
('Rosemary Parsnips', 'Roast in the preheated oven for 20-25 minutes, flipping halfway through, until golden brown and tender.', 5),
('Rosemary Parsnips', 'Serve hot, garnished with additional chopped rosemary if desired.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Rosemary Parsnips', 'Side Dish'),
('Rosemary Parsnips', 'Roasted'),
('Rosemary Parsnips', 'Vegetarian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Rosemary Parsnips', 'Side Dish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Rosemary Parsnips', 'Parsnips');

-- Balsamic Potatoes and Asparagus
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Balsamic Potatoes and Asparagus', 'Cooking', 2, 'Balsamic Potatoes and Asparagus is a flavorful side dish that pairs perfectly with any main course. Tender potatoes and crisp asparagus are roasted with balsamic vinegar, garlic, and herbs for a delicious combination of flavors.', 'For extra flavor, you can sprinkle Parmesan cheese over the potatoes and asparagus before serving.', 'Make sure to toss the potatoes and asparagus halfway through cooking to ensure even roasting.', 'Garnish with fresh chopped parsley or basil before serving for a pop of color.', 10.0, 25.0, 30.0, 'Portugal', 'http://fakephotolink.com/balsamic_potatoes_asparagus.jpg', 'Balsamic Potatoes and Asparagus with garlic and herbs', 10, 20);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Balsamic Potatoes and Asparagus', 'Baking Sheet', 1),
('Balsamic Potatoes and Asparagus', 'Mixing Bowl', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Potatoes', 77.0, 0, 'Various Plant-based Foods', 'gr'),
('Asparagus', 20.0, 0, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Balsamic Vinegar', 88.0, 0, 'Various Plant-based Foods', 'ml'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Dried Thyme', 2.0, 0, 'Herbs and Essential Oils', 'gr'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Balsamic Potatoes and Asparagus', 'Potatoes', 500, NULL),
('Balsamic Potatoes and Asparagus', 'Asparagus', 200, NULL),
('Balsamic Potatoes and Asparagus', 'Olive Oil', 45, NULL),
('Balsamic Potatoes and Asparagus', 'Balsamic Vinegar', 30, NULL),
('Balsamic Potatoes and Asparagus', 'Garlic', 2, 'cloves'),
('Balsamic Potatoes and Asparagus', 'Dried Thyme', 1, NULL),
('Balsamic Potatoes and Asparagus', 'Salt', 3, NULL),
('Balsamic Potatoes and Asparagus', 'Black Pepper', 3, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Balsamic Potatoes and Asparagus', 'Preheat oven to 200°C (400°F).', 1),
('Balsamic Potatoes and Asparagus', 'Cut potatoes into bite-sized chunks and trim asparagus.', 2),
('Balsamic Potatoes and Asparagus', 'In a mixing bowl, toss potatoes and asparagus with olive oil, minced garlic, balsamic vinegar, dried thyme, salt, and black pepper until well coated.', 3),
('Balsamic Potatoes and Asparagus', 'Spread the potatoes and asparagus in a single layer on a baking sheet.', 4),
('Balsamic Potatoes and Asparagus', 'Roast in the preheated oven for 20-25 minutes, flipping halfway through, until the potatoes are tender and golden brown.', 5),
('Balsamic Potatoes and Asparagus', 'Serve hot, garnished with fresh chopped parsley or basil if desired.', 6);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Balsamic Potatoes and Asparagus', 'Side Dish'),
('Balsamic Potatoes and Asparagus', 'Roasted'),
('Balsamic Potatoes and Asparagus', 'Vegetarian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Balsamic Potatoes and Asparagus', 'Side Dish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Balsamic Potatoes and Asparagus', 'Potatoes');

-- Quinoa Brussels Sweet Potato Salad
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Quinoa Brussels Sweet Potato Salad', 'Cooking', 2, 'Quinoa Brussels Sweet Potato Salad is a hearty and nutritious salad that\'s perfect for lunch or as a side dish. It\'s made with quinoa, roasted sweet potatoes, shredded Brussels sprouts, and a tangy vinaigrette.', 'You can add other vegetables like cherry tomatoes or cucumber for extra freshness.', 'Make sure to massage the shredded Brussels sprouts with the dressing to soften them slightly.', 'Garnish with chopped nuts or seeds for added crunch and protein.', 15.0, 25.0, 25.0, 'Netherlands', 'http://fakephotolink.com/quinoa_brussels_sweet_potato_salad.jpg', 'Quinoa Brussels Sweet Potato Salad with shredded Brussels sprouts and vinaigrette', 10, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Quinoa Brussels Sweet Potato Salad', 'Baking Sheet', 1),
('Quinoa Brussels Sweet Potato Salad', 'Mixing Bowl', 1),
('Quinoa Brussels Sweet Potato Salad', 'Pot', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Quinoa', 120.0, 0, 'Cereals and Cereal Products', 'gr'),
('Sweet Potato', 86.0, 0, 'Various Plant-based Foods', 'gr'),
('Brussels Sprouts', 43.0, 0, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Apple Cider Vinegar', 3.0, 0, 'Various Plant-based Foods', 'ml'),
('Maple Syrup', 260.0, 0, 'Various Plant-based Foods', 'ml'),
('Dijon Mustard', 130.0, 0, 'Various Plant-based Foods', 'ml'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Chopped Nuts', 607.0, 0, 'Various Plant-based Foods', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Quinoa Brussels Sweet Potato Salad', 'Quinoa', 150, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Sweet Potato', 300, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Brussels Sprouts', 200, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Olive Oil', 45, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Apple Cider Vinegar', 30, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Maple Syrup', 15, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Dijon Mustard', 15, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Salt', 3, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Black Pepper', 3, NULL),
('Quinoa Brussels Sweet Potato Salad', 'Chopped Nuts', 50, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Quinoa Brussels Sweet Potato Salad', 'Preheat oven to 200°C (400°F).', 1),
('Quinoa Brussels Sweet Potato Salad', 'Peel and dice sweet potatoes into small cubes.', 2),
('Quinoa Brussels Sweet Potato Salad', 'Toss sweet potatoes with olive oil, salt, and black pepper. Spread on a baking sheet and roast for 20-25 minutes, until tender and lightly browned.', 3),
('Quinoa Brussels Sweet Potato Salad', 'Cook quinoa according to package instructions.', 4),
('Quinoa Brussels Sweet Potato Salad', 'While the quinoa and sweet potatoes are cooking, shred the Brussels sprouts and prepare the dressing by whisking together olive oil, apple cider vinegar, maple syrup, Dijon mustard, salt, and black pepper in a mixing bowl.', 5),
('Quinoa Brussels Sweet Potato Salad', 'In a large bowl, combine cooked quinoa, roasted sweet potatoes, shredded Brussels sprouts, and dressing. Toss until well combined.', 6),
('Quinoa Brussels Sweet Potato Salad', 'Garnish with chopped nuts before serving.', 7);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Quinoa Brussels Sweet Potato Salad', 'Salad'),
('Quinoa Brussels Sweet Potato Salad', 'Healthy'),
('Quinoa Brussels Sweet Potato Salad', 'Vegetarian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Quinoa Brussels Sweet Potato Salad', 'Side Dish');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Quinoa Brussels Sweet Potato Salad', 'Olive Oil');

-- Thai Peanut Cabbage Quinoa
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Thai Peanut Cabbage Quinoa', 'Cooking', 2, 'Thai Peanut Cabbage Quinoa is a vibrant and flavorful dish inspired by Thai cuisine. It\'s made with cooked quinoa, shredded cabbage, carrots, and a creamy peanut sauce infused with Thai flavors.', 'You can add cooked chicken, shrimp, or tofu for extra protein.', 'For a spicy kick, add a pinch of red pepper flakes or chopped red chili to the peanut sauce.', 'Garnish with chopped peanuts, cilantro, and lime wedges before serving.', 15.0, 20.0, 25.0, 'Thailand', 'http://fakephotolink.com/thai_peanut_cabbage_quinoa.jpg', 'Thai Peanut Cabbage Quinoa with shredded cabbage and peanut sauce', 10, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Thai Peanut Cabbage Quinoa', 'Pot', 1),
('Thai Peanut Cabbage Quinoa', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Quinoa', 120.0, 0, 'Cereals and Cereal Products', 'gr'),
('Cabbage', 25.0, 0, 'Various Plant-based Foods', 'gr'),
('Carrot', 41.0, 0, 'Various Plant-based Foods', 'gr'),
('Peanut Butter', 588.0, 0, 'Various Plant-based Foods', 'gr'),
('Soy Sauce', 9.0, 0, 'Various Plant-based Foods', 'ml'),
('Lime', 30.0, 0, 'Herbs and Essential Oils', 'unit'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Ginger', 80.0, 0, 'Herbs and Essential Oils', 'gr'),
('Honey', 304.0, 0, 'Various Plant-based Foods', 'ml'),
('Water', 0.0, 0, 'Various Plant-based Foods', 'ml'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Chopped Peanuts', 607.0, 0, 'Various Plant-based Foods', 'gr');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Thai Peanut Cabbage Quinoa', 'Quinoa', 150, NULL),
('Thai Peanut Cabbage Quinoa', 'Cabbage', 200,NULL),
('Thai Peanut Cabbage Quinoa', 'Carrot', 100,NULL),
('Thai Peanut Cabbage Quinoa', 'Peanut Butter', 120, NULL),
('Thai Peanut Cabbage Quinoa', 'Soy Sauce', 30, NULL),
('Thai Peanut Cabbage Quinoa', 'Lime', 1, NULL),
('Thai Peanut Cabbage Quinoa', 'Garlic', 2, 'cloves'),
('Thai Peanut Cabbage Quinoa', 'Ginger', 1, NULL),
('Thai Peanut Cabbage Quinoa', 'Honey', 45, NULL),
('Thai Peanut Cabbage Quinoa', 'Water', 60, NULL),
('Thai Peanut Cabbage Quinoa', 'Salt', 3, NULL),
('Thai Peanut Cabbage Quinoa', 'Black Pepper', 3, NULL),
('Thai Peanut Cabbage Quinoa', 'Chopped Peanuts', 50, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Thai Peanut Cabbage Quinoa', 'Rinse quinoa under cold water. In a pot, combine quinoa with 300ml of water. Bring to a boil, then reduce heat to low, cover, and simmer for 15 minutes, or until quinoa is cooked and water is absorbed. Remove from heat and let it sit, covered, for 5 minutes. Fluff with a fork.', 1),
('Thai Peanut Cabbage Quinoa', 'In a skillet over medium heat, add peanut butter, soy sauce, lime juice, minced garlic, grated ginger, honey, salt, black pepper, and water. Stir until smooth and well combined, then bring to a simmer.', 2),
('Thai Peanut Cabbage Quinoa', 'Add shredded cabbage and grated carrot to the skillet. Cook for 5-7 minutes, stirring occasionally, until the vegetables are tender but still crisp.', 3),
('Thai Peanut Cabbage Quinoa', 'Add cooked quinoa to the skillet and toss to combine with the vegetables and sauce.', 4),
('Thai Peanut Cabbage Quinoa', 'Serve hot, garnished with chopped peanuts, cilantro, and lime wedges.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Thai Peanut Cabbage Quinoa', 'Main Course'),
('Thai Peanut Cabbage Quinoa', 'Thai'),
('Thai Peanut Cabbage Quinoa', 'Healthy');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Thai Peanut Cabbage Quinoa', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Thai Peanut Cabbage Quinoa', 'Lime');

-- Lemon Garlic Asparagus with Orzo
INSERT INTO recipes (recipe_name, recipe_type, recipe_difficulty, recipe_desc, recipe_tip1, recipe_tip2, recipe_tip3, recipe_proteins, recipe_carbs, recipe_fats, country_name, recipe_photo, recipe_photo_desc, prep_time, execution_time, portions)
VALUES 
('Lemon Garlic Asparagus with Orzo', 'Cooking', 2, 'Lemon Garlic Asparagus with Orzo is a light and refreshing dish that\'s perfect for spring. Tender asparagus and flavorful garlic are sautéed with lemon zest and served over a bed of orzo pasta.', 'For extra protein, you can add grilled chicken or shrimp to the dish.', 'Make sure not to overcook the asparagus; it should be tender but still crisp.', 'Garnish with freshly grated Parmesan cheese and chopped parsley before serving.', 10.0, 20.0, 20.0, 'Morocco', 'http://fakephotolink.com/lemon_garlic_asparagus_orzo.jpg', 'Lemon Garlic Asparagus with Orzo pasta and lemon zest', 10, 15);

INSERT INTO requires_eq (recipe_name, eq_name, quantity)
VALUES 
('Lemon Garlic Asparagus with Orzo', 'Pot', 1),
('Lemon Garlic Asparagus with Orzo', 'Skillet', 1);

INSERT IGNORE INTO ingredients (ingr_name, ingr_calories, allows_loose_units, group_name, unit)VALUES 
('Orzo Pasta', 364.0, 0, 'Cereals and Cereal Products', 'gr'),
('Asparagus', 20.0, 0, 'Various Plant-based Foods', 'gr'),
('Olive Oil', 884.0, 0, 'Fats and Oils', 'ml'),
('Garlic', 4.0, 0, 'Herbs and Essential Oils', 'cloves'),
('Lemon Zest', 3.0, 0, 'Herbs and Essential Oils', 'tsp'),
('Lemon Juice', 4.0, 0, 'Herbs and Essential Oils', 'tbsp'),
('Salt', 0.0, 0, 'Others', 'gr'),
('Black Pepper', 0.0, 0, 'Others', 'gr'),
('Parmesan Cheese', 420.0, 0, 'Milk, Eggs, and Their Products', 'gr'),
('Fresh Parsley', 4.0, 0, 'Herbs and Essential Oils', 'tbsp');

INSERT INTO requires_ingr (recipe_name, ingr_name, quantity, undefined_quantity)
VALUES 
('Lemon Garlic Asparagus with Orzo', 'Orzo Pasta', 200, NULL),
('Lemon Garlic Asparagus with Orzo', 'Asparagus', 200, NULL),
('Lemon Garlic Asparagus with Orzo', 'Olive Oil', 30,NULL),
('Lemon Garlic Asparagus with Orzo', 'Garlic', 2, 'cloves'),
('Lemon Garlic Asparagus with Orzo', 'Lemon Zest', 1, NULL),
('Lemon Garlic Asparagus with Orzo', 'Lemon Juice', 2,NULL),
('Lemon Garlic Asparagus with Orzo', 'Salt', 3, NULL),
('Lemon Garlic Asparagus with Orzo', 'Black Pepper', 3, NULL),
('Lemon Garlic Asparagus with Orzo', 'Parmesan Cheese', 30, NULL),
('Lemon Garlic Asparagus with Orzo', 'Fresh Parsley', 2, NULL);

INSERT INTO recipe_steps (recipe_name, instruction, step_num)
VALUES 
('Lemon Garlic Asparagus with Orzo', 'Cook orzo pasta according to package instructions. Drain and set aside.', 1),
('Lemon Garlic Asparagus with Orzo', 'In a skillet, heat olive oil over medium heat. Add minced garlic and cook until fragrant, about 1 minute.', 2),
('Lemon Garlic Asparagus with Orzo', 'Add trimmed asparagus to the skillet and cook for 5-7 minutes, or until tender but still crisp.', 3),
('Lemon Garlic Asparagus with Orzo', 'Stir in cooked orzo, lemon zest, lemon juice, salt, and black pepper. Cook for another 2-3 minutes, tossing to combine.', 4),
('Lemon Garlic Asparagus with Orzo', 'Serve hot, garnished with freshly grated Parmesan cheese and chopped parsley.', 5);

INSERT INTO tags (recipe_name, tag_name) VALUES
('Lemon Garlic Asparagus with Orzo', 'Main Course'),
('Lemon Garlic Asparagus with Orzo', 'Pasta'),
('Lemon Garlic Asparagus with Orzo', 'Vegetarian');

INSERT INTO meal_type (recipe_name,meal) VALUES
('Lemon Garlic Asparagus with Orzo', 'Main Course');

INSERT INTO main_ingr (recipe_name, ingr_name)
VALUES 
('Lemon Garlic Asparagus with Orzo', 'Olive Oil');

#
INSERT INTO cook (first_name, last_name, phone_number, birthdate, years_of_expertise, cook_photo, cook_status) VALUES
('John', 'Doe', '1234567890', '1990-01-01', 1, 'https://example.com/john-doe-photo.jpg', 'C Cook'),
('Maria', 'Garcia', '9876543210', '1985-05-15', 3, 'https://example.com/maria-garcia-photo.jpg', 'B Cook'),
('Mohammed', 'Ali', '5551234567', '1982-11-30', 4, 'https://example.com/mohammed-ali-photo.jpg', 'A Cook'),
('Anna', 'Smith', '7058889999', '1988-08-20', 7, 'https://example.com/anna-smith-photo.jpg', 'Sous Chef'),
('Luca', 'Rossi', '3352221111', '1995-04-10', 8, 'https://example.com/luca-rossi-photo.jpg', 'Chef'),
('Mia', 'Johnson', '444556666', '1992-02-25', 2, 'https://example.com/mia-johnson-photo.jpg', 'C Cook'),
('Satoshi', 'Tanaka', '9398887777', '1980-07-12', 3, 'https://example.com/satoshi-tanaka-photo.jpg', 'B Cook'),
('Olga', 'Ivanova', '6667778888', '1987-03-18', 6, 'https://example.com/olga-ivanova-photo.jpg', 'A Cook'),
('Pablo', 'Hernandez', '2223234444', '1984-09-05', 6, 'https://example.com/pablo-hernandez-photo.jpg', 'Sous Chef'),
('Andrew', 'Cooper','0921857104','1991-08-13', 7, 'https://www.kevinashleyphotography.com/wp-content/uploads/2015/11/person.jpg','A Cook'),
('Fatima', 'Ali', '8880776666', '1993-12-22', 12, 'https://example.com/fatima-ali-photo.jpg', 'Chef'),
('Thomas', 'Muller', '1112223333', '1986-06-28', 2, 'https://example.com/thomas-muller-photo.jpg', 'C Cook'),
('Yuki', 'Yamamoto', '5550446333', '1991-10-15', 4, 'https://example.com/yuki-yamamoto-photo.jpg', 'B Cook'),
('Sophie', 'Lefebvre', '1776665555', '1983-11-20', 5, 'https://example.com/sophie-lefebvre-photo.jpg', 'A Cook'),
('Rafael', 'Gonzalez', '2220014444', '1989-03-07', 8, 'https://example.com/rafael-gonzalez-photo.jpg', 'Sous Chef'),
('Amir', 'Khan', '3334645555', '1981-05-10', 10, 'https://example.com/amir-khan-photo.jpg', 'Chef'),
('Elena', 'Petrova', '6665554444', '1996-08-18', 1, 'https://example.com/elena-petrova-photo.jpg', 'C Cook'),
('Fabio', 'Moreno', '4444556666', '1994-01-25', 2, 'https://example.com/fabio-moreno-photo.jpg', 'B Cook'),
('Lily', 'Brown', '8882772222', '1982-07-30', 3, 'https://example.com/lily-brown-photo.jpg', 'A Cook'),
('Muhammad', 'Chowdhury', '1998885555', '1987-09-14', 7, 'https://example.com/muhammad-chowdhury-photo.jpg', 'Sous Chef'),
('Hannah', 'Andersen', '1112227777', '1990-04-02', 12, 'https://example.com/hannah-andersen-photo.jpg', 'Chef'),
('Ali', 'Al-Mansoori', '5254446666', '1984-12-05', 1, 'https://example.com/ali-al-mansoori-photo.jpg', 'C Cook'),
('Eva', 'Schneider', '1332228888', '1993-02-22', 3, 'https://example.com/eva-schneider-photo.jpg', 'B Cook'),
('Raj', 'Patel', '777668333', '1988-06-15', 5, 'https://example.com/raj-patel-photo.jpg', 'A Cook'),
('Julia', 'Santos', '2225419999', '1985-10-12', 8, 'https://example.com/julia-santos-photo.jpg', 'Sous Chef'),
('Kenji', 'Tanaka', '4443551111', '1992-03-28', 13, 'https://example.com/kenji-tanaka-photo.jpg', 'Chef'),
('Isabella', 'Silva', '8887775555', '1981-08-17', 2, 'https://example.com/isabella-silva-photo.jpg', 'C Cook'),
('David', 'Andersson', '9990883333', '1986-11-10', 2, 'https://example.com/david-andersson-photo.jpg', 'B Cook'),
('Anastasia', 'Kuznetsova', '1112226666', '1995-01-20', 6, 'https://example.com/anastasia-kuznetsova-photo.jpg', 'A Cook'),
('Max', 'Schmidt', '6554442222', '1983-06-08', 10, 'https://example.com/max-schmidt-photo.jpg', 'Sous Chef'),
('Sophia', 'Nguyen', '2332229999', '1989-09-25', 13, 'https://example.com/sophia-nguyen-photo.jpg', 'Chef'),
('Mohammed', 'Al-Mansoori', '7726664444', '1994-04-15', 3, 'https://example.com/mohammed-al-mansoori-photo.jpg', 'C Cook'),
('Emma', 'Larsson', '2221017777', '1980-12-22', 5, 'https://example.com/emma-larsson-photo.jpg', 'B Cook'),
('Ahmed', 'El-Masry', '4442558888', '1987-02-18', 7, 'https://example.com/ahmed-el-masry-photo.jpg', 'A Cook'),
('Emily', 'Garcia', '8187773333', '1992-07-05', 9, 'https://example.com/emily-garcia-photo.jpg', 'Sous Chef'),
('Yusuf', 'Yilmaz', '9998881222', '1984-10-14', 20, 'https://example.com/yusuf-yilmaz-photo.jpg', 'Chef'),
('Anna', 'Novak', '1112227770', '1991-05-28', 3, 'https://example.com/anna-novak-photo.jpg', 'C Cook'),
('Tomas', 'Novak', '7554446666', '1986-09-15', 3, 'https://example.com/tomas-novak-photo.jpg', 'B Cook'),
('Charlotte', 'Martin', '6332229999', '1993-01-20', 8, 'https://example.com/charlotte-martin-photo.jpg', 'A Cook'),
('Ravi', 'Sharma', '7776664446', '1980-04-18', 12, 'https://example.com/ravi-sharma-photo.jpg', 'Sous Chef'),
('Marta', 'Perez', '2221137777', '1988-08-10', 14, 'https://example.com/marta-perez-photo.jpg', 'Chef'),
('Matteo', 'Ricci', '4441552222', '1995-02-25', 2, 'https://example.com/matteo-ricci-photo.jpg', 'C Cook'),
('Alice', 'Rossi', '8084772222', '1982-06-30', 5, 'https://example.com/alice-rossi-photo.jpg', 'B Cook'),
('Hamza', 'Khan', '9998881131', '1987-09-14', 6, 'https://example.com/hamza-khan-photo.jpg', 'A Cook'),
('Nenson','Atam','3641373881','2000-10-1', 3, 'https://dm0qx8t0i9gc9.cloudfront.net/thumbnails/video/rZJIMvhmliwmde8a6/videoblocks-playful-afro-american-businessman-close-up-happy-cheerful-black-man-in-business-suit-on-blurred-background-smiling-face-of-dark-skinned-guy_bqxtve6qzq_thumbnail-1080_01.png','B Cook'),
('Maria', 'Kowalska', '1112225333', '1990-03-02', 11, 'https://example.com/maria-kowalska-photo.jpg', 'Sous Chef'),
('Jack','Solon','1513098087','1987-09-7', 9, 'https://get.pxhere.com/photo/man-person-people-portrait-professional-profession-smiling-senior-citizen-elder-face-happy-980074.jpg','Sous Chef'),
('Javier', 'Martinez', '1554443333', '1984-11-05', 19, 'https://example.com/javier-martinez-photo.jpg', 'Chef'),
('Emilia', 'Nowak', '3332921111', '1993-02-22', 2, 'https://example.com/emilia-nowak-photo.jpg', 'C Cook'),
('Nina', 'Ivanova', '7776665515', '1988-06-15', 4, 'https://example.com/nina-ivanova-photo.jpg', 'B Cook'),
('Alex', 'Andersson', '2261114444', '1985-10-12', 6, 'https://example.com/alex-andersson-photo.jpg', 'A Cook'),
('Daniel', 'Schmidt', '4445556666', '1992-03-28', 8, 'https://example.com/daniel-schmidt-photo.jpg', 'Sous Chef'),
('Enrique','Dalaz','1038500116','2001-02-25', 5, 'https://thumbs.dreamstime.com/b/serious-looking-young-man-portrait-29762325.jpg','Chef'),
('Sadau','Fernadez','0439871643','1997-02-22', 3, 'http://proheadshots.today/wp-content/uploads/2019/01/face-facial-hair-low.jpg','C Cook'),
('Laura', 'Silva', '8880676666', '1981-08-17', 17, 'https://example.com/laura-silva-photo.jpg','Chef'),
('Mikhail', 'Ivanov', '9998287777', '1986-11-10', 1, 'https://example.com/mikhail-ivanov-photo.jpg', 'C Cook'),
('Xi','Zing','1301435893','1993-11-19', 7, 'https://get.pxhere.com/photo/man-person-people-male-asian-portrait-young-chinese-professional-business-profession-hairstyle-confident-spokesperson-businessperson-white-collar-worker-922334.jpg','Sous Chef'),
('Sahar','Badim','1093610386','2005-03-11', 4, 'https://get.pxhere.com/photo/work-man-person-people-male-meeting-young-corporate-office-professional-business-profession-speaker-elder-job-meet-official-clergy-business-executive-businessperson-1079382.jpg','A Cook'),
('Hana', 'Samio', '4431559122','1990-12-28', 4, 'https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/15345c41332353.57a1ce9141249.jpg','B Cook'),
('Matthew','Ampton','4445552866','1995-05-03', 5, 'https://get.pxhere.com/photo/person-people-hair-photography-male-portrait-model-young-spring-studio-fresh-clean-blue-hairstyle-caucasian-attractive-photo-shoot-portrait-photography-1393146.jpg','A cook'),
('Sara', 'Larsson', '1112223343', '1995-01-20', 3, 'https://example.com/sara-larsson-photo.jpg', 'B Cook');


INSERT INTO expertise (first_name, last_name, country_name) VALUES
('Amir','Khan','Kuwait'),
('John', 'Doe', 'Italy'),
('Sahar','Badim','Kenya'),
('Matthew','Ampton','Canada'),
('Sadau','Fernadez','Portugal'),
('Sadau','Fernadez','Chile'),
('Andrew','Cooper','Chile'),
('Jack','Solon','Netherlands'),
('Jack','Solon','Morocco'),
('Hana','Samio','Thailand'),
('Hana','Samio','Argetina'),
('Matthew', 'Ampton','Thailand'),
('Maria', 'Garcia', 'Spain'),
('Maria', 'Garcia', 'Mexico'),
('Mohammed', 'Ali', 'Egypt'),
('Mohammed', 'Ali', 'Saudi Arabia'),
('Andrew','Cooper','Ireland'),
('Xi','Zing','China'),
('Xi','Zing','South Korea'),
('Anna', 'Smith', 'United Kingdom'),
('Enrique','Dalaz','Venezuela'),
('Enrique','Dalaz','Mexico'),
('Luca', 'Rossi', 'Italy'),
('Mia', 'Johnson', 'Greece'),
('Mia', 'Johnson', 'Norway'),
('Satoshi', 'Tanaka', 'Japan'),
('Satoshi', 'Tanaka', 'Indonesia'),
('Olga', 'Ivanova', 'Russia'),
('Olga', 'Ivanova', 'Canada'),
('Pablo', 'Hernandez', 'Spain'),
('Nenson','Atam','Nigeria'),
('Pablo', 'Hernandez', 'Argetina'),
('Fatima', 'Ali', 'India'),
('Fatima', 'Ali', 'Kuwait'),
('Thomas', 'Muller', 'Germany'),
('Thomas', 'Muller', 'France'),
('Yuki', 'Yamamoto', 'Japan'),
('Yuki', 'Yamamoto', 'China'),
('Sophie', 'Lefebvre', 'France'),
('Sophie', 'Lefebvre', 'Jamaica'),
('Rafael', 'Gonzalez', 'Spain'),
('Amir', 'Khan', 'Pakistan'),
('Elena', 'Petrova', 'Russia'),
('Fabio', 'Moreno', 'Italy'),
('Lily', 'Brown', 'United Kingdom'),
('Lily', 'Brown', 'Peru'),
('Muhammad', 'Chowdhury', 'Bangladesh'),
('Hannah', 'Andersen', 'Denmark'),
('Hannah', 'Andersen', 'Norway'),
('Ali', 'Al-Mansoori', 'United Arab Emirates'),
('Eva', 'Schneider', 'Germany'),
('Raj', 'Patel', 'India'),
('Julia', 'Santos', 'Brazil'),
('Julia','Santos', 'Saudi Arabia'),
('Kenji', 'Tanaka', 'Japan'),
('Isabella', 'Silva', 'Brazil'),
('David', 'Andersson', 'Sweden'),
('Anastasia', 'Kuznetsova', 'Russia'),
('Max', 'Schmidt', 'Germany'),
('Max', 'Schmidt', 'United States'),
('Sophia', 'Nguyen', 'Vietnam'),
('Sophia', 'Nguyen', 'Jamaica'),
('Mohammed', 'Al-Mansoori', 'United Arab Emirates'),
('Mohammed', 'Al-Mansoori', 'Vietnam'),
('Mohammed', 'Al-Mansoori', 'Iran'),
('Emma', 'Larsson', 'Sweden'),
('Emma', 'Larsson', 'South Korea'),
('Ahmed', 'El-Masry', 'Egypt'),
('Ahmed', 'El-Masry', 'Iran'),
('Emily', 'Garcia', 'Mexico'),
('Emily', 'Garcia', 'Venezuela'),
('Yusuf', 'Yilmaz', 'Turkey'),
('Yusuf', 'Yilmaz', 'Iraq'),
('Anna', 'Novak', 'Czech Republic'),
('Tomas', 'Novak', 'Czech Republic'),
('Charlotte', 'Martin', 'France'),
('Ravi', 'Sharma', 'India'),
('Ravi', 'Sharma', 'Indonesia'),
('Marta', 'Perez', 'Spain'),
('Matteo', 'Ricci', 'Italy'),
('Matteo', 'Ricci', 'Greece'),
('Alice', 'Rossi', 'Italy'),
('Hamza', 'Khan', 'Pakistan'),
('Hamza', 'Khan', 'Iraq'),
('Maria', 'Kowalska', 'Poland'),
('Maria', 'Kowalska', 'Australia'),
('Javier', 'Martinez', 'Spain'),
('Emilia', 'Nowak', 'Poland'),
('Nina', 'Ivanova', 'Russia'),
('Nina', 'Ivanova', 'Malta'),
('Alex', 'Andersson', 'Sweden'),
('Alex', 'Andersson', 'United States'),
('Daniel', 'Schmidt', 'Germany'),
('Daniel', 'Schmidt', 'Hungary'),
('Laura', 'Silva', 'Brazil'),
('Laura', 'Silva', 'United States'),
('Mikhail', 'Ivanov', 'Russia'),
('Mikhail', 'Ivanov', 'Australia'),
('Sara', 'Larsson', 'Turkey'),
('Sara', 'Larsson', 'Sweden');
