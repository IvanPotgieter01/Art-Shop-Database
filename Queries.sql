--Retrieve the top 5 most expensive art pieces (name and price):
SELECT art_piece_name, price
FROM (
    SELECT art_piece_name, price
    FROM ART_PIECE
    ORDER BY price DESC
)
WHERE ROWNUM <= 5;
