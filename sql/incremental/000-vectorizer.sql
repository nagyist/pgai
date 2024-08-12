

create table ai.vectorize
( id int not null primary key generated by default as identity
, source_schema name not null
, source_table name not null
, target_schema name not null
, target_table name not null
, target_column name not null
, queue_schema name not null
, queue_table name not null
, config jsonb not null
, unique (target_schema, target_table)
);
perform pg_catalog.pg_extension_config_dump('ai.vectorize'::pg_catalog.regclass, '');
