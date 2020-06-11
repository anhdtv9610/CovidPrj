
DROP TABLE PositionHistoryDetail
go

CREATE TABLE PositionHistoryDetail (
       Id                   int NOT NULL,
       TimeOutId            int NOT NULL,
       Lng                  float NOT NULL,
       Lat                  float NOT NULL,
       [Address]              nvarchar(2000) NOT NULL,
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
       Radius               int NOT NULL,
       [TimeOut]            int NOT NULL,
       IsActive             int NOT NULL,
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



