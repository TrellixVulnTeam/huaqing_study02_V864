drop table year_info;

/*==============================================================*/
/* Table: year_info                                             */
/*==============================================================*/
create table year_info (
stu_year_no varchar(6) not null,
stu_year_name varchar(20) not null,
primary key (stu_year_no)
);

comment on table year_info is
'ѧ����Ϣ��
201501--2015���ϰ�ѧ��  201502--2015���°�ѧ��';
