#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
# see POD documentation at end
#
package DataPort::DataFile;

use strict;
use warnings;
use warnings::register;
use 5.001;

use vars qw($VERSION $DATE);
$VERSION = '0.03';
$DATE = '2003/07/07';

########
# Create new FileType Format Parser
#
sub new
{
    my ($class, @args) = @_;

    $class = ref($class) if( ref($class) );

    ##########
    # Take care of the options
    #
    my $options_p = $args[0] if ref($args[0]);
    $options_p = { @args } unless( @args % 2 );
    $options_p = {}  unless ref($options_p);

    my $self = bless {}, $class;
    $self->{options} = $options_p;

    my $file = $self->{options}->{file};
    unless ( $file ) {
        $self->{fh} = '';
        $self->{options}->{flag} = '';
        return $self;
    }

    ######
    # Open the table file
    #    
    my ($fh,$flag);
    if( ref($file) eq 'GLOB' ) {
        $fh = $file;
        $self->{options}->{file} = '';
        $self->{options}->{flag} = '<';
        $flag = '<';
    }
    else {
        $flag = $self->{options}->{flag};
        $flag = '<' unless $flag;
        unless (open( $fh, "$flag $file" )) {
            warn "Cannot open table\n\t$file\n";
            return undef;
        }
    }

    ########################
    # binary when reading or 
    # binary if reading, writing strict
    #
    binmode $fh if $flag =~ /</ || $self->{options}->{binary}; 

    ########
    # Establish the open values
    #
    $self->{fh} = $fh;
    $self;

}


#########
# Parse a record into a field harsh and an field array
#
sub get
{
    my ($self, $fields_ap, $record_p) = @_;
    unless( $fields_ap || $record_p) {
        warn( "No output ref supplied.\n");
        return undef;
    }

    ######
    #  Cannot use the below because Perl treats as read-only
    #
    #    $record_p = \'' unless( ref($record_p) eq 'SCALAR' );
    #
    unless( ref($record_p) eq 'SCALAR' ) {
        my $record = '';
       $record_p = \$record;
    }

    return undef unless $self->get_record($record_p);
    return undef unless $self->decode_record( $record_p );
    return undef unless $self->decode_field( $record_p, $fields_ap);

    1
}



#####
# 
#
sub put
{
    my ($self, $fields_ap, $record_p) = @_;

    unless( ref($record_p) eq 'SCALAR' ) {
        my $record = '';
       $record_p = \$record;
    }

    return undef unless $self->encode_field($fields_ap, $record_p);
    return undef unless $self->encode_record($record_p);
    return undef unless $self->put_record($record_p);

    1

}



#####
# Close the TextDB file.
#
sub finish
{
    my ($self) = @_;

    ##########
    # In order, to avoid closing a file  that has been closed, 
    # the $fh variable is used to determined if the file is closed.
    #
    if( my $fh = $self->{fh} ) {
        unless (close($fh)) {
            warn("Could not close\n\t$self->{options}->{'file'}\n");
            return 0;
        }
        $self->{fh} = undef;
    } 

    1;
}


1;


__END__


=head1 NAME

DataPort::DataFile - pure Perl API for local database files
  
=head1 SYNOPSIS
 
 use DataPort::FileType::$Data_Source_Module

 $dbh     = new(@args)

 $success = $dbh->put( \@fields, \$record )

 $success = $dbh->get( \@fields, \$record )

 $success = $dbh->finish(  )
 
 ~~~~ Data Source Interface (DSI) follows ~~~~~ 

 $success = $dbh->get_record( \$record )

 $success = $dbh->decode_record( \$record )

 $success = $dbh->decode_field( \$record, \@fields )

 $success = $dbh->encode_field( \@fields, $record_p)

 $success = $dbh->encode_record( \$record);

 $success = $dbh->put_record( \$record );

=head1 DESCRIPTION

=head2 new method

 $dbh     = new(@args)

=head2 put method

 $success = $dbh->put( \@fields, \$record )

=head2 get method

 $success = $dbh->get( \@fields, \$record )

=head2 finish method

 $success = $dbh->finish(  )
 
=head2 get_record DSI method

 $success = $dbh->get_record( \$record )

=head2 decode_record DSI method

 $success = $dbh->decode_record( \$record )

=head2 decode_field DSI method

 $success = $dbh->decode_field( \$record, \@fields )

=head2 encode_field DSI method

 $success = $dbh->encode_field( \@fields, $record_p)

=head2 encode_record DSI method

 $success = $dbh->encode_record( \$record);

=head2 put_record DSI method

 $success = $dbh->put_record( \$record );

=head1 REQUIREMENTS

Requirements are coming.

=head1 DEMONSTRATION

 ~~~~~~ Demonstration overview ~~~~~

Perl code begins with the prompt

 =>

