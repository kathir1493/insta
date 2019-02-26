CREATE table user_profile (userId BIGINT AUTO_INCREMENT PRIMARY key, userName varchar(100),emailId varchar(100));

create table media (fileId BIGINT AUTO_INCREMENT PRIMARY key,userId BIGINT, file MEDIUMTEXT,description varchar(500),photoLatitude varchar(50),
photoLongitude varchar(50),userLatitude varchar(50),userLongitude varchar(50),FOREIGN KEY (userId) REFERENCES user_profile (userId));

create table connections (connectionid BIGINT AUTO_INCREMENT primary key,userId BIGINT , followsId BIGINT,FOREIGN KEY (userId) REFERENCES user_profile (userId),
FOREIGN KEY (followsId) REFERENCES user_profile (userId));

create table hashtagMTB(hashTagId  BIGINT AUTO_INCREMENT primary key,description varchar(100));

create table hashTagEntries(entryId BIGINT AUTO_INCREMENT primary key,hashTagId BIGINT,fileId BIGINT,
FOREIGN KEY (hashTagId) REFERENCES hashtagMTB (hashTagId),
FOREIGN KEY (fileId) REFERENCES media (fileId));
