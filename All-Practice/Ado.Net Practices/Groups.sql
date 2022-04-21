CREATE DATABASE Groups
USE Groups

CREATE TABLE Students
(
  Id int identity(1,1) primary key,
  FullName nvarchar(255) NOT NULL
)

