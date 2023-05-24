show databases;
use busan;

select * from visit;

alter table visit rename column visistImgMain to visitImgMain;
alter table visit rename column visistImgSub1 to visitImgSub1;
alter table visit rename column visistImgSub2 to visitImgSub2;

update visit set visitImgMain=null where visitId='1';
update visit set visitImgSub1=null where visitId='1';
update visit set visitImgSub2=null where visitId='1';
update visit set visitImgMain=null where visitId='2';
update visit set visitImgSub1=null where visitId='2';
update visit set visitImgSub2=null where visitId='2';
update visit set visitImgMain=null where visitId='3';
update visit set visitImgSub1=null where visitId='3';
update visit set visitImgSub2=null where visitId='3';
update visit set visitImgMain=null where visitId='4';
update visit set visitImgSub1=null where visitId='4';
update visit set visitImgSub2=null where visitId='4';
update visit set visitImgMain=null where visitId='5';
update visit set visitImgSub1=null where visitId='5';
update visit set visitImgSub2=null where visitId='5';
update visit set visitImgMain=null where visitId='6';
update visit set visitImgSub1=null where visitId='6';
update visit set visitImgSub2=null where visitId='6';
update visit set visitImgMain=null where visitId='7';
update visit set visitImgSub1=null where visitId='7';
update visit set visitImgSub2=null where visitId='7';

commit;