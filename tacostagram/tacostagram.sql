DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS followers;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS likes;
DROP TABLE IF EXISTS comments;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  user_name TEXT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  location TEXT
);

create table followers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    follower_user_id INTEGER
);


CREATE TABLE posts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  createdby_user_id INTEGER,
  created_time TEXT,
  last_modified_time TEXT,
  url TEXT,
  title TEXT
);

CREATE TABLE likes (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  isLiked INTEGER --ENUM(TRUE, FALSE)
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  post_id INTEGER,
  user_id INTEGER,
  created_time TEXT,
  last_modified_time TEXT,
  notes TEXT,
  repliedTo_user_id INTEGER
);


