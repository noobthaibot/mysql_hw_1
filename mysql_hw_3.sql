SELECT * FROM `users` WHERE `email` LIKE `%gmail.com`;
SELECT `number`, `fio` WHERE `year` IS NULL;
UPDATE `certificates` SET `series`= 'ВН', `number` = 25444 WHERE `user_id` = 7;
DELETE FROM `users` DECS LIMIT 5;
SELECT MIN(`count_students`) FROM `organization` WHERE `type_id` = 5;
SELECT COUNT(`rating`) FROM `practice` WHERE `practice_id` = 1888;
SELECT COUNT(*) FROM `organizations`;
SELECT * FROM `news` ORDER BY `created_at`;
SELECT `phones`, `names` FROM `directors` WHERE `organization` LIKE 'ВУЗ%';
SELECT `birthday` FROM `students` WHERE DATEDIFF(year, GETDATE()) = 1995;
SELECT `publish_date`, `body` FROM `publishes` LIMIT 5;
SELECT `region_id`, COUNT(`region_id`) FROM `schools` GROUP BY `region_id`;