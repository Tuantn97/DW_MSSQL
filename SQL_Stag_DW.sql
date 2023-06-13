use dw_stagging



create table dim_stag_salesperson(
    salespersonkey int identity (1,1) not null,
    salespersonid int,
    fullname nvarchar(500),
    nationid nvarchar(50),
    gender nchar(1),
    hire_date date,
    constraint pk_sale_key primary key (salespersonkey)
)



create table dim_stag_teritory(
    teritorykey int identity (1,1) not null,
    teritoryid int ,
    name nvarchar(50),
    countryregioncode nvarchar(50)
    constraint pk_teritorykey primary key (teritorykey)
)


create table dim_stag_year(
    yearkey nvarchar(50),
    year int,
    constraint pk_yearkey primary key (yearkey))

 
create table dim_stag_month(
    monthkey nvarchar(50),
    yearkey nvarchar(50),
    month int,
    constraint pk_monthkey primary key (monthkey),
    constraint fk_yearkey foreign key (yearkey) references dim_stag_year(yearkey)
)

 
create table dim_stag_date(
    datekey nvarchar(50),
    monthkey nvarchar(50),
    date date,
    constraint pk_datekey primary key (datekey),
    constraint fk_monthkey foreign key (monthkey) references dim_stag_month(monthkey)
)


create table dim_stag_productcategory(
    productcategorykey int identity (1,1) not null,
    productcategoryid int,
    name nvarchar(50),
    constraint pk_productcategorykey primary key (productcategorykey)
)

 
create table dim_stag_productsub(
    productsubkey int identity (1,1) not null,
    productsubid int,
    name nvarchar(50),
    productcategorykey int,
    constraint pk_productsubkey primary key (productsubkey),
    constraint fk_productcategorykey foreign key (productcategorykey) references dim_stag_productcategory(productcategorykey)
)


create table dim_stag_product(
    productkey int identity (1,1) not null,
    name nvarchar(50),
    productnumber nvarchar(50),
    standardcost money,
    listprice money,
    weight decimal(8,2),
    productsubkey int,
    constraint pk_productkey primary key (productkey),
    constraint fk_productsubkey foreign key (productsubkey) references dim_stag_productsub(productsubkey)
)


create table fact_stag_salesorder(
    id int identity (1,1) not null,
    datekey nvarchar(50),
    teritorykey int,
    salespersonkey int,

    revenue decimal(18,2),
    numberorder int
    constraint pk_id primary key (id),

    constraint fk_datekey foreign key (datekey) references dim_stag_date(datekey),
    constraint fk_teritorykey foreign key (teritorykey) references dim_stag_teritory (teritorykey),
    constraint fk_salespersonkey foreign key (salespersonkey) references dim_stag_salesperson (salespersonkey)

)


create table fact_stag_product(
    id int identity (1,1) not null,
    datekey nvarchar(50),
    teritorykey int,
    productkey int,
    qty int,
    constraint pk_id_pr primary key(id),
    constraint fk_datekey_pr foreign key (datekey) references dim_stag_date(datekey),
    constraint fk_teritorykey_pr foreign key (teritorykey) references dim_stag_teritory (teritorykey),
    constraint fk_productkey foreign key (productkey) references dim_stag_product (productkey)
)


alter table dim_stag_product
drop constraint fk_productsubkey
alter table dim_stag_productsub
drop constraint fk_productcategorykey
alter table dim_stag_month
drop constraint fk_yearkey
alter table dim_stag_date
drop constraint fk_monthkey
-----
alter table fact_stag_product
drop constraint fk_datekey_pr
alter table fact_stag_product
drop constraint fk_teritorykey_pr
alter table fact_stag_product
drop constraint fk_productkey
alter table fact_stag_salesorder
drop constraint fk_datekey
alter table fact_stag_salesorder
drop constraint fk_teritorykey
alter table fact_stag_salesorder
drop constraint fk_salespersonkey 




drop table fact_stag_salesorder
drop table fact_stag_product

drop table dim_stag_date
drop table dim_stag_month
drop table dim_stag_year
drop table dim_stag_product
drop table dim_stag_productsub
drop table dim_stag_productcategory
drop table dim_stag_teritory
drop table dim_stag_salesperson