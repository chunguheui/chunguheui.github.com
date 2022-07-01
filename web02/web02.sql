create table customer(cid varchar2(12) primary key,     -- �����̵�
    upw varchar2(40) not null,      -- ����й�ȣ
    uname varchar2(20) not null,    -- ����
    tel varchar2(13) not null,      -- ��ȭ��ȣ
    email varchar2(50) not null,    -- �̸���
    birth date,                     -- �������
    regdate date default SYSDATE,   -- ������
    visited number(10),             -- �α���(�湮Ƚ��)
    upoint number(10) default 1000, -- ������Ʈ(5ȸ �湮�� ���� 10����Ʈ�� ����, �̿��ı� �ۼ��� ���� 100����Ʈ�� ����)
    urank number(2) default 9       -- �����(1:�ְ������, 2:�Ϲݰ�����, 3:VIPȸ��, 4:���ȸ��, 9:�Ϲ�ȸ��)
);
desc customer;
-- alter table customer modify urank number(2) default 9;
-- ��(customer) ���̺� ���� ������ �߰�
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('admin','1234','������','010-2848-1234','admin@yeosu.go.kr','2022-05-10',1);
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('cuh','1231','������','010-3348-4321','cuh@kakao.com','1984-05-12',2);
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('seul','4321','������','010-6353-3014','seul@gmail.com','1998-07-14',3);
insert into customer(cid, upw, uname, tel, email, birth, urank) values ('relea','1111','������','010-7329-1993','relea@hanmail.net','1983-02-14',4);
insert into customer(cid, upw, uname, tel, email, birth) values ('moana','3333','��Ƴ�','010-9407-9611','moana@naver.com','1987-10-03');
insert into customer(cid, upw, uname, tel, email, birth) values ('hontas','2222','ȥŸ��','010-3740-2896','hontas@daum.com','1991-08-14');
insert into customer(cid, upw, uname, tel, email, birth) values ('jaess','4444','�罺��','010-5576-3289','jaess@naver.com','1988-05-04');
insert into customer(cid, upw, uname, tel, email, birth) values ('poon','7777','��Ǭ��','010-8200-5633','poon@gmail.com','1985-06-27');

-- ��(customer) ���̺� ���� ������ ����
update customer set upw=?, tel=?, email=?, birth=?, urank=? where cid=?;
update customer set visited=1;

-- ��(customer) ���̺� ���� ������ ����
delete from customer where cid=?;

-- ��(customer) ���̺� ���� ������ ��ȸ
select * from customer where cid=?;
select * from customer;


-- ����(tourlist) ���̺� ����
create table tourlist(
    ppno number(11) not null, 
    pid varchar2(10) primary key,                       -- ��Ҿ��̵�
    pname varchar2(40) not null,                        -- ��Ҹ�
    ptype varchar2(20) not null,                        -- ��ұ���
    pcoment varchar2(600) not null,                     -- ��Ҽ���
    pimg1 varchar2(50),                                 -- ����̹��� ���
    pimg2 varchar2(50),                                 -- ����̹���2 ���
    pimg3 varchar2(50),                                 -- ��ҽ����1 ���
    pimg4 varchar2(50)                                 -- ����̹���3 ���
);
-- ���� �ε���(������) �߰�
create sequence scott.tour_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
-- pid ù ��° ���� ���� : A:�������, B:��ȭ����, C:����, D:����, E:����, F:ü��, G:������
-- pid �� ��° �����ڵ� ���� A - 11:��, 12:�غ�, 13:��, 14:����, 15:�ڹ���/�ڶ�ȸ, 16:�����׽ü�, 17:��ȭ�������, 18:�����Ǵ�������, 19:��Ÿ
-- pid �� ��° �����ڵ� ���� B - 11:��ȭ�������, 12:����, 13:ü�����, 14:������, 15:���Ĺ�ȭ��, 16:����������, 17:��Ÿ��ȭ����
-- pid �� ��° �����ڵ� ���� C - 11:ȣ��, 12:����, 13:�ܵ�, 14:���, 15:�ι�, 16:�Խ�Ʈ�Ͽ콺, 17:ķ�μ���, 18:������, 19:��Ÿ����
-- pid �� ��° �����ڵ� ���� D - 11:�ѽ�, 12:Ƚ��, 13:�߽�, 14:���, 15:�Ͻ�, 16:�н�, 17:����, 18:�����ƽ�, 19:��Ÿ�Ĵ�
-- pid �� ��° �����ڵ� ���� E - 11:�������, 12:�������, 13:Ư�깰�Ǹ���, 14:����/����, 15:�ֹ�����, 16:5����, 17:���ŷ���, 18:���̺����, 19:��Ÿ����
-- pid �� ��° �����ڵ� ���� F - 11:�����ü�, 12:ü��ü�, 13:�����ü�, 14:ķ�νü�, 15:�����ü��, 16:�̻�ü��, 17:���ý�����, 18:��Ʈ����, 19:VRü��
-- pid �� ��° �����ڵ� ���� G - 11:�������, 12:�ÿܹ���, 13:�ó�����, 14:��������, 15:�ý�, 16:������������, 17:��Ʈī, 18:����ũ, 19:���������
--                          - 21:ö��-ȣ����, 22:ö��-������, 23:ö��-���ؼ�, 24:ö��-KTX
--                          - 31:������, 32:������, 33:��Ʈ, 34:ũ����, 35:���ù�뿩, 36:���ε��湮�װ�༱��
--                          - 41:��������, 42:���ְ���, 43:������, 44:û�ְ���, 45:�ؿܰ���, 46:������Ÿ
-- pid �� ��° �����ڵ� ���� H - 11:�ڽ�����

