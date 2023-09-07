INSERT INTO  user(username,password)
VALUES ("abril",(SELECT password FROM user WHERE username like "%verito%"));
