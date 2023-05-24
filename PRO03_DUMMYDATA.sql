show databases;
use busan;

show tables;

alter table review add column regId varchar(8);

-- Member 계정 더미
insert into member values ('admin', '1234', '관리자', '01012341234', 'admin@naver.com', '경기도 고양시 일산서구', default);
insert into member values ('tyler', '1234', '조교행', '01012341234', 'tyler@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('faker', '1234', '이상혁', '01012341234', 'faker@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('narae', '1234', '김나래', '01012341234', 'narae@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('jungwoo', '1234', '박정우', '01012341234', 'jungwoo@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('seonjeong', '1234', '최선정', '01012341234', 'seonjeong@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('jiny', '1234', '유지니', '01012341234', 'jiny@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('bklove', '1234', '정봉길', '01012341234', 'bklove@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('binbin', '1234', '이성빈', '01012341234', 'binbin@naver.com', '경기도 고양시 일산동구', default);
insert into member values ('criminalcity', '1234', '마동석', '01012341234', 'criminalcity@naver.com', '경기도 화성시 중구', default);


-- Notice 계정 더미
insert into notice values ('000001', '테스트 더미글 1', '테스트 더미글 1번 입니다.', default, 'admin', '1.jpg', default);
insert into notice values ('000002', '테스트 더미글 2', '테스트 더미글 2번 입니다.', default, 'admin', '2.jpg', default);
insert into notice values ('000003', '테스트 더미글 3', '테스트 더미글 3번 입니다.', default, 'admin', '3.jpg', default);
insert into notice values ('000004', '테스트 더미글 4', '테스트 더미글 4번 입니다.', default, 'admin', '4.jpg', default);
insert into notice values ('000005', '테스트 더미글 5', '테스트 더미글 5번 입니다.', default, 'admin', '5.jpg', default);
insert into notice values ('000006', '테스트 더미글 6', '테스트 더미글 6번 입니다.', default, 'admin', '6.jpg', default);
insert into notice values ('000007', '테스트 더미글 7', '테스트 더미글 7번 입니다.', default, 'admin', '7.jpg', default);
insert into notice values ('000008', '테스트 더미글 8', '테스트 더미글 8번 입니다.', default, 'admin', '8.jpg', default);
insert into notice values ('000009', '테스트 더미글 9', '테스트 더미글 9번 입니다.', default, 'admin', '9.jpg', default);
insert into notice values ('000010', '테스트 더미글 10', '테스트 더미글 10번 입니다.', default, 'admin', '10.jpg', default);
insert into notice values ('000011', '테스트 더미글 11', '테스트 더미글 11번 입니다.', default, 'admin', '11.jpg', default);
insert into notice values ('000012', '테스트 더미글 12', '테스트 더미글 12번 입니다.', default, 'admin', '12.jpg', default);
insert into notice values ('000013', '테스트 더미글 13', '테스트 더미글 13번 입니다.', default, 'admin', '13.jpg', default);
insert into notice values ('000014', '테스트 더미글 14', '테스트 더미글 14번 입니다.', default, 'admin', '14.jpg', default);
insert into notice values ('000015', '테스트 더미글 15', '테스트 더미글 15번 입니다.', default, 'admin', '15.jpg', default);


-- cate
INSERT INTO CATEGORY VALUES('0101', '여행', '테마여행');
INSERT INTO CATEGORY VALUES('0102', '여행', '미식여행');
INSERT INTO CATEGORY VALUES('0201', '공연', '야구');
INSERT INTO CATEGORY VALUES('0202', '공연', '국제영화제');
INSERT INTO CATEGORY VALUES('0301', '축제', '봄');
INSERT INTO CATEGORY VALUES('0302', '축제', '여름');
INSERT INTO CATEGORY VALUES('0303', '축제', '가을');
INSERT INTO CATEGORY VALUES('0304', '축제', '겨울');


-- VISIT
INSERT INTO VISIT VALUES('1', '세계적인 관광도시 부산 5대 매력', '0101', 'SAMPLE주소', 'change1', 'change1', 'change1', default);
INSERT INTO VISIT VALUES('2', '빠르게 만나는 부산 봄 여행 추천 10', '0101', 'SAMPLE주소', 'change1', 'change1', 'change1', default);
INSERT INTO VISIT VALUES('3', '일러스트로 만나는 \'뉴진스 코드 in 부산\' 추천여행', '0101', 'SAMPLE주소', 'change1', 'change1', 'change1', default);
INSERT INTO VISIT VALUES('4', '부산 아이와 가볼만한 곳(겨울편)', '0101', 'SAMPLE주소', 'change1', 'change1', 'change1', default);
INSERT INTO VISIT VALUES('5', '2022 드라마 촬영지 순례(ft.재벌집 막내아들)', '0101', 'SAMPLE주소', 'change1', 'change1', 'change1', default);
INSERT INTO VISIT VALUES('6', '속 시원한 해장 별미 3선', '0102', 'SAMPLE주소', 'change1', 'change1', 'change1', default);
INSERT INTO VISIT VALUES('7', '오롯이 즐기는 여유, 부산 한옥카페 3선', '0102', 'SAMPLE주소', 'change1', 'change1', 'change1', default);

-- select * from visit;

-- SELECT VISITID FROM VISIT ORDER BY VISITID DESC LIMIT 1;


-- POKE
INSERT INTO POKE VALUES('1', 'tyler', '1');
INSERT INTO POKE VALUES('2', 'faker', '2');
INSERT INTO POKE VALUES('3', 'narae', '3');


-- QNA
INSERT INTO QNA VALUES('1', '질문1', '질문1입니다.', '1', '1', DEFAULT, 'faker', DEFAULT);
INSERT INTO QNA VALUES('2', '답변1', '답변1입니다.', '2', '1', DEFAULT, 'admin', DEFAULT);
INSERT INTO QNA VALUES('3', '질문2', '질문2입니다.', '1', '3', DEFAULT, 'faker', DEFAULT);
INSERT INTO QNA VALUES('4', '답변2', '답변2입니다.', '2', '3', DEFAULT, 'admin', DEFAULT);
INSERT INTO QNA VALUES('5', '질문3', '질문3입니다.', '1', '5', DEFAULT, 'faker', DEFAULT);
INSERT INTO QNA VALUES('6', '답변3', '답변3입니다.', '2', '5', DEFAULT, 'admin', DEFAULT);


-- Regi 계정 더미
select * from registration;
insert into registration values ('000001', 'tyler', '1', '2023-06-03', '여행완료');
insert into registration values ('000002', 'tyler', '2', '2023-06-06', '여행완료');
insert into registration values ('000003', 'tyler', '3', '2023-06-13', '여행완료');
insert into registration values ('000004', 'faker', '1', '2023-06-16', '여행완료');
insert into registration values ('000005', 'faker', '2', '2023-06-30', '여행완료');
insert into registration values ('000006', 'faker', '3', '2023-07-03', '여행완료');
insert into registration values ('000007', 'narae', '1', '2023-08-03', '여행완료');
insert into registration values ('000008', 'narae', '2', '2023-09-03', '여행완료');
insert into registration values ('000009', 'narae', '3', '2023-10-03', '여행완료');
insert into registration values ('000010', 'seonjeong', '1', '2023-06-23', '여행완료');
insert into registration values ('000011', 'seonjeong', '2', '2023-06-09', '여행완료');
insert into registration values ('000012', 'seonjeong', '3', '2023-06-28', '여행완료');
insert into registration values ('000013', 'binbin', '1', '2023-06-03', '여행완료');
insert into registration values ('000014', 'binbin', '1', '2023-06-03', '여행완료');
insert into registration values ('000015', 'binbin', '1', '2023-06-03', '여행완료');


-- review 더미글




-- UPDATE CATEGORY SET CATENAME='미식여행' WHERE CATECODE='0102';

SELECT * FROM CATEGORY;
SELECT * FROM CATEGORY WHERE CATECODE LIKE '01%';
SELECT * FROM CATEGORY WHERE CATEGROUP LIKE '여행';


INSERT INTO REGISTRATION VALUES();

SELECT COUNT(*) from poke group by visitId;

update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='admin';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='binbin';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='bklove';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='criminalcity';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='faker';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='jiny';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='jungwoo';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='narae';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='seonjeong';
update member set pw='66S0dVtwHSD9Wcb/3csUwXVmNWTALQ4srV+zr+1ihAGXernG/RkIyS5Ypuj2EhwHZHM0Rg==' where id='tyler';

COMMIT;