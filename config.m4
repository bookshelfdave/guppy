PHP_ARG_ENABLE(riak, whether to enable riak support,
[  --enable-riak           Enable riak support])

if test "$PHP_RIAK" != "no"; then

    RIAK_LIB_NAME=`riak-c-client`
    RIAK_INCDIRS=`pkg-config --cflags riak-c-client`
    RIAK_LIBS=`pkg-config --libs riak-c-client`

    PHP_EVAL_INCLINE($RIAK_INCDIRS)
    PHP_EVAL_LIBLINE($RIAK_LIBS, RIAK_SHARED_LIBADD)



  PHP_NEW_EXTENSION(riak, riak.c, $ext_shared)
  PHP_SUBST(RIAK_SHARED_LIBADD)
fi
