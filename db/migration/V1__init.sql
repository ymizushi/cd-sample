create table console_user(
  id   integer PRIMARY KEY,
  hashed_password varchar(511),
  name varchar(255)
);

create table activity(
  id   integer PRIMARY KEY,
  data JSON
);
