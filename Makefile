EXTENSION = postgresql_extension_template
MODULE_big = postgresql_extension_template
OBJS = postgresql_extension_template.o
DATA = postgresql_extension_template--1.0.sql
REGRESS = postgresql_extension_template
# To provide your README.md as docs, create a symlink like that:
#
# `ln -s README.md extension_name.md`
#
# And uncomment the following line:
#DOCS = extension_name.md

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
