use strict;
use warnings;
use utf8;
use Test::More;

use FindBin qw($Bin);

ok !system qq(
    $^X -I$Bin/../blib/lib -Mlib::relative=t/extlib -e \\
    'use MyDummyClass'
);
ok !system qq(
    $^X -I$Bin/../blib/lib -Mlib::relative=t/extlib -e \\
    'chdir "/"; use MyDummyClass'
);

done_testing;
