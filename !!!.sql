create table test_info(
 tinum int AUTO_INCREMENT PRIMARY key,
 tiid varchar(20) not null,
 tipwd varchar(20) not null,
 tiname varchar(20) not null,
 tibirth date not null,
 tiemail varchar(50) not null,
 tihobby varchar(20),
 tiaddress varchar(50) not null,
 tiphone varchar(13) not null,
 tiage int not null
);

select * from test_info;
desc test_info;

insert into test_info(tiid, tipwd, tiname, tibirth, tiemail, tihobby, tiaddress, tiphone, tiage)
 values('test2', 'test2', '길동', '2018-10-16', 'test@test.com', '영화감상', '인천 남동', '010-0000-0000', '21');
 