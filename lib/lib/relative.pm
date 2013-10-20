package lib::relative;
use 5.008005;
use strict;
use warnings;
use Cwd ();
use File::Spec;
use File::Basename ();

our $VERSION = "0.01";

sub import {
    (undef, my @dir) = @_;
    return if !@dir;
    my $base_file = Cwd::abs_path( (caller)[1] );
    my $base_dir  = File::Basename::dirname $base_file;
    my @inc_dir   = map { File::Spec->catdir($base_dir, $_) } @dir;
    require lib;
    lib->import( @inc_dir );
}


1;
__END__

=encoding utf-8

=head1 NAME

lib::relative - use lib with relative path

=head1 SYNOPSIS

    use lib::relative qw(extlib/lib/perl5 lib);
    # same as
    # use FindBin qw($Bin);
    # use lib ("$Bin/extlib/lib/perl5", "$Bin/lib");

=head1 DESCRIPTION

lib::relative allows you to use lib with relative path
just as in SYNOPSIS.

=head1 SEE ALSO

L<FindBin::libs>

L<lib>

=head1 LICENSE

Copyright (C) Shoichi Kaji.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Shoichi Kaji E<lt>skaji@outlook.comE<gt>

=cut

