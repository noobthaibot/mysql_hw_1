SELECT name FROM genres INNER JOIN books ON books.genre_id = genres.id
SELECT us.surname, us.name, a.name FROM users us INNER JOIN areas a ON us.area_id = a.id
SELECT COUNT(n.id), c.name FROM news n LEFT JOIN categories c ON n.category_id = c.id
SELECT c.name, a.name FROM cities с LEFT JOIN areas a ON c.area_id = a.id
SELECT s.name, d.name FROM schools LEFT JOIN districts d ON s.district_id = d.id