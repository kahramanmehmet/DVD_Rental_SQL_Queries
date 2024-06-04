-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- Q1: country tablosunda bulunan country sütunundaki ülke isimlerinden 'A' karakteri ile başlayıp 'a' karakteri ile sonlananları sıralayınız.
-- Q2: country tablosunda bulunan country sütunundaki ülke isimlerinden en az 6 karakterden oluşan ve sonu 'n' karakteri ile sonlananları sıralayınız.
-- Q3: film tablosunda bulunan title sütunundaki film isimlerinden en az 4 adet büyük ya da küçük harf farketmesizin 'T' karakteri içeren film isimlerini sıralayınız.
-- Q4: film tablosunda bulunan tüm sütunlardaki verilerden title 'C' karakteri ile başlayan ve uzunluğu (length) 90 dan büyük olan ve rental_rate 2.99 olan verileri sıralayınız.

-- A1:
SELECT 
  country
FROM country
WHERE country LIKE 'A%a';

-- A2:
SELECT 
  country
FROM country
WHERE country LIKE '%_____n';

-- A3:
SELECT
  title
FROM film
WHERE title ILIKE '%t%t%t%t%';

-- A4:
SELECT * 
FROM film
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