The selected results from executing the Perl Code 
follow on the next lines. For example,

 => 2 + 2
 4

 ~~~~~~ The demonstration follows ~~~~~

 =>     use File::SmartNL;
 =>     my $snl = 'File::SmartNL';

 =>     use File::Package;
 =>     my $fp = 'File::Package';

 =>     my $loaded = '';
 => my $errors = $fp->load_package( 't::DataPort::DataFileI' )
 => $errors
 ''

 => $snl->fin( 'DataFile0.tdb' )
 'test record 1
 test record 2
 '

 =>     unlink 'DataFile1.txt';

 =>     my $record;
 =>     my ($array_p, $record_p) = ([], \$record);
 =>     my $dbh = new t::DataPort::DataFileI(flag => '<', file => 'DataFile0.tdb',
 =>                option1 => '1', option2 => '2' );

 =>     while( $dbh->get($array_p, $record_p) ) {
 =>         $snl->fout( 'DataFile1.txt', $$record_p . "\n~-~\n", {append=>1});
 =>         $snl->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~-~\n", {append=>1});
 =>     }
 => $snl->fin('DataFile1.txt')
 'test record 1
 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 get_record

 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 decode_record

 ~-~
 fields
 +--
 test record 1
 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 get_record

 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 decode_record

 +--
 file
 +--
 DataFile0.tdb
 +--
 flag
 +--
 <
 +--
 option1
 +--
 1
 +--
 option2
 +--
 2
 +--
 subroutine
 +--
 decode_field
 ~-~
 test record 2
 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 get_record

 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 decode_record

 ~-~
 fields
 +--
 test record 2
 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 get_record

 file => DataFile0.tdb
 flag => <
 option1 => 1
 option2 => 2
 decode_record

 +--
 file
 +--
 DataFile0.tdb
 +--
 flag
 +--
 <
 +--
 option1
 +--
 1
 +--
 option2
 +--
 2
 +--
 subroutine
 +--
 decode_field
 ~-~
 '

 =>     unlink 'DataFile1.txt';
 =>     $dbh->finish();

 =>     $dbh = new t::DataPort::DataFileI(flag => '<', file => 'DataFile0.tdb',
 =>                option3 => '3', option4 => '4',  option5 => '5' );

 =>     while( $dbh->get($array_p) ) {
 =>         $snl->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~-~\n", {append=>1});
 =>     }
 =>     $dbh->finish();
 => $snl->fin('DataFile1.txt')
 'fields
 +--
 test record 1
 file => DataFile0.tdb
 flag => <
 option3 => 3
 option4 => 4
 option5 => 5
 get_record

 file => DataFile0.tdb
 flag => <
 option3 => 3
 option4 => 4
 option5 => 5
 decode_record

 +--
 file
 +--
 DataFile0.tdb
 +--
 flag
 +--
 <
 +--
 option3
 +--
 3
 +--
 option4
 +--
 4
 +--
 option5
 +--
 5
 +--
 subroutine
 +--
 decode_field
 ~-~
 fields
 +--
 test record 2
 file => DataFile0.tdb
 flag => <
 option3 => 3
 option4 => 4
 option5 => 5
 get_record

 file => DataFile0.tdb
 flag => <
 option3 => 3
 option4 => 4
 option5 => 5
 decode_record

 +--
 file
 +--
 DataFile0.tdb
 +--
 flag
 +--
 <
 +--
 option3
 +--
 3
 +--
 option4
 +--
 4
 +--
 option5
 +--
 5
 +--
 subroutine
 +--
 decode_field
 ~-~
 '

 =>     unlink 'DataFile1.txt';
 =>     unlink 'DataFile1.tdb';

 =>     $dbh = new t::DataPort::DataFileI(flag => '>', file => 'DataFile1.tdb',
 =>                option6 => '6', option7 => '7' );

 =>     my @db = ( [ 'name1','data1','name2','data2'], [ 'name3', 'data3', 'name4', 'data4' ] );  
 =>  
 =>     foreach $array_p (@db) {
 =>         $record = ''; 
 =>         $dbh->put($array_p, $record_p);
 =>         $snl->fout('DataFile1.txt', $$record_p . "\n~-~\n", {append=>1});
 =>     }
 =>     $dbh->finish();
 => $snl->fin('DataFile1.tdb')
 'put_record
 encode_record
 encode_field
 name1
 data1
 name2
 data2
 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 ~-~
 put_record
 encode_record
 encode_field
 name3
 data3
 name4
 data4
 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 ~-~
 '

 => $snl->fin('DataFile1.txt')
 'encode_record
 encode_field
 name1
 data1
 name2
 data2
 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 ~-~
 encode_record
 encode_field
 name3
 data3
 name4
 data4
 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 option file => DataFile1.tdb
 option flag => >
 option option6 => 6
 option option7 => 7

 ~-~
 '

 =>     $dbh->finish();
 =>     unlink 'DataFile1.txt';
 =>     unlink 'DataFile1.tdb';

 =>     $dbh = new t::DataPort::DataFileI(flag => '>', file => 'DataFile1.tdb',
 =>                option8 => '8' );

 =>     @db = ( [ 'name5','data5','name6','data6'], [ 'name7', 'data7' ] );  
 =>  
 =>     foreach $array_p (@db) { 
 =>         $dbh->put($array_p);
 =>     }
 =>     $dbh->finish();
 => $snl->fin('DataFile1.tdb')
 'put_record
 encode_record
 encode_field
 name5
 data5
 name6
 data6
 option file => DataFile1.tdb
 option flag => >
 option option8 => 8

 option file => DataFile1.tdb
 option flag => >
 option option8 => 8

 ~-~
 put_record
 encode_record
 encode_field
 name7
 data7
 option file => DataFile1.tdb
 option flag => >
 option option8 => 8

 option file => DataFile1.tdb
 option flag => >
 option option8 => 8

 ~-~
 '

 =>     unlink 'DataFile1.txt';
 =>     unlink 'DataFile1.tdb';

 =>     $dbh = new t::DataPort::DataFileI(flag => '>', file => 'DataFile1.tdb',
 =>               binary => 1, option9 => '9' );

 =>     @db = ( [ 'name5','data5','name6','data6'], [ 'name7', 'data7' ] );  
 =>  
 =>     foreach $array_p (@db) { 
 =>         $dbh->put($array_p);
 =>     }
 =>     $dbh->finish();
 => $snl->fin('DataFile1.tdb')
 'put_record
 encode_record
 encode_field
 name5
 data5
 name6
 data6
 option binary => 1
 option file => DataFile1.tdb
 option flag => >
 option option9 => 9

 option binary => 1
 option file => DataFile1.tdb
 option flag => >
 option option9 => 9

 ~-~
 put_record
 encode_record
 encode_field
 name7
 data7
 option binary => 1
 option file => DataFile1.tdb
 option flag => >
 option option9 => 9

 option binary => 1
 option file => DataFile1.tdb
 option flag => >
 option option9 => 9

 ~-~
 '

 =>     unlink 'DataFile1.txt';
 =>     unlink 'DataFile1.tdb';

 =>     $dbh = new t::DataPort::DataFileI(flag => '<', file => 'DataFile0.tdb',
 =>                binary => 1, option10 => '10', option11 => '11' );

 =>     while( $dbh->get($array_p, $record_p) ) {
 =>         $snl->fout( 'DataFile1.txt', $$record_p . "\n~-~\n", {append => 1, binary => 1});
 =>         $snl->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~-~\n", {append => 1, binary => 1});
 =>     }
 =>     $dbh->finish();
 => $snl->fin('DataFile1.txt')
 'test record 1
 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 get_record

 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 decode_record

 ~-~
 fields
 +--
 test record 1
 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 get_record

 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 decode_record

 +--
 binary
 +--
 1
 +--
 file
 +--
 DataFile0.tdb
 +--
 flag
 +--
 <
 +--
 option10
 +--
 10
 +--
 option11
 +--
 11
 +--
 subroutine
 +--
 decode_field
 ~-~
 test record 2
 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 get_record

 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 decode_record

 ~-~
 fields
 +--
 test record 2
 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 get_record

 binary => 1
 file => DataFile0.tdb
 flag => <
 option10 => 10
 option11 => 11
 decode_record

 +--
 binary
 +--
 1
 +--
 file
 +--
 DataFile0.tdb
 +--
 flag
 +--
 <
 +--
 option10
 +--
 10
 +--
 option11
 +--
 11
 +--
 subroutine
 +--
 decode_field
 ~-~
 '

 =>     unlink 'DataFile1.txt';
 =>     unlink 'DataFile1.tdb';

