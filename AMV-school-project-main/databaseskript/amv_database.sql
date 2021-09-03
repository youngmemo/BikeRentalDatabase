create database amv;
use amv;
create table `equipment type`
(
    id   int auto_increment
        primary key,
    name varchar(250) not null,
    constraint name
        unique (name)
)
    charset = utf8mb3;

create table `equipment category`
(
    id                        int auto_increment
        primary key,
    name                      varchar(250) not null,
    is_free_to_rent_for_1_day tinyint(1)   not null,
    rent_price                double       null,
    max_total_days_for_rent   int          null,
    equipment_type_id         int          null,
    img                       mediumblob   null,
    constraint name
        unique (name),
    constraint `Equipment Category_equipment_type_id_c710287f_fk_Equipment`
        foreign key (equipment_type_id) references `equipment type` (id)
)
    charset = utf8mb3;

create table equipment
(
    id                    int auto_increment
        primary key,
    is_available          tinyint(1) not null,
    is_damaged            tinyint(1) not null,
    equipment_category_id int        not null,
    constraint Equipment_equipment_category_i_9bfedbb7_fk_Equipment
        foreign key (equipment_category_id) references `equipment category` (id)
)
    charset = utf8mb3;

create table user
(
    id           bigint auto_increment
        primary key,
    password     varchar(128) not null,
    first_name   varchar(100) not null,
    last_name    varchar(100) not null,
    email        varchar(254) not null,
    tlf          varchar(25)  not null,
    is_union     tinyint(1)   not null,
    is_superuser tinyint(1)   not null,
    constraint email
        unique (email)
)
    charset = utf8mb3;

create table rent
(
    id              int auto_increment
        primary key,
    start_rent_date date       not null,
    end_rent_date   date       not null,
    is_paid         tinyint(1) not null,
    equipment_id    int        not null,
    user_id         bigint     not null,
    constraint Rent_equipment_id_5b98b270_fk_Equipment_id
        foreign key (equipment_id) references equipment (id),
    constraint Rent_user_id_5c5a151a_fk_User_id
        foreign key (user_id) references user (id)
)
    charset = utf8mb3;

create table report
(
    id           int auto_increment
        primary key,
    description  longtext not null,
    equipment_id int      not null,
    user_id      bigint   not null,
    constraint Report_equipment_id_14f5e9ab_fk_Equipment_id
        foreign key (equipment_id) references equipment (id),
    constraint Report_user_id_d2415d9b_fk_User_id
        foreign key (user_id) references user (id)
)
    charset = utf8mb3;

create table restriction
(
    id                    int auto_increment
        primary key,
    is_trained            tinyint(1) not null,
    equipment_category_id int        not null,
    user_id               bigint     not null,
    constraint Restriction_equipment_category_id_80787_fk_Equipment_category_id
        foreign key (equipment_category_id) references `equipment category` (id),
    constraint Restriction_user_id_8b9a4cb0_fk_User_id
        foreign key (user_id) references user (id)
)
    charset = utf8mb3;