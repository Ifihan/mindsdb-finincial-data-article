SELECT * FROM files.stocks LIMIT 10;

CREATE MODEL 
  mindsdb.prices
FROM files
  (SELECT * FROM files.stocks)
PREDICT close;

SELECT *
FROM mindsdb.models
WHERE name='prices';

SELECT close, 
      close_explain 
FROM mindsdb.prices
WHERE date= '2023-04-13'
AND open= '161.22'
AND high= '162.06'
AND low= '159.78'
AND close= '160'
AND volume= '62000000'
AND Name= 'AAPL';