/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2017/3/7 11:32:28                            */
/*==============================================================*/


alter table hall
   drop constraint FK_HALL_FK_CINEMA_CINEMA;

alter table movie_cinema
   drop constraint FK_MOVIE_CI_FK_MOVIE__CINEMA;

alter table movie_cinema
   drop constraint FK_MOVIE_CI_FK_MOVIE__MOVIE;

alter table orders
   drop constraint FK_ORDERS_FK_RELATI_TIMES;

alter table times
   drop constraint FK_TIMES_FK_HALL_T_HALL;

alter table times
   drop constraint FK_TIMES_FK_MID_MOVIE;

drop table cinema cascade constraints;

drop index FK_cinema_hall_FK;

drop table hall cascade constraints;

drop table movie cascade constraints;

drop index FK_movie_cinema_FK;

drop index FK_movie_cinema2_FK;

drop table movie_cinema cascade constraints;

drop index FK_Relationship_4_FK;

drop table orders cascade constraints;

drop index fk_mid_FK;

drop index FK_hall_times_FK;

drop table times cascade constraints;

drop sequence S_cinema;

drop sequence S_hall;

drop sequence S_movie;

drop sequence S_orders;

drop sequence S_times;

create sequence S_cinema;

create sequence S_hall;

create sequence S_movie;

create sequence S_orders;

create sequence S_times;

/*==============================================================*/
/* Table: cinema                                              */
/*==============================================================*/
create table cinema 
(
   cid                NUMBER(11)           not null,
   cname              VARCHAR2(30)         not null,
   constraint PK_CINEMA primary key (cid)
);

/*==============================================================*/
/* Table: hall                                                */
/*==============================================================*/
/*==============================================================*/
/* Table: hall                                                */
/*==============================================================*/
create table hall 
(
   hid                NUMBER(11)           not null,
   cid                NUMBER(11),
   hname              VARCHAR2(20)         not null,
   rownums             SMALLINT,
   columnnums          SMALLINT,
   count              INTEGER,
   lockedSeats        VARCHAR2(500),
   noneSeats          VARCHAR2(500),
   constraint PK_HALL primary key (hid)
);
/*==============================================================*/
/* Index: FK_cinema_hall_FK                                   */
/*==============================================================*/
create index FK_cinema_hall_FK on hall (
   cid ASC
);

/*==============================================================*/
/* Table: movie                                               */
/*==============================================================*/
create table movie 
(
   mid                NUMBER(11)           not null,
   mpic               VARCHAR2(100),
   mname              VARCHAR2(20)         not null,
   constraint PK_MOVIE primary key (mid)
);

/*==============================================================*/
/* Table: movie_cinema                                        */
/*==============================================================*/
create table movie_cinema 
(
   mid                NUMBER(11)           not null,
   cid                NUMBER(11)           not null,
   constraint PK_MOVIE_CINEMA primary key (mid, cid)
);

/*==============================================================*/
/* Index: FK_movie_cinema2_FK                                 */
/*==============================================================*/
create index FK_movie_cinema2_FK on movie_cinema (
   mid ASC
);

/*==============================================================*/
/* Index: FK_movie_cinema_FK                                  */
/*==============================================================*/
create index FK_movie_cinema_FK on movie_cinema (
   cid ASC
);

/*==============================================================*/
/* Table: orders                                              */
/*==============================================================*/
create table orders 
(
   oid                NUMBER(11)           not null,
   tid                NUMBER(11),
   price              FLOAT(8),
   payTime            DATE,
   selectedSeats      VARCHAR2(500),
   count              INTEGER,
   totalPrice         FLOAT,
   constraint PK_ORDERS primary key (oid)
);

/*==============================================================*/
/* Index: FK_Relationship_4_FK                                */
/*==============================================================*/
create index FK_Relationship_4_FK on orders (
   tid ASC
);

/*==============================================================*/
/* Table: times                                               */
/*==============================================================*/
create table times 
(
   tid                NUMBER(11)           not null,
   hid                NUMBER(11),
   mid                NUMBER(11),
   begin              DATE                 not null,
   end                DATE                 not null,
   price              FLOAT(8)             not null,
   version            VARCHAR2(255)        not null,
   constraint PK_TIMES primary key (tid)
);

/*==============================================================*/
/* Index: FK_hall_times_FK                                    */
/*==============================================================*/
create index FK_hall_times_FK on times (
   hid ASC
);

/*==============================================================*/
/* Index: fk_mid_FK                                           */
/*==============================================================*/
create index fk_mid_FK on times (
   mid ASC
);

alter table hall
   add constraint FK_HALL_FK_CINEMA_CINEMA foreign key (cid)
      references cinema (cid);

alter table movie_cinema
   add constraint FK_MOVIE_CI_FK_MOVIE__CINEMA foreign key (cid)
      references cinema (cid);

alter table movie_cinema
   add constraint FK_MOVIE_CI_FK_MOVIE__MOVIE foreign key (mid)
      references movie (mid);

alter table orders
   add constraint FK_ORDERS_FK_RELATI_TIMES foreign key (tid)
      references times (tid);

alter table times
   add constraint FK_TIMES_FK_HALL_T_HALL foreign key (hid)
      references hall (hid);

alter table times
   add constraint FK_TIMES_FK_MID_MOVIE foreign key (mid)
      references movie (mid);

