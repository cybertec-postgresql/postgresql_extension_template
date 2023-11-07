# PostgreSQL Extension Template

This is a template repository for a PostgreSQL C extension. This repository
includes:

* [EditorConfig](https://editorconfig.org/) to set C indentation to 4 space
  tabs, works with all text editors and GitHub.
* GitHub Action to run `make installcheck` against all supported PostgreSQL
  server major versions.
* Proper license file that you do not have to worry about.
* ~10 lines boilerplate C code.
* Regression tests.
* `Makefile` for `PGXS`.

# USAGE

This is the simplest possible working extension, you can install it and run
regression tests:

```bash
git clone git@github.com:cybertec-postgresql/postgresql_extension_template.git your-extension-name
cd your-extension-name
make
make install
make installcheck
```

At this point everything is pre-configured, just make your edits.
