-- this should cause an error as we added `RESTRICT` or `NO ACTION` which is the default
DELETE FROM addresses
WHERE id = 2;