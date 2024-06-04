-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- Q1: film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
-- Q2: film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
-- Q3: film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
-- Q4: payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

-- A1:
SELECT COUNT(*)
FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- A2:
SELECT COUNT(*) FROM film
WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

-- A3:
SELECT * FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)

-- A4:
SELECT payment.customer_id, customer.first_name, customer.last_name, COUNT(payment.customer_id) FROM payment
INNER JOIN customer ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id,customer.first_name, customer.last_name
ORDER BY COUNT(payment.customer_id) DESC;
