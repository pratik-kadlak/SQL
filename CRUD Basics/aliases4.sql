-- SQL aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.
-- An alias only exists for the duration of that query.
-- An alias is created with the AS keyword.

SELECT cat_id AS id, name FROM cats; -- this change is only temporary for this query

-- real name does not change