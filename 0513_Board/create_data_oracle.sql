drop table board;
drop table users;

create table users(
	id 			varchar2(28) 	primary key,
	password 	varchar2(8)		not null,
	name 		varchar2(30)	not null,
	role 		varchar2(5)		default 'User'
)

create table board(
	seq			number(5) 		primary key,
	title		varchar2(200)	not null,
	nickname	varchar2(30)	not null,
	content		varchar2(2000)	not null,
	regdate		date 			default sysdate,
	cnt			number(5)		default 0,
	userid		varchar2(8),
	constraint board_userid_fk foreign key(userid) references users(id)
)

insert into users values('gurum', 'gurum123', 'ä����', 'Admin');
insert into users values('abc', 'abc123', 'ȫ�浿', 'User');
insert into users values('guest', 'guest123', '�Ӳ���', 'Guest');

insert into board(seq, title, nickname, content, regdate, userid) 
values(1, 'ù ��° ��ϱ�', '�߱��ŵ�', 'ù ��° ��ϱ��Դϴ�.', '2012-02-05', 'gurum');

insert into board(seq, title, nickname, content, regdate, userid) 
values(2, '�� ��° ��ϱ�', '�߱��ŵ�', '�� ��° ��ϱ��Դϴ�.', '2012-03-15', 'gurum');

insert into board(seq, title, nickname, content, regdate, userid) 
values(3, '�� ��° ��ϱ�', '�߱��ŵ�', '�� ��° ��ϱ��Դϴ�.', '2012-03-03', 'gurum');

insert into board(seq, title, nickname, content, regdate, userid) 
values(4, '�� ��° ��ϱ�', '�߱��ŵ�', '�� ��° ��ϱ��Դϴ�.', '2012-05-17', 'gurum');

insert into board(seq, title, nickname, content, regdate, userid) 
values(5, 'ù ��° ��ϱ�', '���׳�', 'ù ��° ��ϱ��Դϴ�.', '2012-05-19', 'guest');

insert into board(seq, title, nickname, content, regdate, userid) 
values(6, '�� ��° ��ϱ�', '���׳�', '�� ��° ��ϱ��Դϴ�.', '2012-12-25', 'guest');

insert into board(seq, title, nickname, content, regdate, userid) 
values( (select nvl(max(seq), 0)+1 from board), '�� ��° ��ϱ�', '���׳�', '�� ��° ��ϱ��Դϴ�.', '2012-12-25', 'guest');


select * from users;

select * from board;



create table husers(
	seq			number(5)		primary key,
	name		varchar2(20)	not null,
	password	varchar2(20)	not null,
	email		varchar2(50)	not null,
	age			number(3)		default 0,
	gender		number(1)		not null
)



select * from board where title like '%a%'

select * from board where content like '%%'




