
DROP TABLE ConnectRate
go

CREATE TABLE ConnectRate (
       UserRating           nvarchar(50) NOT NULL,
       IdWarning            int NOT NULL,
       IsRating             int NOT NULL,
       Rating               int NULL,
       CreatedRate          datetime
)
go


ALTER TABLE ConnectRate
       ADD CONSTRAINT XPKConnectRate PRIMARY KEY CLUSTERED (
              UserRating ASC, IdWarning ASC)
go


ALTER TABLE ConnectRate
       ADD CONSTRAINT R_1268
              FOREIGN KEY (IdWarning)
                             REFERENCES PositonWarning  (Id)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


ALTER TABLE ConnectRate
       ADD CONSTRAINT R_1267
              FOREIGN KEY (UserRating)
                             REFERENCES [User]  (Username)
                             ON DELETE NO ACTION
                             ON UPDATE NO ACTION
go


