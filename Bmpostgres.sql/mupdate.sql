-- user
UPDATE "user" 
SET username = 'velez%',
password = 'linda123'
WHERE  username ilike 'adriana%';

-- post
UPDATE "post" SET  title = 'holis123', body = ''
	WHERE  author_id  = 1