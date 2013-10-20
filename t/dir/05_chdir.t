use strict;
use warnings;
use utf8;
use Test::More;

use lib::relative qw(../extlib);

chdir "/";
use_ok "MyDummyClass";

done_testing;

