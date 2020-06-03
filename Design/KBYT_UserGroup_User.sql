
DROP TABLE RegisIsolation
go

CREATE TABLE RegisIsolation (
       Id                   bigint NOT NULL,
       Username             nvarchar(50) NOT NULL,
       ProvinceCode         nvarchar(50),
       DistrictCode         nvarchar(50),
       RegisAddress         nvarchar(200) NOT NULL,
       RegisIsolationStatus int NOT NULL,
       RegisDate            datetime,
       FinishIsolationStatus int NOT NULL,
       FinishDate           datetime,
       CancelIsolationStatus int NOT NULL,
       CancelDate           datetime
)
go


ALTER TABLE RegisIsolation
       ADD CONSTRAINT XPKRegisIsolation PRIMARY KEY CLUSTERED (Id ASC)
go


DROP TABLE TestHealth
go

CREATE TABLE TestHealth (
       Id                   bigint NOT NULL,
       Username             nvarchar(50) NOT NULL,
       IsFever              int,
       IsCough              int,
       IsDyspnoeic          int,
       IsTired              int,
       HealthStatus         int,
       HealthUpdDate        datetime
)
go


ALTER TABLE TestHealth
       ADD CONSTRAINT XPKTestHealth PRIMARY KEY CLUSTERED (Id ASC)
go


DROP TABLE [User]
go

CREATE TABLE [User] (
       Username             nvarchar(50) NOT NULL,
       GroupCode            nvarchar(50) NOT NULL,
       Password             nvarchar(50) NOT NULL,
       FullName             nvarchar(50) NOT NULL,
       BirthDay             datetime NOT NULL,
       Sex                  nvarchar(50) NOT NULL,
       CMND                 nvarchar(50) NOT NULL,
       ProvinceCode         nvarchar(50),
       DistrictCode         nvarchar(50),
       Address              nvarchar(200) NOT NULL,
       IsActive             int,
       CreatedDarte         datetime,
       UpdatedDate          datetime
)
go


ALTER TABLE [User]
       ADD CONSTRAINT XPKUser PRIMARY KEY CLUSTERED (Username ASC)
go


DROP TABLE Mst_District
go

CREATE TABLE Mst_District (
       DistrictCode         nvarchar(50) NOT NULL,
       ProvinceCode         nvarchar(50),
       DistrictName         nvarchar(200) NOT NULL
)
go


ALTER TABLE Mst_District
       ADD CONSTRAINT XPKMst_District PRIMARY KEY CLUSTERED (
              DistrictCode ASC)
go


DROP TABLE Mst_Province
go

CREATE TABLE Mst_Province (
       ProvinceCode         nvarchar(50) NOT NULL,
       ProvinceName         nvarchar(200) NOT NULL
)
go


ALTER TABLE Mst_Province
       ADD CONSTRAINT XPKMst_Province PRIMARY KEY CLUSTERED (
              ProvinceCode ASC)
go


ALTER TABLE RegisIsolation
       ADD CONSTRAINT R_1262
              FOREIGN KEY (ProvinceCode)
                             REFERENCES Mst_Province  (ProvinceCode)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE RegisIsolation
       ADD CONSTRAINT R_1261
              FOREIGN KEY (DistrictCode)
                             REFERENCES Mst_District  (DistrictCode)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE RegisIsolation
       ADD CONSTRAINT R_1257
              FOREIGN KEY (Username)
                             REFERENCES [User]  (Username)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE TestHealth
       ADD CONSTRAINT R_1263
              FOREIGN KEY (Username)
                             REFERENCES [User]  (Username)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE [User]
       ADD CONSTRAINT R_1260
              FOREIGN KEY (ProvinceCode)
                             REFERENCES Mst_Province  (ProvinceCode)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE [User]
       ADD CONSTRAINT R_1259
              FOREIGN KEY (DistrictCode)
                             REFERENCES Mst_District  (DistrictCode)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE [User]
       ADD CONSTRAINT R_1255
              FOREIGN KEY (GroupCode)
                             REFERENCES UserGroup  (GroupCode)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE Mst_District
       ADD CONSTRAINT R_1258
              FOREIGN KEY (ProvinceCode)
                             REFERENCES Mst_Province  (ProvinceCode)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go



