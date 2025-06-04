
SELECT a.author_id, a.author_name, b.category,sum(b.price*s.sales) AS TOTAL_SALES
FROM book AS b
JOIN book_sales AS s
JOIN author AS a
ON b.book_id = s.book_id and b.author_id = a.author_id
WHERE date_format(sales_date, "%Y-%m") = "2022-01"
GROUP BY a.author_id, b.category
ORDER BY a.author_id ASC, b.category DESC;