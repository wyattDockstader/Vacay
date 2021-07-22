CREATE TABLE Accounts(
  id VARCHAR(255) NOT NULL primary key comment 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
  name varchar(255) NOT NULL comment 'Users given name',
  email varchar(255) NOT NULL comment 'Auth Email',
  picture varchar(255) NOT NULL comment 'Picture URL'
) default charset utf8 comment '';
INSERT INTO
  Accounts(id, name, email, picture)
VALUES
  (
    "60c11456ac32004489266387",
    "Wyatt Dockstader",
    "doc1776@outlook.com",
    "https://media-exp1.licdn.com/dms/image/C4E03AQEQIRNIDnfxkA/profile-displayphoto-shrink_200_200/0/1624414051762?e=1630540800&v=beta&t=27cdZfTAnjESpDqCAUU7NugGvMJxK713wnKDPGkrhdo"
  );
CREATE TABLE vacation(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
    familyName varchar(255) NOT NULL comment 'Traveling family last name',
    groupSize INT NOT NULL comment 'Number of people in party',
    destination varchar(255) NOT NULL comment 'Destination',
    departing DATETIME NOT NULL COMMENT 'Departing Date and Time',
    returning DATETIME NOT NULL COMMENT 'Returning Date and Time',
    creatorId VARCHAR(255) NOT NULL COMMENT 'FK: Account Id',
    FOREIGN KEY(creatorId) REFERENCES Accounts(id) ON DELETE CASCADE
  ) default charset utf8 comment '';
CREATE TABLE cruise(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'primary key',
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'create time',
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'update time',
    shipName VARCHAR(255) NOT NULL COMMENT 'Ship Name',
    vacationId INT REFERENCES vacation(id) ON DELETE CASCADE
  ) default charset utf8 comment '';
)