-- ����(tourlist) ���̺� ���� ������ �߰�
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'A110001', '������', 'place', '������ �߽ɰ����� �� 10������ �Ÿ��� ��ġ�� ������, ������ �Ա� �����忡�� �� 15�� ����, ������ ���� ���� ������ �����Ѵ�. �� ���� �ѱ��� �Ƹ��ٿ� �� 100���� ������ �� ���� ��ŭ ��ġ�� ������, �������� �Ѵ��� �����ٺ��̴� ������� �ڻ������ �����Ǿ� �־� ���Ͼϰ� ���Ҿ� �ѷ����� ���� ������Ʈ�� �������� �ǰ� �ִ�.',
'./img/odong_bg.jpg', './img/odong1.jpg','./img/odong2.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'B110002', '�����źϼ�����', 'festival', 'ȣ����ȭ�� ����, �����ǽ��� �Ӿ�, ���俹���� ����̶�� 3������� ����, �츮������ ���������� ����ϰ� �ִ� ��53ȸ �����źϼ������� �������� �ʴ��մϴ�. ���������� �Ӷ��� �¸��� �̲����� ȣ������, �źϼ��� â���ߴ� â������',
'./img/geobukseon0.jpg', './img/geobukseon2.jpg','./img/geobukseon3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'C110003', '�ҳ�į ����ȣ��', 'hotel', '���� 4�� ���� ������ �������� 2012��������ڶ�ȸ�忡 ��ġ�� �ҳ�į ������ ������ ���� ��ġ �ִ� ���� �ӹ��� �����Դϴ�.
�ӹ����� ��ġ�� �ִ� ǰ�� �ִ� ���񽺿� ���عٴٸ� ���� �����ϴ� �ڽ��� ���׸���, ������ ȯ��� ÷�� ������ ������ ���͸� �����Ͽ� Ư���� �е���� Ư���� ������ ��ٸ��� �ֽ��ϴ�.', 
'./img/sonocam0.jpg', './img/sonocam2.jpg','./img/sonocam3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'D110004', '��λ�û�', 'food', '���� ���� ��õ 1�� ��λ�û� ��ٸ��� �η�����~! �پ��� �ػ깰�� Ǫ���� ������~! ������ 7�� 15-2�� ������, ���� ���� 11�� 30�� ���� ���� 10�� ���� �����մϴ�. ���Ǵ� 061-652-0003���� ���ֽø� �����ϰ�����, �湮�Ͻô� ��� �е鿡�� �ֻ��� ���񽺿� �丮�� �����ϰڽ��ϴ�.', 
'./img/ubsasia0.jpg', './img/ubsasia2.jpg','./img/ubsasia3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'E110005', '����������', 'market', '�������� ���깰�� �Ƿ��� �ֿ� ��� ǰ���� �����������, �������ȿ������͹̳ΰ� ����������������� ������ ��� ����� �Ÿ��� �־� �̽��ϰ� �پ��� ���깰���� �ŷ��ǰ� �ִ�. ������ �ȿ� �ִ� ǳ���Ÿ��� �̽��� ������ ����ȸ�� ã�� ������ ���������� ���� ã�� ������, �԰Ÿ� ����� Ǫ���� �νɵ� ����� �� �ִ�. �̷��� �������� ���� 6�ÿ� ������ �����Ͽ� ���� 8�ÿ� �����Ѵ�.', 
'./img/seomarket0.jpg', './img/seomarket2.jpg','./img/seomarket3.jpg');
insert into tourlist(ppno, pid, pname, ptype, pcoment, pimg1, pimg2, pimg3) values (tour_seq.nextval, 'F110006', '������ö�ݿ���', 'experience', '�������� �ؾ������ ���� �� �ִ� �ؾ���°�! ���簡(���), ����Į���� �� 380������ �پ��� �ؾ� �������� ��ġ�� �̺�Ʈ�� ������ ��, ����Ƹ����̴�.', 
'./img/aquaplanet0.jpg', './img/aquaplanet2.jpg','./img/aquaplanet3.jpg');