=head1 QUALITY ASSURANCE

The module "t::DataPort::DataFile" is the Software
Test Description(STD) module for the "DataPort::DataFile".
module. 

To generate all the test output files, 
run the generated test script,
run the demonstration script,
execute the following in any directory:

 tmake -verbose -replace -run  -pm=t::DataPort::DataFile

Note that F<tmake.pl> must be in the execution path C<$ENV{PATH}>
and the "t" directory on the same level as the "lib" that
contains the "DataPort::DataFile" module.

=head1 NOTES

=head2 AUTHOR

The holder of the copyright and maintainer is

 E<lt>support@SoftwareDiamonds.comE<gt>

=head2 COPYRIGHT NOTICE

Copyrighted (c) 2002 Software Diamonds

All Rights Reserved

=head2 BINDING REQUIREMENTS NOTICE

Binding requirements are indexed with the
pharse 'shall[dd]' where dd is an unique number
for each header section.
This conforms to standard federal
government practices, 490A (L<STD490A/3.2.3.6>).
In accordance with the License, Software Diamonds
is not liable for any requirement, binding or otherwise.

=head2 LICENSE

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code must retain
the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS PROVIDES THIS SOFTWARE 
'AS IS' AND ANY EXPRESS OR IMPLIED WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT
SHALL SOFTWARE DIAMONDS BE LIABLE FOR ANY DIRECT,
INDIRECT, INCIDENTAL, SPECIAL,EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE,DATA, OR PROFITS; OR BUSINESS
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY
OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING USE OF THIS SOFTWARE, EVEN IF
ADVISED OF NEGLIGENCE OR OTHERWISE) ARISING IN
ANY WAY OUT OF THE POSSIBILITY OF SUCH DAMAGE. 

=for html
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="EMAIL" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

### end of script  ######