
####
# 
# The module ExtUtils::STDmaker generated this file from the contents of
#
# Docs::Site_SVD::DataPort_DataFile 
#
# Don't edit this file, edit instead
#
# Docs::Site_SVD::DataPort_DataFile
#
#	ANY CHANGES MADE HERE WILL BE LOST
#
#       the next time ExtUtils::STDmaker generates it.
#
#

use ExtUtils::MakeMaker;

my $tests = join ' ',unix2os('t/DataPort/DataFile.t');


WriteMakefile(
    NAME => 'DataPort::DataFile',
    DISTNAME => 'DataPort-DataFile',
    VERSION  => '0.03',
    dist     => {COMPRESS => 'gzip',
                'gz' => 'gz'},
    test     => {TESTS => $tests},
    PREREQ_PM => {'Test::Tech' => '1.09',
                  'Text::Scrub' => '0',
                  'File::Package' => '0',
                  'File::SmartNL' => '0',
                  'File::TestPath' => '0',},
    

    ($] >= 5.005 ?     
        (AUTHOR    => 'SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>',
        ABSTRACT  => 'Pure Perl objectified database interface that streams data from a pure Perl
objectified data source interface.
The "DataPort::DataFile" is the base class for all "DataPort" data source classes.', ) : ()),
);



use File::Spec;
use File::Spec::Unix;
sub unix2os
{
   my @file = ();
   foreach my $file (@_) {
       my (undef, $dir, $file_unix) = File::Spec::Unix->splitpath( $file );
       my @dir = File::Spec::Unix->splitdir( $dir );
       push @file, File::Spec->catfile( @dir, $file_unix);
   }
   @file;
}

