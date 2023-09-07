UPDATE post 
set body = ""
where author_id = (SELECT id from user WHERE username like "verito%")