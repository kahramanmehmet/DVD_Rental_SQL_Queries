-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- Q1: film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.
-- Q2: film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?
-- Q3: film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?
-- Q4: country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?
-- Q5: city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?

-- A1:
SELECT DISTINCT replacement_cost FROM film;

-- A2:
SELECT COUNT(DISTINCT replacement_cost) FROM film;

-- A3:
SELECT COUNT(DISTINCT title) FROM film WHERE title LIKE 'T%' AND rating = 'G';

-- A4:
SELECT COUNT(*) FROM country WHERE country LIKE '_____';

-- A5:
SELECT COUNT(*) FROM city WHERE city ILIKE '%r';
