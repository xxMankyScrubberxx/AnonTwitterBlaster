--this is a hack job of a SQL script. I just use it as a note pad of sorts and shortcut for data inserts




create table Tags(
   TagID INT NOT NULL AUTO_INCREMENT,
   Tag VARCHAR(60) NOT NULL,
   TagSource VARCHAR(40) NOT NULL DEFAULT 'Twitter',
   TagCategory VARCHAR(40) NOT NULL,
   TagDesc VARCHAR(100) NOT NULL DEFAULT '',
   IsActive BIT(1) NOT NULL DEFAULT 1,
   IsValid BIT(1) NOT NULL DEFAULT 1,
   PRIMARY KEY ( TagID )
);


INSERT INTO Tags
(Tag, TagSource, TagCategory, TagDesc)
VALUES
('@POTUS','Twitter','Govt','US President'),
('@NATO','Twitter','Govt','NATO'),
('@schwarzenegger','Twitter','Friend','Arnold '),
('@MichelleObama','Twitter','Celeb','Michelle Obama'),
('@RonPaul','Twitter','Govt','US'),
('@hmqelizabeth','Twitter','Govt','The Queen'),
('@wenjiabao','Twitter','Govt','China')

('@elonmusk','Twitter',	'Tech',	'Tesla Twitter'),
('@FLOTUS','Twitter','Govt','First Lady'),
('@timcook','Twitter','Tech','Apple'),
('@borisjohnson','Twitter','Govt','PM'),
('@bundeskanzler','Twitter','Govt','Chancellor'),
('@EmmanuelMacron','Twitter','Govt','President'),
('@dellaitaliana','Twitter','Govt','President'),
('@RTErdogan','Twitter','Govt','President'),


('@SenShelby','Twitter','Govt','Senator')


