show databases;
use busan;

alter table visit modify column visitMapLink varchar(500);

alter table visit add column visitText text;

update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26095.334375386585!2d129.14287459879404!3d35.158695740425635!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688d5c0efe075f%3A0x9963b1d5c163ac98!2z7ZW07Jq064yA7ZW07IiY7JqV7J6l!5e0!3m2!1sko!2skr!4v1685305527863!5m2!1sko!2skr' where visitId='1';
update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.919198132895!2d129.08035557717176!3d35.15863585850239!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568ecbceaf8917b%3A0xb679658efae6d19a!2z7Zmp66C57IKwIOyghOunneyJvO2EsA!5e0!3m2!1sko!2skr!4v1685305630681!5m2!1sko!2skr' where visitId='2';
update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3260.403146006715!2d129.21279147717257!3d35.19642585645115!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688df2c51276f1%3A0xebe28acdea1ee316!2z66Gv642w7JuU65OcIOyWtOuTnOuypOyymCDrtoDsgrA!5e0!3m2!1sko!2skr!4v1685305771017!5m2!1sko!2skr' where visitId='3';
update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6524.2760994709415!2d129.1135161499948!3d35.15317771312869!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568ed2f27c70ec7%3A0xff6df0e14d9216fb!2z6rSR7JWI66as7ZW07IiY7JqV7J6l!5e0!3m2!1sko!2skr!4v1685305804861!5m2!1sko!2skr' where visitId='4';
update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3263.271886617099!2d129.0906765771712!3d35.1248880603327!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568ec5d1331bfa9%3A0x3adca6591cf8b00e!2z7Jyg7JeU7Y-J7ZmU6riw64WQ6rSA!5e0!3m2!1sko!2skr!4v1685305870389!5m2!1sko!2skr' where visitId='5';
update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d969.3626429185473!2d128.98511576682714!3d35.19315838004338!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3568c01f97250959%3A0xcb7d7eb03492e9c5!2z7IK865297J6s7LKp6rGw66as6rO17JiB7KO87LCo7J6l!5e0!3m2!1sko!2skr!4v1685305975703!5m2!1sko!2skr' where visitId='6';
update visit set visitMapLink='https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.2186165691924!2d129.19400537717203!3d35.176103357554524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35688db5e4844e2f%3A0x412584b792cffa95!2z7IiY7JuU6rK97ZmU!5e0!3m2!1sko!2skr!4v1685306023690!5m2!1sko!2skr' where visitId='7';

update visit set visitMapLink='' where visitId='';

update visit set visitImgMain='./img/main/1_main.jpg' where visitId='1';
update visit set visitImgMain='./img/main/2_main.jpg' where visitId='2';
update visit set visitImgMain='./img/main/3_main.jpg' where visitId='3';
update visit set visitImgMain='./img/main/4_main.jpg' where visitId='4';
update visit set visitImgMain='./img/main/5_main.jpg' where visitId='5';
update visit set visitImgMain='./img/main/6_main.jpg' where visitId='6';
update visit set visitImgMain='./img/main/7_main.jpg' where visitId='7';
update visit set visitImgMain='./img/main/' where visitId='';

update visit set visitImgSub1='./img/sub1/1_sub1.jpg' where visitId='1';
update visit set visitImgSub1='./img/sub1/2_sub1.jpg' where visitId='2';
update visit set visitImgSub1='./img/sub1/3_sub1.jpg' where visitId='3';
update visit set visitImgSub1='./img/sub1/4_sub1.jpg' where visitId='4';
update visit set visitImgSub1='./img/sub1/5_sub1.jpg' where visitId='5';


update visit set visitImgSub1='./img/sub1/' where visitId='';

update visit set visitImgMain='./img/sub2/' where visitId='';

update visit set visitImgMain='./img/sub2/' where visitId='';


update visit set visitText='' where visitId='';
update visit set visitText='가을이 깊어갑니다. 찬바람이 불기 시작하는 요즘 같은 때 생각나는 음식이 있죠? 바로 뜨끈뜨끈한 국물에 시원한 맛이 일품인 해장국이죠. 전국 어느 도시나 그 도시를 대표하는 해장 별미가 하나씩은 있죠? 부산에도 해장 별미로 유명한 음식들이 있답니다. 자, 오늘은 시원하고, 담백한 부산 해장 별미를 찾아 떠나볼까요?

부산의 해장국, 재첩국

