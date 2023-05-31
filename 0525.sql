show databases;
use busan;

select a.visitId, b.cateCode, b.cateName, a.visitTitle, a.likeCnt from visit a, category b where a.visitCateCode = b.cateCode;

select * from visit;
select * from category;

select SUBSTR(cateCode, 1, 2) as cateCode, cateGroup from category where catecode like '%01';

SELECT * FROM CATEGORY WHERE CATEGROUP='여행';

select * from review;

select * from poke;
select * from visit;
select * from category;

select visitId, count(visitId) from poke group by visitId;

(select a.visitId, b.cateCode, b.cateName, a.visitTitle, a.likeCnt from visit a, category b where a.visitCateCode = b.cateCode);

-- list
select a.*, count(b.visitId) as pokeCnt from (select a.visitId, b.cateCode, b.cateName, a.visitTitle, a.likeCnt from visit a, category b where a.visitCateCode = b.cateCode) a left join poke b on a.visitId = b.visitId group by a.visitId;

select a.*, count(b.visitId) as pokeCnt from (select a.*, b.cateName from visit a, category b where a.visitCateCode = b.cateCode) a left join poke b on a.visitId = b.visitId group by a.visitId;

-- detail
select a.*, count(b.visitId) as pokeCnt from (select * from visit where visitId=1) a left join poke b on a.visitId = b.visitId group by a.visitId;

-- select a.visitId, a.cateCode, a.cateName, a.visitTitle, a.likeCnt, count(a.visitId) from (select a.visitId, b.cateCode, b.cateName, a.visitTitle, a.likeCnt from visit a, category b where a.visitCateCode = b.cateCode) a group by a.visitId;

delete from visit where visitId='8';

select * from registration;

select b.regId, b.visitId, b.registeredBy, a.visitTitle, a.visitAddr, b.regDate, b.tourDate, b.rStatus from visit a, registration b where a.visitId = b.visitId;

commit;
