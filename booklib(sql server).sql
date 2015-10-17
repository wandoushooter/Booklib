CREATE TABLE beansystemuser (
  userid varchar(20) NOT NULL,
  username varchar(50) NOT NULL,
  pwd varchar(32) NOT NULL,
  usertype varchar(20) NOT NULL,
  createDate datetime NOT NULL,
  removeDate datetime DEFAULT NULL,
  PRIMARY KEY (userid)
) 

CREATE TABLE beanpublisher (
  pubid varchar(20) NOT NULL,
  publisherName varchar(50) NOT NULL,
  address varchar(200) DEFAULT NULL,
  PRIMARY KEY (pubid)
) 

CREATE TABLE beanbook (
  barcode varchar(20) NOT NULL,
  bookname varchar(200) NOT NULL,
  pubid varchar(20)  NULL,
  price float NOT NULL,
  state varchar(20)  DEFAULT '在库',
  PRIMARY KEY (barcode)
) 

CREATE TABLE beanreadertype (
  readerTypeId int NOT NULL ,
  readerTypeName varchar(50) NOT NULL,
  lendBookLimitted int NOT NULL,
  PRIMARY KEY (readerTypeId)
  
) 

CREATE TABLE beanreader (
  readerid varchar(20) NOT NULL,
  readerName varchar(50) NOT NULL,
  readerTypeId int NOT NULL,
  lendBookLimitted int NOT NULL,
  createDate datetime NOT NULL,
  creatorUserId varchar NOT NULL,
  removeDate datetime DEFAULT NULL,
  removerUserId varchar DEFAULT NULL,
  stopDate datetime DEFAULT NULL,
  stopUserId varchar DEFAULT NULL,
  PRIMARY KEY (readerid)
)

CREATE TABLE beanbooklendrecord (
  id int NOT NULL ,
  readerid varchar(20) NOT NULL,
  bookBarcode varchar(20) NOT NULL,
  lendDate datetime NOT NULL,
  returnDate datetime,
  lendOperUserid varchar(20) NOT NULL,
  returnOperUserid varchar(20),
  penalSum float DEFAULT 0,
  PRIMARY KEY (id)
)

INSERT INTO beansystemuser
(userid,
username,
pwd,
usertype,
createDate,
removeDate)
VALUES
('admin',
'管理员',
'admin',
'管理员',
'2013-01-01',
null);

