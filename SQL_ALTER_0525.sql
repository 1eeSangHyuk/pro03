select * from poke;
select * from member;
select * from visit;



update visit set likeCnt=10 where visitId='3';

alter table visit add column visitMapLink varchar(300);

update visit set visitMapLink='' where visitId='';

select a.pokeId, a.pokedBy, a.visitId, b.visitTitle, b.visitAddr from poke a, visit b where a.visitId = b.visitId and pokedBy='tyler';

commit;

