use busan;

#like 테이블
create table likeCtrl
	(likeId varchar(8),
	 likedBy varchar(20),
     visitId varchar(8),
	 primary key (likeId),
     constraint foreign key (likedBy) references member(id),
     constraint foreign key (visitId) references visit(visitId)
);

commit;

select * from visit;

update visit set likeCnt=0 where visitId='3';