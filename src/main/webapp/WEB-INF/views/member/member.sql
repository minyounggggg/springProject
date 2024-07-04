show tables;

create table member (
	idx       	int not null auto_increment,		/* 회원 고유번호 */
	mid       	varchar(30) not null,				/* 회원 아이디(중복불허) */
	pwd       	varchar(100) not null,			/* 회원 비밀번호(SHA256 암호화 처리) */
	nickName	varchar(20) not null,				/* 회원 별명(중복불허/수정가능) */
	name		varchar(20) not null,				/* 회원 성명 */
	gender    	char(2)	not null default '남자',	/* 회원 성별 */
	birthday  	datetime default now(),			/* 회원 생일 */
	tel			varchar(15),								/* 전화번호 : 010-1234-5678 */
	address   	varchar(100),								/* 주소(다음 API 활용) */
	email		varchar(60) not null,		  	/* 이메일(아이디/비밀번호 분실시에 사용)-형식체크필수 */
	petName		varchar(20) not null,				/* 반려동물이름 */
	petBirthday  	datetime default now(),			/* 반려동물 생일 */
	photo		varchar(100) default 'noimage.jpg', /* 프로필(반려동물) 사진 */
	userDel   	char(2)  default 'NO',			/* 회원 탈퇴신청여부(NO:현재 활동중, OK:탈퇴신청중) */
	point		int default 100,						/* 회원 누적포인트(가입포인트100점, 1회방문시 10포인트증가, 1일 최대 50포인트까지 허용, 물건구매시 100원당 1포인트 증가 */
	visitCnt  	int default 0,							/* 총 방문횟수 */
	startDate 	datetime default now(),			/* 최초 가입일 */
	lastDate  	datetime default now(),			/* 마지막 접속일 */
	primary key (idx),
	unique(mid)
);

insert into member values (default, 'admin', '1234', '관리맨','관리자','남자',default,'010-1234-4567','050/서울시/그린아파트/100동/101호','abc@atom.com','멍멍이',default,default,default,default,default,default,default);

desc member;

select * from member;

drop table member;