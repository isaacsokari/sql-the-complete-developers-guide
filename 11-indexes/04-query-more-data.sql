-- SELECT * FROM addresses
-- WHERE street = 'Teststreet' AND city = 'Munich';

EXPLAIN ANALYZE
SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';