use strict;
use warnings;
use utf8;
use Test::More;
use lib::relative qw(extlib);

use_ok "MyDummyClass2";

# diag join "\n", @INC;
# diag join "\n", sort keys %INC;

done_testing;