-- ����(tourlist) ���̺� ���� ������ ����
update tourlist set pname=?, ptype=?, pcoment=?, pimg1=?, pimg2=?, pimg3=?, pimg4=? where pid=?;

-- ����(tourlist) ���̺� ���� ������ ����
delete from tourlist where pid=?;

-- ����(tourlist) ���̺� ���� ������ �˻�
select * from tourlist where pid=?;

-- �̿��ı�(impression) ���̺� ����
create table impression(
    ino number primary key,     -- �̿��ı��ȣ
    ititle varchar2(50) not null,                       -- �̿��ı� ����
    iplace varchar2(50) not null,                       -- �̿��ı� ��Ҹ�
    itodate date not null,                              -- �̿������
    ifromdate date not null,                            -- �̿�������
    icontent varchar2(500) not null,                    -- �̿�Ұ�
    ipic1 varchar2(50),                                 -- �湮����1
    ipic2 varchar2(50),                                 -- �湮����2
    cid varchar2(12),                                   -- �ۼ���
    ipw varchar2(40),                                   -- �ۼ��ۺ�й�ȣ
    idate date default sysdate,                         -- �ۼ���
    viewcnt number                                  -- ��Ƚ��
);
-- �̿��ı�(impression) �ε���(������) ����
create sequence scott.im_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;

-- �̿��ı�(impression) ���� ������ �߰�
insert into impression values (im_seq.nextval, '�������� ��������', '���Ͼ��ڽ�', '2022-05-03', '2022-05-04', '���൵�� ���������ε鲲 �ٷ� ���������� �����ϴ� �޽����� �����߾����ϴ�.������ ���� �����ѿ����̿����ϴ�',
'./impression/impression1.jpg','','kye','1234','',1);
insert into impression values (im_seq.nextval, '��������~~��', '��ȭ����', '2022-03-16', '2022-03-18', 'Ȧ�� ���� ������ ó�� �Ͽ����ϴ� ������ �����Ÿ� �̿��Ͽ� �ó����� ���� ���ϰ� �̿� �Ͽ���� ��°���� �ݿ��� �񷷱��� �����µ� �ְ���� �� Ÿ�� ���� �������� �ýø� ��ϴ� �ý� ������ ������ �޾Ҵµ� ���Ե� �� �ް� �ʹ� �ƽ��׿� ���� �λ縦 ���� �帮�� ������������� �� ����� �ʹ� ���� ������ �� ���� �ͽ��ϴ�.',
'./impression/impression2.jpg','','jsm','1234','',1);

-- �̿��ı�(impression) ���� ������ ����
update impression set ititle=?, iplace=?, itodate=?, ifromdate=?, icontent=?, ipic1=?, idate=sysdate, veiwcnt=viewcnt+1 where ino=?;

-- �̿��ı�(impression) ���� ������ ����
delete from impression where ino=?;

-- �̿��ı�(impression) ���� ������ ��ȸ
select * from impression where ino=?;


-- ��������(notice) ���̺� ����
create table notice(nno number(11) primary key,     -- �۹�ȣ
    ntitle varchar2(50) not null,                   -- ������
    nconetnt varchar2(500) not null,                -- �۳���
    npic varchar2(50),                              -- �۰����̹���
    ndata varchar2(50),                             -- �۰����ڷ�
    resdate date default sysdate,                   -- �ۼ���
    nname varchar2(20),                             -- �ۼ��� 
    viewcnt number(11)                              -- ���� Ƚ��
);
-- ��������(notice) �ε���(������) ����
create sequence scott.noti_seq increment by 1 start with 1 minvalue 1 maxvalue 100000 nocycle nocache;
-- ��������(notice) ���̵����� �߰�
insert into notice values(noti_seq.nextval, '�����չٴ� 2022�� 5���� ����ǥ ����', '2022�� 5�� 12���� ���� 4�� ���Ϸ簡 �Ǿ�, ������������ ���� �� �ؼ����� ũ�� ������ �� ���� 12�Ϻ��� 26�ϱ��� ȣ�찡 ���ų� �ĵ��� ������ ���ذ� �� Ŀ���ϴ�.',
'./notice/watertime20220512.jpg','./notice/water202205121.xlsx',sysdate,'admin',1);


-- ��������(notice) ���̵����� ����
update notice set ntitle=?, ncontent=?, npic=?, ndata=?, resdate=sysdate, nname=? where nno=?;
update notice set resdate=sysdate;

-- ��������(notice) ���̵����� ����
delete from notice where nno=?;

-- ��������(notice) ���̵����� ��ȸ
select * from notice where nno=?;

commit;