‘재첩국 사이소~~ ’ 80년대 초반까지 부산의 새벽을 깨웠던 아지매들이 있다. 재첩국 양동이를 머리에 이고 산복도로 골목골목을 누비며 재첩국을 팔았던 재첩국 아지매가 그들이다. 재첩국은 낙동강 어귀에 지천으로 널린 재첩을 넣고 끓여 시원하게 먹던 부산의 향토음식이다.
재첩국은 고소한 단맛이 나는 재첩에 부추를 넣어 뽀얗게 우려낸 음식이다. 소금으로만 간을 하기 때문에 재료의 맛에 충실하다. 재첩국물에 재첩과 부추를 올려 먹으면 재첩의 단백함에 부추의 향이 더한 맛에 감탄하게 된다. 재첩국과 함께 나오는 짭조름한 고등어조림은 조금 싱거운 재첩국에 입맛을 더한다. 시원하면서 단백한 해장을 원한다면 부산의 해장 별미, 재첩국을 먹어보자.
이전에는 낙동강 지천에 재첩이 나서 재첩국만큼 흔한 음식이 없었으나 지금은 부산 삼락동에 재첩국 전문점이 모여 부산의 옛 맛을 이어가고 있다. 삼락동에 간다면 맛있는 재첩국도 맛보고 삼락천 근처에 형성된 ‘삼락 재첩거리’도 거닐어보자.

바다를 품은 해장국, 대구탕

우리나라의 대표적인 영화제인 부산국제영화제를 하면 수많은 영화인들과 관객들이 부산을 찾는다. 부산의 밤을 즐기며 술을 한잔한 영화인들과 관객들이 다음 날 아침 꼭 먹는 유명한 해장 별미가 있다. 바로 대구탕이다. 입이 커서 대구(大口)라 불리는 대구는 비린 맛이 없는 담백한 맛으로 특히 겨울철 해장 별미로 알려져 있다.
대구는 예로부터 버릴 것이 없는 생선으로 유명하다. 대구의 탱탱한 살과 무로 우려된 뜨끈한 대구탕 국물을 먹으면 담백한 바다의 맛이 입안을 감돌며 속을 시원하게 풀어준다. 시원한 국물을 먹은 후에 쫄깃한 식감의 대구 살과 푹 우려낸 무를 김에 싸서 간장에 살짝 찍어 먹으면 그 맛 또한 일품이다.
부산은 항구도시답게 곳곳에 대구탕 맛집이 많다. 특별히 정해놓은 맛집이 없다면 달맞이고개 쪽을 추천한다. 바다의 맛을 품은 해장 별미 대구탕도 먹고 경치 좋은 산책로를 거닐며 여행의 재미를 더하는 선택이 될 것이다.

해장국의 대명사, 콩나물 해장국

해장국의 대명사는 누가 뭐라고 해도 콩나물 해장국이다. 술 한 잔 마신 다음 날, 시원하고 담백한 콩나물국으로 속을 달래보지 않은 사람이 있을까? 콩나물에는 간 보호 기능이 있는 아스파라긴산과 숙취 해소에 도움이 되는 아르기닌이 들어 있어 해장국으로는 최고로 알려져 있다.
뚝배기에 팔팔 끓여 나오는 국물 한 숟가락에 속을 푼다. 콩나물 해장국은 시원하면서, 칼칼한 맛이 일품이다. 콩나물과 함께 무엇을 넣는가에 따라 종류가 정말 다양하다. 시원하고 담백한 맛을 즐기는 사람은 콩나물에 계란을 풀어먹는 ‘콩나물 해장국’을 찾는다. 이 시원한 맛에 좀 더 얼큰하고 개운한 맛을 원한다면 황태해장국이 제격이다.
도심과 가장 가까운 해변이자 골목 곳곳 이색공간이 많은 광안리에도 유명한 해장국 맛집이 많다. 새하얀 백사장과 푸른 바다, 구경만 해도 즐거운 다양한 가게들. 광안리를 맘껏 즐긴 후에 콩나물 해장국으로 마무리하는 푸근한 하루도 한 번쯤 계획해 보자.
찬바람이 쌀쌀하게 불어오는 계절, 속 시원한 다양한 해장 별미로 부산 여행의 맛을 더해 보자.' where visitId='6';


select * from category;
select * from member;
select * from notice;
select * from poke;
select * from qna;
select * from registration;
select * from review;
select * from visit;

alter table registration add column tourDate date;

select b.regId, b.visitId, a.visitTitle, a.visitAddr, b.regDate, b.tourDate, b.rStatus from visit a, registration b where b.registeredBy='binbin' and a.visitId = b.visitId;

-- registration - regDate 다음 tourDate
-- visit - visitImgSub2 다음 visitText

commit;