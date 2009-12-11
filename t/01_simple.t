use strict;
use warnings;
use Test::More 'no_plan';
use Cwd;
use File::Spec;
use Path::Executable;
local $ENV{PATH} = getcwd;
my $result = File::Spec->catfile( getcwd, 'Makefile.PL' );
my @paths = path_exe 'Makefile.PL';
diag($_) for @paths;
is( scalar @paths, 1, 'There is only one result');
is( $paths[0], $result, 'We got the right result');
