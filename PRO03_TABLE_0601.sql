show databases;
use busan;

alter table review add column regId varchar(8);

-- 카테고리
create table category(	
	cateCode varchar(6) primary key,
    cateGroup varchar(50) not null,
    cateName varchar(50) not null
);

-- 여행
create table visit(	
	visitId varchar(8) primary key,
    visitTitle varchar(200) not null,
    visitCateCode varchar(50),
    visitAddr varchar(100) not null,
    visitMapLink varchar(500),
    visitImgMain varchar(100),
    visitImgSub1 varchar(100),
    visitImgSub2 varchar(100),
    visitText text,
    likeCnt int default 0,
    foreign key(visitCateCode) references category(cateCode)
);



#poke 테이블
create table poke
	(pokeId varchar(8),
	 pokedBy varchar(20),
     visitId varchar(8),
	 primary key (pokeId),
     constraint foreign key (pokedBy) references member(id),
     constraint foreign key (visitId) references visit(visitId)
);


             
# 여행 등록 테이블
create table registration
	(regId varchar(8),
     registeredBy varchar(20),
     visitId varchar(8),
     regDate datetime default current_timestamp,
     tourDate date,
     rStatus varchar(20) default '여행신청',
     primary key (regId),
     constraint foreign key (registeredBy) references member(id),
     constraint foreign key (visitId) references visit(visitId)
);

alter table registration add column 

commit;