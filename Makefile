PG_CONFIG ?= pg_config

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

USE_PGXS = 1
ifdef USE_PGXS
	PGXS := $(shell $(PG_CONFIG) --pgxs)
	include $(PGXS)
else
	subdir = contrib/pg_show_plans
	top_builddir = ../..
	include $(top_builddir)/src/Makefile.global
	include $(top_srcdir)/contrib/contrib-global.mk
endif

