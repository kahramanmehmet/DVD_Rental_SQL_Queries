-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- Q1: film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
-- Q2: film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
-- Q3: film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
-- Q4: film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

-- A1:
SELECT 
  AVG(rental_rate)
FROM film;

-- A2:
SELECT 
  COUNT(*)
FROM film
WHERE title LIKE 'C%';

-- A3:
SELECT
  MAX(length)
FROM film
WHERE rental_rate = '0.99';

-- A4:
SELECT
  COUNT(DISTINCT replacement_cost)
FROM film
WHERE length > 150;
