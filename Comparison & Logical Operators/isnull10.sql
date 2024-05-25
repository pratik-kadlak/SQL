-- for checking null values we cannot use '=' or '!='
-- we have to use 'IS NULL' or 'IS NOT NULL' respectively

select * from books where author_lname is null;
select * from books where author_lname is not null;