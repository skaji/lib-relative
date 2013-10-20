# NAME

lib::relative - use lib with relative path

# SYNOPSIS

    use lib::relative qw(extlib/lib/perl5 lib);
    # same as
    # use FindBin qw($Bin);
    # use lib ("$Bin/extlib/lib/perl5", "$Bin/lib");

# DESCRIPTION

lib::relative allows you to use lib with relative path
just as in SYNOPSIS.

# SEE ALSO

[FindBin::libs](http://search.cpan.org/perldoc?FindBin::libs)

[lib](http://search.cpan.org/perldoc?lib)

# LICENSE

Copyright (C) Shoichi Kaji.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

Shoichi Kaji <skaji@outlook.com>
