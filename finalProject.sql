USE myRecordStore;

INSERT INTO Artist VALUES('MET654','Metallica')
INSERT INTO Artist VALUES('AL148','Alabama')
INSERT INTO Artist VALUES('IC885','Ice Cube')
INSERT INTO Artist VALUES('EJ326','Elton John')
INSERT INTO Artist VALUES('ZZ745','ZZ Top')
INSERT INTO Artist VALUES('BEE852','Beethoven');

INSERT INTO Genre VALUES('HM','Heavy Metal')
INSERT INTO Genre VALUES('CTY','Country')
INSERT INTO Genre VALUES('HPP','Hip Hop')
INSERT INTO Genre VALUES('ACY','Adult Contemporary')
INSERT INTO Genre VALUES('CLR','Classic Rock')
INSERT INTO Genre VALUES('CLAS','Classical');

INSERT INTO ZipCode VALUES('49643','Interlochen','MI')
INSERT INTO ZipCode VALUES('90210','Los Angeles','CA')
INSERT INTO ZipCode VALUES('47853','Battle Creek','MI')
INSERT INTO ZipCode VALUES('78624','Orlando','FL')
INSERT INTO ZipCode VALUES('53641','Nashville','TN')
INSERT INTO ZipCode VALUES('24685','Providence','RI');

INSERT INTO Album VALUES('554499','HM','MET654','Master of Puppets','$25.00')
INSERT INTO Album VALUES('225577','CTY','AL148','Mountain Music','$22.00')
INSERT INTO Album VALUES('668844','HPP','IC885','War & Peace','$19.99')
INSERT INTO Album VALUES('221133','ACY','EJ326','Duets','$23.99')
INSERT INTO Album VALUES('558822','CLR','ZZ745','Eliminator','$19.99')
INSERT INTO Album VALUES('446677','CLAS','BEE582','The Symphonies','$12.99');

INSERT INTO Customer VALUES('11020','Lyle','Alexander','9603 Innwood','49643')
INSERT INTO Customer VALUES('11365','James','Hetfield','5682 Main St','90210')
INSERT INTO Customer VALUES('11875','Jason','Newstead','469 Lund Rd','47853')
INSERT INTO Customer VALUES('11695','Kirk','Hammett','741 Poplar Dr','78624')
INSERT INTO Customer VALUES('11522','Kristina','Clark','2362 Elm St','53641')
INSERT INTO Customer VALUES('11644','Jayce','McNamara','1102 Oak Lane','24685');

INSERT INTO Orders VALUES('43LDA','11020','2/11/2016','$25.00')
INSERT INTO Orders VALUES('852JH','11365','1/30/2020','$22.00')
INSERT INTO Orders VALUES('79JW23','11875','11/2/2018','$19.99')
INSERT INTO Orders VALUES('963RF','11695','2/10/2019','$23.99')
INSERT INTO Orders VALUES('41GJ80','11522','1/1/2021','$19.99')
INSERT INTO Orders VALUES('546TN2','11644','3/6/2020','$12.99');

INSERT INTO OrderDetail VALUES('ID-789','43LDA','554499','1','$25.00')
INSERT INTO OrderDetail VALUES('ID-231','852JH','225577','1','$22.00')
INSERT INTO OrderDetail VALUES('ID-652','79JW23','668844','1','$19.99')
INSERT INTO OrderDetail VALUES('ID-885','963RF','221133','1','$23.99')
INSERT INTO OrderDetail VALUES('ID-700','41GJ80','558822','1','$19.99')
INSERT INTO OrderDetail VALUES('ID-635','546TN2','446677','1','$12.99');