-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS companies;
DROP TABLE IF EXISTS industry_membership;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS salespersons;


-- CREATE TABLES
CREATE TABLE salespersons (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT
);

CREATE TABLE contacts (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  email TEXT,
  phone_number TEXT,
  address TEXT,
  company_id INTEGER,
  tiltle TEXT
);
CREATE TABLE activities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  calls_emails TEXT,
  time TEXT,
  notes TEXT
  salespersons_id INTEGER,
  contacts_id INTEGER
);

CREATE TABLE companies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE industries (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT
);

CREATE TABLE industry_membership (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  company_id INTEGER
  industries_id INTEGER
);