INSERT INTO Tags
(Tag, TagSource, TagCategory, TagDesc)
VALUES
('@sanchezcastijon','Twitter','Govt','US Senator'),
('@SenShelby','Twitter','Govt','US Senator'),
('@SenDougJones','Twitter','Govt','US Senator'),
('@lisamurkowski','Twitter','Govt','US Senator'),
('@SenDanSullivan','Twitter','Govt','US Senator'),
('@SenJonKyl','Twitter','Govt','US Senator'),
('@JeffFlake','Twitter','Govt','US Senator'),
('@SenTomCotton','Twitter','Govt','US Senator'),
('@JohnBoozman','Twitter','Govt','US Senator'),
('@SenFeinstein','Twitter','Govt','US Senator'),
('@SenKamalaHarris','Twitter','Govt','US Senator'),
('@SenBennetCO','Twitter','Govt','US Senator'),
('@SenCoryGardner','Twitter','Govt','US Senator'),
('@ChrisMurphyCT','Twitter','Govt','US Senator'),
('@SenBlumenthal','Twitter','Govt','US Senator'),
('@SenatorCarper','Twitter','Govt','US Senator'),
('@ChrisCoons','Twitter','Govt','US Senator'),
('@SenBillNelson','Twitter','Govt','US Senator'),
('@marcorubio','Twitter','Govt','US Senator'),
('@SenDavidPerdue','Twitter','Govt','US Senator'),
('@SenatorIsakson','Twitter','Govt','US Senator'),
('@brianschatz','Twitter','Govt','US Senator'),
('@maziehirono','Twitter','Govt','US Senator'),
('@MikeCrapo','Twitter','Govt','US Senator'),
('@SenatorRisch','Twitter','Govt','US Senator'),
('@SenDuckworth','Twitter','Govt','US Senator'),
('@SenatorDurbin','Twitter','Govt','US Senator'),
('@SenDonnelly','Twitter','Govt','US Senator'),
('@SenToddYoung','Twitter','Govt','US Senator'),
('@ChuckGrassley','Twitter','Govt','US Senator'),
('@joniernst','Twitter','Govt','US Senator'),
('@SenPatRoberts','Twitter','Govt','US Senator'),
('@JerryMoran','Twitter','Govt','US Senator'),
('@SenateMajLdr','Twitter','Govt','US Senator'),
('@RandPaul','Twitter','Govt','US Senator'),
('@BillCassidy','Twitter','Govt','US Senator'),
('@SenJohnKennedy','Twitter','Govt','US Senator'),
('@SenAngusKing','Twitter','Govt','US Senator'),
('@SenatorCollins','Twitter','Govt','US Senator'),
('@ChrisVanHollen','Twitter','Govt','US Senator'),
('@SenatorCardin','Twitter','Govt','US Senator'),
('@senmarkey','Twitter','Govt','US Senator'),
('@SenWarren','Twitter','Govt','US Senator'),
('@SenGaryPeters','Twitter','Govt','US Senator'),
('@SenStabenow','Twitter','Govt','US Senator'),
('@amyklobuchar','Twitter','Govt','US Senator'),
('@SenTinaSmith','Twitter','Govt','US Senator'),
('@SenHydeSmith','Twitter','Govt','US Senator'),
('@SenatorWicker','Twitter','Govt','US Senator'),
('@clairecmc','Twitter','Govt','US Senator'),
('@RoyBlunt','Twitter','Govt','US Senator'),
('@SteveDaines','Twitter','Govt','US Senator'),
('@SenatorTester','Twitter','Govt','US Senator'),
('@SenatorFischer','Twitter','Govt','US Senator'),
('@BenSasse','Twitter','Govt','US Senator'),
('@SenCortezMasto','Twitter','Govt','US Senator'),
('@SenDeanHeller','Twitter','Govt','US Senator'),
('@SenatorShaheen','Twitter','Govt','US Senator'),
('@SenatorHassan','Twitter','Govt','US Senator'),
('@CoryBooker','Twitter','Govt','US Senator'),
('@SenatorMenendez','Twitter','Govt','US Senator'),
('@MartinHeinrich','Twitter','Govt','US Senator'),
('@SenatorTomUdall','Twitter','Govt','US Senator'),
('@SenSchumer','Twitter','Govt','US Senator'),
('@SenGillibrand','Twitter','Govt','US Senator'),
('@SenatorBurr','Twitter','Govt','US Senator'),
('@SenThomTillis','Twitter','Govt','US Senator'),
('@SenatorHeitkamp','Twitter','Govt','US Senator'),
('@SenJohnHoeven','Twitter','Govt','US Senator'),
('@SenSherrodBrown','Twitter','Govt','US Senator'),
('@SenRobPortman','Twitter','Govt','US Senator'),
('@jiminhofe','Twitter','Govt','US Senator'),
('@SenatorLankford','Twitter','Govt','US Senator'),
('@RonWyden','Twitter','Govt','US Senator'),
('@SenJeffMerkley','Twitter','Govt','US Senator'),
('@SenBobCasey','Twitter','Govt','US Senator'),
('@SenToomey','Twitter','Govt','US Senator'),
('@SenJackReed','Twitter','Govt','US Senator'),
('@SenWhitehouse','Twitter','Govt','US Senator'),
('@GrahamBlog','Twitter','Govt','US Senator'),
('@SenatorTimScott','Twitter','Govt','US Senator'),
('@SenatorRounds','Twitter','Govt','US Senator'),
('@SenJohnThune','Twitter','Govt','US Senator'),
('@SenAlexander','Twitter','Govt','US Senator'),
('@BobCorker','Twitter','Govt','US Senator'),
('@JohnCornyn','Twitter','Govt','US Senator'),
('@SenTedCruz','Twitter','Govt','US Senator'),
('@SenOrrinHatch','Twitter','Govt','US Senator'),
('@SenMikeLee','Twitter','Govt','US Senator'),
('@SenatorLeahy','Twitter','Govt','US Senator'),
('@SenatorSanders','Twitter','Govt','US Senator'),
('@timkaine','Twitter','Govt','US Senator'),
('@MarkWarner','Twitter','Govt','US Senator'),
('@PattyMurray','Twitter','Govt','US Senator'),
('@SenatorCantwell','Twitter','Govt','US Senator'),
('@SenCapito','Twitter','Govt','US Senator'),
('@Sen_JoeManchin','Twitter','Govt','US Senator'),
('@SenatorBaldwin','Twitter','Govt','US Senator'),
('@SenRonJohnson','Twitter','Govt','US Senator'),
('@SenatorEnzi','Twitter','Govt','US Senator'),
('@SenJohnBarrasso','Twitter','Govt','US Senator')


create table WarLinks(
   LinkID INT NOT NULL AUTO_INCREMENT,
   Link VARCHAR(60) NOT NULL,
   LinkCategory VARCHAR(40) NOT NULL,
   IsActive BIT(1) NOT NULL DEFAULT 1,
   CreateDate DATETIME DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY ( LinkID )
);

INSERT INTO WarLinks
(Link, LinkCategory)
VALUES
('https://www.youtube.com/watch?v=v7VJBCeDIG4",'death')
