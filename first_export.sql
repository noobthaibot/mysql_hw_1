INSERT INTO `products` SET `product_name`= 'Hot Pizza', `product_price`= '120 uah', `product_type`= 'Pizza', `product_compound` = 'Cheese, Chili Peper, Tomatoes, Sausage, Hot Sauce'
DELETE FROM `products` WHERE `product_type` = 'Pizza'
DELETE FROM `products`
INSERT INTO `users` SET `adress`= 'Kramatorsk, Akademichna , 60', `email` = 'dgugik@ukr.net', `fullname`= 'Lazurenko Roman', `orders` = 'Hot Pizza', `phone` = '0997738551'
SELECT `fullname`, `orders` FROM `users`
SELECT * FROM `users`
UPDATE `users` SET `orders` = 'Cheese Pizza' WHERE `orders` = 'Hot Pizza'
UPDATE `users` SET `fullname` = 'John Doe' WHERE `fullname` = 'Lazurenko Roman'
SELECT * FROM `users` WHERE `fullname` = 'John Doe'
SELECT * FROM `users` WHERE `orders` = 'Cheese Pizza'
INSERT INTO `basket` SET `basket_id` = 1, `date` = CURRENT_TIMESTAMP, `product_id` = 2, `user_id` = 1
INSERT INTO `orders` SET `basket_id` = 1, `date` = CURRENT_TIMESTAMP, `quantity` = 2, `user_id` = 1
INSERT INTO `products` SET `product_name` = 'Pepperoni', `product_price` = '130 uah', `product_type` = 'Pizza', `product_compound` = 'Pepperoni, Cheese, Tomato Sauce'
INSERT INTO `products` SET `product_name` = 'Beefburger', `product_price` = '100 uah', `product_type` = 'Burger', `product_compound` = 'Beef, Hot Sauce, Mayonese'
INSERT INTO `products` SET `product_name` = 'Cheeseburger', `product_price` = '95 uah', `product_type` = 'Burger', `product_compound` = 'Beef, Cheese Sauce, Mayonese'
INSERT INTO `products` SET `product_name` = 'Margareite', `product_price` = '100 uah', `product_type` = 'Pizza', `product_compound` = 'Totamo Sauce, Cheese, Vegetables'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Vasila Stusa, 56', `email` = 'testmail1@test.te', `fullname` = 'Leonid Kravchuk', `orders` = 'Hot Pizza, Beefburger', `phone`= '880055535'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Vasila Stusa, 23', `email` = 'testmail122@test.te', `fullname` = 'Leonid Kuchma', `orders` = 'Cheese Pizza, Beefburger', `phone`= '8800151515'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Parkova, 44', `email` = 'testmail133@test.te', `fullname` = 'Viktor Uschenko', `orders` = 'Cheese Pizza, Cheeseburger', `phone`= '8800155515'
INSERT INTO `users` SET `adress` = 'Kramatorsk, Parkova, 27', `email` = 'testmai33@test.te', `fullname` = 'Viktor Yanukovich', `orders` = 'Cheese Pizza, Cheeseburger', `phone`= '8860155515'
INSERT INTO `products` SET `product_name`= 'Hot Pizza', `product_price`= '120 uah', `product_type`= 'Pizza', `product_compound` = 'Cheese, Chili Peper, Tomatoes, Sausage, Hot Sauce'
INSERT INTO `orders` SET `basket_id` = 3, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 5
INSERT INTO `orders` SET `basket_id` = 4, `date` = CURRENT_TIMESTAMP, `quantity` = 3, `user_id` = 3
INSERT INTO `orders` SET `basket_id` = 5, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 1
INSERT INTO `orders` SET `basket_id` = 6, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 4
INSERT INTO `orders` SET `basket_id` = 3, `date` = CURRENT_TIMESTAMP, `quantity` = 1, `user_id` = 5
INSERT INTO `basket` SET `basket_id` = 2, `date` = CURRENT_TIMESTAMP, `product_id` = 4, `user_id` = 2
INSERT INTO `basket` SET `basket_id` = 3, `date` = CURRENT_TIMESTAMP, `product_id` = 2, `user_id` = 3
INSERT INTO `basket` SET `basket_id` = 4, `date` = CURRENT_TIMESTAMP, `product_id` = 5, `user_id` = 4
INSERT INTO `basket` SET `basket_id` = 5, `date` = CURRENT_TIMESTAMP, `product_id` = 3, `user_id` = 1
INSERT INTO `basket` SET `basket_id` = 6, `date` = CURRENT_TIMESTAMP, `product_id` = 4, `user_id` = 5





