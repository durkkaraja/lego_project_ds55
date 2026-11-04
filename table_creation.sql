--Query to check schema of the staging table
select *
from til_portfolio_projects.staging.lego_parts
limit 10;

--For string columns check column character length to set data types
select max(length(name))
from til_portfolio_projects.staging.lego_parts;

--lego parts
create or replace table til_portfolio_projects.dr_ds55_lego.lego_parts (
    part_number varchar(15),
    part_name varchar(223),
    part_category_id integer
);

select * from til_portfolio_projects.dr_ds55_lego.lego_parts;

select *
from til_portfolio_projects.staging.lego_colors
limit 10;

select max(length(is_trans))
from til_portfolio_projects.staging.lego_colors;

--lego colors
create or replace table til_portfolio_projects.dr_ds55_lego.lego_colors (
    color_id integer,
    color_name varchar(28),
    color_rgb varchar(6),
    color_is_trans varchar(1)
);

--themes
CREATE OR REPLACE TABLE til_portfolio_projects.dr_ds55_lego.lego_themes (
    THEME_ID INTEGER
    , THEME_NAME VARCHAR(32)
    , THEME_PARENT_ID INTEGER
);

--inventory sets
CREATE OR REPLACE TABLE til_portfolio_projects.dr_ds55_lego.lego_inventory_sets (
    Inventory_ID INTEGER,
    Set_Number VARCHAR(10),
    Quantity INTEGER
);

--inventories
CREATE or replace TABLE til_portfolio_projects.dr_ds55_lego.lego_inventories (
    id integer,
    version integer,
    set_num varchar(16)
);

--sets
create or replace table til_portfolio_projects.dr_ds55_lego.lego_sets(
    set_number varchar(16)
    , set_name varchar(95)
    , year integer
    , theme_id integer
    , num_parts integer
);

--part_categories
CREATE OR REPLACE TABLE TIL_PORTFOLIO_PROJECTS.dr_ds55_lego.LEGO_PART_CATEGORIES(
PART_CAT_NAME VARCHAR(108),
PART_CAT_ID INTEGER
);

--inventory_parts
CREATE TABLE til_portfolio_projects.dr_ds55_lego.lego_inventory_parts (
    INVENTORY_ID INTEGER,
    PART_NUM VARCHAR(255),
    COLOR_ID INTEGER,
    QUANTITY INTEGER,
    IS_SPARE VARCHAR(255)
);

