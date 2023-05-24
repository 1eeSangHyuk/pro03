select a.visitId, b.cateCode, b.cateName, a.visitTitle, a.likeCnt from visit a, category b where a.visitCateCode = b.cateCode;

select * from visit;
select * from category;

select SUBSTR(cateCode, 1, 2) as cateCode, cateGroup from category where catecode like '%01';

SELECT * FROM CATEGORY WHERE CATEGROUP='여행';