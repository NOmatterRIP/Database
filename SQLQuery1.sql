SELECT * FROM book

SELECT * 
FROM book
WHERE (publisher = '�½�����'
OR publisher = '���ѹ̵��')
AND price <=8000;

SELECT * FROM book
ORDER BY price DESC, publisher ASC;
SELECT bookid, bookname, publisher, price
FROM book
WHERE bookname LIKE '_��%'
AND price < 20000
ORDER BY publisher DESC, price ASC;

SELECT bookname, price
FROM Book
WHERE price <=10000 OR price >= 20000
ORDER BY price DESC;

SELECT *
FROM book
WHERE publisher = '���ѹ̵��' AND price >= 20000 AND price <=30000;

SELECT count(*) AS '�Ǽ�' FROM book;

SELECT MIN(price)
FROM book;

SELECT custid '����ȣ', COUNT(*) '�Ǽ�'
FROM orders
GROUP BY custid;

SELECT bookid, '������ȣ', SUM(saleprice)
FROM orders
GROUP BY bookid;

SELECT publisher, COUNT(*)
FROM book
GROUP BY publisher

SELECT publisher, COUNT(*), AVG(price), MAX(price)
FROM book
WHERE publisher IN ('�½�����', '���ѹ̵��')
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