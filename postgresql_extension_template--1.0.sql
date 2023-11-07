/* postgresql_extension_template--1.0.sql */

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION pg_show_plans" to load this file. \quit

CREATE FUNCTION my_function()
RETURNS cstring
AS 'MODULE_PATHNAME'
LANGUAGE C;
