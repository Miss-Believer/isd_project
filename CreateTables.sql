Use [sms2023]
go

CREATE TABLE Movies (
	MovieID int PRIMARY KEY, 
	MovieName varchar(255) NOT NULL,
	Rating float,
	Director varchar(255),
	ReleaseYear smallint,
	Duration time,
	Stars varchar(255),
	Genres varchar(255),
	Country varchar(255),
	MovieDescription text,
	Date_of_created datetime(6),
	PreviewImageId int);
GO

CREATE TABLE TVSeries (
	SeriesID int PRIMARY KEY, 
	SeriesName varchar(255) NOT NULL,
	Rating float,
	Director varchar(255),
	ReleaseYear smallint,
	Duration varchar(255),
	Stars varchar(255),
	Genres varchar(255),
	Country varchar(255),
	SeriesDescription text,
	Date_of_created datetime(6),
	PreviewImageId int);
GO

CREATE TABLE Books (
	BookID int PRIMARY KEY, 
	BookName varchar(255) NOT NULL,
	Author varchar(255) NOT NULL,
	Rating float,
	ReleaseYear smallint,
	Country varchar(255),
	Genres varchar(255),
	BookDescription text,
	Date_of_created datetime(6),
	PreviewImageId int);
GO

CREATE TABLE Courses (
	CourseID int PRIMARY KEY, 
	CourseName varchar(255) NOT NULL,
	Area varchar(255) NOT NULL,
	Author varchar(255),
	Rating float,
	ReleaseYear smallint,
	CourseDescription text,
	Date_of_created datetime(6),
	PreviewImageId int);
GO

CREATE TABLE Users (
	UserID int PRIMARY KEY,
	UserName varchar(255) NOT NULL,
	Department varchar(255),
	Email varchar(255),
	UserPassword varchar(1000),
	Date_of_created datetime(6),
	UserImageID bigint);
GO

CREATE TABLE Courses_Users (
	UsersID int,
	CoursesID int);
GO

CREATE TABLE Images (
  ImageID bigint PRIMARY KEY,
  Bytes longblob,
  Content_type varchar(255),
  Is_preview_image bit(1),
  ImageName varchar(255),
  Original_file_name varchar(255),
  Size bigint,
  CourseID bigint);

  CREATE TABLE User_role (
  UserID bigint NOT NULL,
  UserRole varchar(255));

ALTER TABLE Courses_Users ADD FOREIGN KEY (UsersID)
REFERENCES Users(UserID);

ALTER TABLE Courses_Users ADD FOREIGN KEY (CoursesID)
REFERENCES Courses(CourseID);

ALTER TABLE Images ADD FOREIGN KEY (CourseID)
REFERENCES Courses(CourseID);

ALTER TABLE User_role ADD FOREIGN KEY (UserID)
REFERENCES Users(UserID);
GO
