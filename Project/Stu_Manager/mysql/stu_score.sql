drop table stu_score;

/*==============================================================*/
/* Table: stu_score                                             */
/*==============================================================*/
create table stu_score (
stu_no varchar(10) not null,
stu_year_no varchar(6) not null,
sub_no1_sc int(3) not null,
sub_no2_sc int(3) not null,
sub_no3_sc int(3) not null,
sub_no4_sc int(3),
sub_no5_sc int(3),
sub_no6_sc int(3),
sub_no7_sc int(3),
sub_no8_sc int(3),
sub_no9_sc int(3),
sub_no10_sc int(3),
sub_no11_sc int(3),
sub_no12_sc int(3),
college_no varchar(4) not null,
profs_no varchar(4) not null,
primary key (stu_no)
);

comment on table stu_score is
'ѧ��ѧ�ڳɼ���
stu_score
ÿ��ѧ���ĳɼ��ǲ�ͬ
�趨��ѧ��ѧ�ڿ�Ŀ��֮��
ͨ��ѧԺ��ţ�רҵ��ţ�ѧ�ڱ�ŵõ���ѧ����ѧ�ڵĿ�Ŀ��Ȼ��������Щ��Ŀ�ĳɼ�';

alter table stu_score
   add foreign key FK_STU__REFE_YEAR (stu_year_no)
      references year_info (stu_year_no)
      on delete restrict;

alter table stu_score
   add foreign key FK_STU__REFE_COLL (college_no)
      references college_info (college_no)
      on delete restrict;


alter table stu_score
   add foreign key FK_STU__REFE_PROF (profs_no)
      references profs_info (profs_no)
      on delete restrict;
