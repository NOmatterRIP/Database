SELECT * FROM book

SELECT * 
FROM book
WHERE (publisher = '굿스포츠'
OR publisher = '대한미디어')
AND price <=8000;

SELECT * FROM book
ORDER BY price DESC, publisher ASC;
SELECT bookid, bookname, publisher, price
FROM book
WHERE bookname LIKE '_구%'
AND price < 20000
ORDER BY publisher DESC, price ASC;

SELECT bookname, price
FROM Book
WHERE price <=10000 OR price >= 20000
ORDER BY price DESC;

SELECT *
FROM book
WHERE publisher = '대한미디어' AND price >= 20000 AND price <=30000;

SELECT count(*) AS '권수' FROM book;

SELECT MIN(price)
FROM book;

SELECT custid '고객번호', COUNT(*) '권수'
FROM orders
GROUP BY custid;

SELECT bookid, '도서번호', SUM(saleprice)
FROM orders
GROUP BY bookid;

SELECT publisher, COUNT(*)
FROM book
GROUP BY publisher

SELECT publisher, COUNT(*), AVG(price), MAX(price)
FROM book
WHERE publisher IN ('굿스포츠', '대한미디어')
GROUP BY publisher;

SELECT bookid, SUM(saleprice)
FROM orders
GROUP BY bookid
HAVING SUM(saleprice) >= 20000;

SELECT SUM(saleprice), COUNT(*)
FROM orders
WHERE custid=1;

SELECT publisher, COUNT(*), MAX(price), MIN(price)
FROM book
GROUP BY publisher;

SELECT COUNT(*)