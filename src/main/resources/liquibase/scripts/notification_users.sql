-- — liquibase formatted sql

-- changeset chernenkov:1

create sequence hibernate_sequence;

-- changeset chernenkov:2

create table users
(
    username varchar(255) not null primary key,
    password varchar(255) not null,
    enabled  boolean      not null
);


create table authorities
(
    username  varchar(255) not null,
    authority varchar(255) not null,
    foreign key (username) references users (username),
    unique (username, authority)
);