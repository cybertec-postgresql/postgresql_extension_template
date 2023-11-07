#include "postgres.h"
#include "fmgr.h"

PG_MODULE_MAGIC;

Datum my_function(PG_FUNCTION_ARGS);
PG_FUNCTION_INFO_V1(my_function);

Datum
my_function(PG_FUNCTION_ARGS)
{
	PG_RETURN_CSTRING("Hello from my_function()!");
}
