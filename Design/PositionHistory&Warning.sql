
DROP TABLE PositionHistoryDetail
go

CREATE TABLE PositionHistoryDetail (
       Id                   int NOT NULL,
       TimeOutId            int NOT NULL,
       Lng                  float NOT NULL,
       Lat                  float NOT NULL,
       [Address]            nvarchar(2000) NOT NULL,
       IsWarning            int NOT NULL,
       VerifyDate           datetime
)
go


ALTER TABLE PositionHistoryDetail
       ADD CONSTRAINT XPKPositionHistoryDetail PRIMARY KEY CLUSTERED (
              Id ASC)
go


DROP TABLE PositionHistory
go

CREATE TABLE PositionHistory (
       Id                   int NOT NULL,
       Username             nvarchar(50) NOT NULL,
       [TimeOut]            int NOT NULL,
       CreatedDate          datetime
)
go


ALTER TABLE PositionHistory
       ADD CONSTRAINT XPKPositionHistory PRIMARY KEY CLUSTERED (Id ASC)
go


DROP TABLE PositonWarning
go

CREATE TABLE PositonWarning (
       Id                   int NOT NULL,
       [Name]               nvarchar(50) NOT NULL,
       VerifyDate           datetime,
       Note                 nvarchar(2000),
       Lng                  float NOT NULL,
       Lat                  float NOT NULL,
       [Address]            nvarchar(2000),
       PatientGroup         nvarchar(50),
       [TimeOut]            int NOT NULL,
       Radius               int NOT NULL,
       IsCallAPI            int NOT NULL,
       IsActive             int NOT NULL,
       Username             nvarchar(50),
       CreatedDate          datetime,
       UpdatedDate          datetime
)
go


ALTER TABLE PositonWarning
       ADD CONSTRAINT XPKPositonWarning PRIMARY KEY CLUSTERED (Id ASC)
go


ALTER TABLE PositionHistoryDetail
       ADD CONSTRAINT R_1265
              FOREIGN KEY (TimeOutId)
                             REFERENCES PositionHistory  (Id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE PositionHistory
       ADD CONSTRAINT R_1264
              FOREIGN KEY (Username)
                             REFERENCES [User]  (Username)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go

ALTER TABLE PositonWarning
       ADD CONSTRAINT R_1266
              FOREIGN KEY (Username)
                             REFERENCES [User]  (Username)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go



---------------------------------------------------------------------

Alter table [User]
	Add NumberRating int null


Alter table [User]
	Add Rating float null

Alter table [User]
	Add IsRegisAdmin int null

---- update IsRegisAdmin: admin: 1, user: 0
update t
set t.IsRegisAdmin = 1
from [User] t
where (1=1)
	and t.GroupCode = 'ADMIN'
	--or t.GroupCode = 'SADMIN'
;
update t
set t.IsRegisAdmin = 0
from [User] t
where (1=1)
	and t.GroupCode = 'USER'
;

-----------------------------------------------

update t
set t.NumberRating = 0
from [User] t
where (1=1)
;


update t
set t.Rating = 0
from [User] t
where (1=1)
;

Alter table [User]
	alter column Rating float not null

Alter table [User]
	alter column NumberRating int not null

Alter table [User]
	alter column IsRegisAdmin int not null


--------------------------------------------------------

insert into UserGroup(GroupCode, GroupName, [Description], IsActive, CreatedDate, UpdatedDate)
values ('SADMIN', 'SAdmin', N'Quản trị hệ thống', 1, '2020-05-29 00:00:00.000', '2020-05-29 00:00:00.000')
