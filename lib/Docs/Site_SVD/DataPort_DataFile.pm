#!perl
#
# The copyright notice and plain old documentation (POD)
# are at the end of this file.
#
package  Docs::Site_SVD::DataPort_DataFile;

use strict;
use warnings;
use warnings::register;

use vars qw($VERSION $DATE $FILE );
$VERSION = '0.01';
$DATE = '2003/06/23';
$FILE = __FILE__;

use vars qw(%INVENTORY);
%INVENTORY = (
    'lib/Docs/Site_SVD/DataPort_DataFile.pm' => [qw(0.01 2003/06/23), 'revised 0.04'],
    'MANIFEST' => [qw(0.01 2003/06/23), 'generated, replaces 0.04'],
    'Makefile.PL' => [qw(0.01 2003/06/23), 'generated, replaces 0.04'],
    'README' => [qw(0.01 2003/06/23), 'generated, replaces 0.04'],
    'lib/DataPort/DataFile.pm' => [qw(0.02 2003/06/23), 'revised 0.01'],
    't/DataPort/DataFile.d' => [qw(0.03 2003/06/23), 'revised 0.02'],
    't/DataPort/DataFile.pm' => [qw(0.02 2003/06/23), 'revised 0.01'],
    't/DataPort/DataFile.t' => [qw(0.05 2003/06/23), 'revised 0.04'],
    't/DataPort/DataFile0.tdb' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile2.tdb' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile2.txt' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile3.tdb' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile3.txt' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile4.tdb' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile4.txt' => [qw(0.01 2003/06/08), 'unchanged'],
    't/DataPort/DataFile5.txt' => [qw(0.02 2003/06/23), 'revised 0.01'],
    't/DataPort/DataFileI.pm' => [qw(0.01 2003/06/23), 'new'],

);

########
# The ExtUtils::SVDmaker module uses the data after the __DATA__ 
# token to automatically generate this file.
#
# Don't edit anything before __DATA_. Edit instead
# the data after the __DATA__ token.
#
# ANY CHANGES MADE BEFORE the  __DATA__ token WILL BE LOST
#
# the next time ExtUtils::SVDmaker generates this file.
#
#



=head1 Title Page

 Software Version Description

 for

 DataPort::DataFile - Pure Perl API for database files.

 Revision: D

 Version: 0.01

 Date: 2003/06/23

 Prepared for: General Public 

 Prepared by:  SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>

 Copyright: copyright � 2003 Software Diamonds

 Classification: NONE

=head1 1.0 SCOPE

This paragraph identifies and provides an overview
of the released files.

=head2 1.1 Identification

This release,
identified in L<3.2|/3.2 Inventory of software contents>,
is a collection of Perl modules that
extend the capabilities of the Perl language.

=head2 1.2 System overview

The system is the Perl programming language software.
As established by the Perl referenced documents,
program modules, such the "DataPort::DataFile" module, extends the Perl language.

The "DataPort::DataFile" program module accesses different types of
data sources in different formats
and streams them to a stanadard pure Perl API. 

The dependency of the program modules in the US DOD STD2167A bundle is as follows:
 
 File::FileUtil 
   Test::STD::Scrub
     Test::Tech
        DataPort::FileType::FormDB DataPort::DataFile DataPort::Maker Test::STD::Template
            Test::STDmaker ExtUtils::SVDmaker

Note the 
L<File::FileUtil|File::FileUtil>, 
L<Test::STD::STDutil|Test::STD::STDutil> 
L<Test::STD::Scrub|Test::STD::Scrub> 
program modules breaks up 
the Test::TestUtil program module
and Test::TestUtil has disappeared.

=head2 1.3 Document overview.

This document releases DataPort::DataFile version 0.01
providing description of the inventory, installation
instructions and other information necessary to
utilize and track this release.

=head1 3.0 VERSION DESCRIPTION

All file specifications in this SVD
use the Unix operating
system file specification.

=head2 3.1 Inventory of materials released.

This document releases the file found
at the following repository(s):

   http://www.softwarediamonds/packages/DataPort-DataFile-0.01
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/DataPort-DataFile-0.01


Restrictions regarding duplication and license provisions
are as follows:

=over 4

=item Copyright.

copyright � 2003 Software Diamonds

=item Copyright holder contact.

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=item License.

Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

=over 4

=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
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

=back

=head2 3.2 Inventory of software contents

The content of the released, compressed, archieve file,
consists of the following files:

 file                                                         version date       comment
 ------------------------------------------------------------ ------- ---------- ------------------------
 lib/Docs/Site_SVD/DataPort_DataFile.pm                       0.01    2003/06/23 revised 0.04
 MANIFEST                                                     0.01    2003/06/23 generated, replaces 0.04
 Makefile.PL                                                  0.01    2003/06/23 generated, replaces 0.04
 README                                                       0.01    2003/06/23 generated, replaces 0.04
 lib/DataPort/DataFile.pm                                     0.02    2003/06/23 revised 0.01
 t/DataPort/DataFile.d                                        0.03    2003/06/23 revised 0.02
 t/DataPort/DataFile.pm                                       0.02    2003/06/23 revised 0.01
 t/DataPort/DataFile.t                                        0.05    2003/06/23 revised 0.04
 t/DataPort/DataFile0.tdb                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile2.tdb                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile2.txt                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile3.tdb                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile3.txt                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile4.tdb                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile4.txt                                     0.01    2003/06/08 unchanged
 t/DataPort/DataFile5.txt                                     0.02    2003/06/23 revised 0.01
 t/DataPort/DataFileI.pm                                      0.01    2003/06/23 new


=head2 3.3 Changes

Changes to the previous version are as follows:

=over 4

=item *

Broke "DataPort::DataFile" away into its
own module.
Move the "DataPort::DataFileI" test interface module
to "t::DataPort::DataFileI".

\item *

Added a modest amount of new documentation to "DataPort::DataFile"
Still have a long ways to go to finish up.

=item *

At 08:39 AM 6/23/2003 +0000, Josts Smokehouse wrote:

[snip]

PERL_DL_NONLAZY=1 /usr/local/perl/bin/perl "-MExtUtils::Command::MM" "-e" "test_harness(0, 'blib/lib', 'blib/arch')" t/DataPort/FormDB.t t/DataPort/DataFile.t
t/DataPort/DataFile....# Test 10 got: 'test record 1
binary => 1
file => DataFile0.tdb

[snip]


(t/DataPort/DataFile.t at line 261)
#    Expected: 'test record 1

binary => 1

[snip]

~~~~~~
Notice the double line after 'test record 1' for expected and a single line for got

For step 10, different new lines for Microsoft and Unix are acting up again.

From:
        $fu->fout( 'DataFile1.txt', $$record_p . "\n~-~\n", {append => 1);
        $fu->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~-~\n", {append => 1);

To:
        $fu->fout( 'DataFile1.txt', $$record_p . "\n~-~\n", {append => 1, binary => 1});
        $fu->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~-~\n", {append => 1, binary => 1});

=back

Previous changes are as follows:

=over 4

=item DataPort_FormDB 0.01

Originated

=item DataPort_FormDB 0.02

At 04:10 AM 6/9/2003 +0000, Josts Smokehouse wrote:

Hello, Samson Monaco Tutankhamen! Thanks for uploading your works to CPAN.

I noticed that the test suite seem to fail without these modules:

STD::Tester

As such, adding the prerequisite module(s) to 'PREREQ_PM' in your
Makefile.PL should solve this problem.  For example:


 WriteMakefile(
    AUTHOR      => 'Samson Monaco Tutankhamen (support@SoftwareDiamonds.com)',
    ... # other information
    PREREQ_PM   => {
        'STD::Tester'   => '0', # or a minimum workable version
    }
 );


If you are interested in making a more flexible Makefile.PL that can
probe for missing dependencies and install them, ExtUtils::AutoInstall
at <http://search.cpan.org/search?dist=ExtUtils-AutoInstall> may be
worth a look.

Thanks! :-)

~~~~~~~~~~~~~~~~~

CORRECTIVE ACTION:

The Makefile.PL is automatically generated by ExtUtils::SVDmaker
from the data stored in the DataPort::FileType::FormDB format
in the Docs::Site_SVD::DataPort-FormDB module.
For now, in Docs::Site_SVD::DataPort-FormDB

Changed 

 PREREQ_PM: ^

to

 PREREQ_PM:
 'Test::TestUtil' => 0,
 'Test::Tester' => 0,
 ^

and regenerated the distribution using ExtUtils::SVDmaker

Uploaded Test::TestUtil and Test::Tester to CPAN in order to 
resolve the prerequiste.

=item DataPort_FormDB 0.03

Resolved a CPAN namespace conflict by changing the name
of Test::Tester to Test::Tech.

=item DataPort_FormDB 0.04

Changed the name of "Test::Tester" to "Test::Tech".
The name "Test::Tester" is taken on CPAN as an upload.

Broke up the STD support utilities "Test::TestUtil"
into "File::FileUtil", "Test::STD::Scrub" and
"Test::STD::STDutil"

Theses changes impacted the test software.


=back

=head2 3.4 Adaptation data.

This installation requires that the installation site
has the Perl programming language installed.
Installation sites running Microsoft Operating systems require
the installation of Unix utilities. 
An excellent, highly recommended Unix utilities for Microsoft
operating systems is unxutils by Karl M. Syring.
A copy is available at the following web sites:

 http://unxutils.sourceforge.net
 http://packages.SoftwareDiamnds.com

There are no other additional requirements or tailoring needed of 
configurations files, adaptation data or other software needed for this
installation particular to any installation site.

=head2 3.5 Related documents.

There are no related documents needed for the installation and
test of this release.

=head2 3.6 Installation instructions.

Instructions for installation, installation tests
and installation support are as follows:

=over 4

=item Installation Instructions.

To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

   http://www.softwarediamonds/packages/DataPort-DataFile-0.01
   http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/DataPort-DataFile-0.01


=item Prerequistes.

'Test::Tech' => 1.08,
'Test::STD::Scrub' => 1.07,
'File::FileUtil' => 1.09,

=item Security, privacy, or safety precautions.

None.

=item Installation Tests.

Most Perl installation software will run the following test script(s)
as part of the installation:

 t/DataPort/DataFile.t

=item Installation support.

If there are installation problems or questions with the installation
contact

 603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>

=back

=head2 3.7 Possible problems and known errors

There are no known open issues.

=head1 4.0 NOTES

The following are useful acronyms:

=over 4

=item .d

extension for a Perl demo script file

=item .pm

extension for a Perl Library Module

=item .t

extension for a Perl test script file

=item DID

Data Item Description

=item DOD

Department of Defense

=item POD

Plain Old Documentation

=item SVD

Software Version Description

=item US

United States

=back

=head1 2.0 SEE ALSO

Modules with end-user functional interfaces 
relating to US DOD 2167A automation are
as follows:

=over 4

=item L<Test::STDmaker|Test::STDmaker>

=item L<ExtUtils::SVDmaker|ExtUtils::SVDmaker>

=item L<DataPort::FileType::FormDB|DataPort::FileType::FormDB>

=item L<DataPort::DataFile|DataPort::DataFile>

=item L<Test::Tech|Test::Tech>

=item L<Test|Test>

=item L<Data::Dumper|Data::Dumper>

=item L<Test::STD::Scrub|Test::STD::Scrub>

=item L<Test::STD::STDutil|Test::STD::STDutil>

=item L<File::FileUtil|File::FileUtil>

=back

The design modules for L<Test::STDmaker|Test::STDmaker>
have no other conceivable use then to support the
L<Test::STDmaker|Test::STDmaker> functional interface. 
The  L<Test::STDmaker|Test::STDmaker>
design module are as follows:

=over 4

=item L<Test::STD::Check|Test::>

=item L<Test::STD::FileGen|Test::STD::FileGen>

=item L<Test::STD::STD2167|Test::STD::STD2167>

=item L<Test::STD::STDgen|Test::STD::STDgen>

=item L<Test::STDtype::Demo|Test::STDtype::Demo>

=item L<Test::STDtype::STD|Test::STDtype::STD>

=item L<Test::STDtype::Verify|Test::STDtype::Verify>

=back


Some US DOD 2167A Software Development Standard, DIDs and
other related documents that complement the 
US DOD 2167A automation are as follows:

=over 4

=item L<US DOD Software Development Standard|Docs::US_DOD::STD2167A>

=item L<US DOD Specification Practices|Docs::US_DOD::STD490A>

=item L<Computer Operation Manual (COM) DID|Docs::US_DOD::COM>

=item L<Computer Programming Manual (CPM) DID)|Docs::US_DOD::CPM>

=item L<Computer Resources Integrated Support Document (CRISD) DID|Docs::US_DOD::CRISD>

=item L<Computer System Operator's Manual (CSOM) DID|Docs::US_DOD::CSOM>

=item L<Database Design Description (DBDD) DID|Docs::US_DOD::DBDD>

=item L<Engineering Change Proposal (ECP) DID|Docs::US_DOD::ECP>

=item L<Firmware support Manual (FSM) DID|Docs::US_DOD::FSM>

=item L<Interface Design Document (IDD) DID|Docs::US_DOD::IDD>

=item L<Interface Requirements Specification (IRS) DID|Docs::US_DOD::IRS>

=item L<Operation Concept Description (OCD) DID|Docs::US_DOD::OCD>

=item L<Specification Change Notice (SCN) DID|Docs::US_DOD::SCN>

=item L<Software Design Specification (SDD) DID|Docs::US_DOD::SDD>

=item L<Software Development Plan (SDP) DID|Docs::US_DOD::SDP> 

=item L<Software Input and Output Manual (SIOM) DID|Docs::US_DOD::SIOM>

=item L<Software Installation Plan (SIP) DID|Docs::US_DOD::SIP>

=item L<Software Programmer's Manual (SPM) DID|Docs::US_DOD::SPM>

=item L<Software Product Specification (SPS) DID|Docs::US_DOD::SPS>

=item L<Software Requirements Specification (SRS) DID|Docs::US_DOD::SRS>

=item L<System or Segment Design Document (SSDD) DID|Docs::US_DOD::SSDD>

=item L<System or Subsystem Specification (SSS) DID|Docs::US_DOD::SSS>

=item L<Software Test Description (STD) DID|Docs::US_DOD::STD>

=item L<Software Test Plan (STP) DID|Docs::US_DOD::STP>

=item L<Software Test Report (STR) DID|Docs::US_DOD::STR>

=item L<Software Transition Plan (STrP) DID|Docs::US_DOD::STrP>

=item L<Software User Manual (SUM) DID|Docs::US_DOD::SUM>

=item L<Software Version Description (SVD) DID|Docs::US_DOD::SVD>

=item L<Version Description Document (VDD) DID|Docs::US_DOD::VDD>

=back

=for html
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>

=cut

1;

__DATA__

DISTNAME: DataPort-DataFile^
VERSION : 0.01^
REPOSITORY_DIR: packages^
FREEZE: 1^

PREVIOUS_DISTNAME: DataPort-FormDB^
REVISION: D^
PREVIOUS_RELEASE: 0.04^
AUTHOR  : SoftwareDiamonds.com E<lt>support@SoftwareDiamonds.comE<gt>^

ABSTRACT: 
Pure Perl objectified database interface that streams data from a pure Perl
objectified data source interface.
The "DataPort::DataFile" is the base class for all "DataPort" data source classes.
^

TITLE   : DataPort::DataFile - Pure Perl API for database files.^
END_USER: General Public^
COPYRIGHT: copyright � 2003 Software Diamonds^
CLASSIFICATION: NONE^
TEMPLATE:  ^
CSS: help.css^
SVD_FSPEC: Unix^

COMPRESS: gzip^
COMPRESS_SUFFIX: gz^

REPOSITORY: 
  http://www.softwarediamonds/packages/
  http://www.perl.com/CPAN-local/authors/id/S/SO/SOFTDIA/
^

RESTRUCTURE:  ^

CHANGE2CURRENT:  ^

AUTO_REVISE:
lib/DataPort/DataFile.pm
t/DataPort/DataFile*
^

PREREQ_PM:
'Test::Tech' => 1.08,
'Test::STD::Scrub' => 1.07,
'File::FileUtil' => 1.09,
^

TESTS:
t/DataPort/DataFile.t
^

EXE_FILES:  ^

CHANGES:
Changes to the previous version are as follows:

\=over 4

\=item *

Broke "DataPort::DataFile" away into its
own module.
Move the "DataPort::DataFileI" test interface module
to "t::DataPort::DataFileI".

\item *

Added a modest amount of new documentation to "DataPort::DataFile"
Still have a long ways to go to finish up.

\=item *

At 08:39 AM 6/23/2003 +0000, Josts Smokehouse wrote:

[snip]

PERL_DL_NONLAZY=1 /usr/local/perl/bin/perl "-MExtUtils::Command::MM" "-e" "test_harness(0, 'blib/lib', 'blib/arch')" t/DataPort/FormDB.t t/DataPort/DataFile.t
t/DataPort/DataFile....# Test 10 got: 'test record 1
binary => 1
file => DataFile0.tdb

[snip]


(t/DataPort/DataFile.t at line 261)
#    Expected: 'test record 1

binary => 1

[snip]

~~~~~~
Notice the double line after 'test record 1' for expected and a single line for got

For step 10, different new lines for Microsoft and Unix are acting up again.

From:
        $fu->fout( 'DataFile1.txt', $$record_p . "\n~--~\n", {append => 1);
        $fu->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~--~\n", {append => 1);

To:
        $fu->fout( 'DataFile1.txt', $$record_p . "\n~--~\n", {append => 1, binary => 1});
        $fu->fout( 'DataFile1.txt', join("\n+--\n",@$array_p) . "\n~--~\n", {append => 1, binary => 1});

\=back

Previous changes are as follows:

\=over 4

\=item DataPort_FormDB 0.01

Originated

\=item DataPort_FormDB 0.02

At 04:10 AM 6/9/2003 +0000, Josts Smokehouse wrote:

Hello, Samson Monaco Tutankhamen! Thanks for uploading your works to CPAN.

I noticed that the test suite seem to fail without these modules:

STD::Tester

As such, adding the prerequisite module(s) to 'PREREQ_PM' in your
Makefile.PL should solve this problem.  For example:


 WriteMakefile(
    AUTHOR      => 'Samson Monaco Tutankhamen (support@SoftwareDiamonds.com)',
    ... # other information
    PREREQ_PM   => {
        'STD::Tester'   => '0', # or a minimum workable version
    }
 );


If you are interested in making a more flexible Makefile.PL that can
probe for missing dependencies and install them, ExtUtils::AutoInstall
at <http://search.cpan.org/search?dist=ExtUtils-AutoInstall> may be
worth a look.

Thanks! :-)

~~~~~~~~~~~~~~~~~

CORRECTIVE ACTION:

The Makefile.PL is automatically generated by ExtUtils::SVDmaker
from the data stored in the DataPort::FileType::FormDB format
in the Docs::Site_SVD::DataPort-FormDB module.
For now, in Docs::Site_SVD::DataPort-FormDB

Changed 

 PREREQ_PM: ^^

to

 PREREQ_PM:
 'Test::TestUtil' => 0,
 'Test::Tester' => 0,
 ^^

and regenerated the distribution using ExtUtils::SVDmaker

Uploaded Test::TestUtil and Test::Tester to CPAN in order to 
resolve the prerequiste.

\=item DataPort_FormDB 0.03

Resolved a CPAN namespace conflict by changing the name
of Test::Tester to Test::Tech.

\=item DataPort_FormDB 0.04

Changed the name of "Test::Tester" to "Test::Tech".
The name "Test::Tester" is taken on CPAN as an upload.

Broke up the STD support utilities "Test::TestUtil"
into "File::FileUtil", "Test::STD::Scrub" and
"Test::STD::STDutil"

Theses changes impacted the test software.


\=back
^

DOCUMENT_OVERVIEW:
This document releases ${NAME} version ${VERSION}
providing description of the inventory, installation
instructions and other information necessary to
utilize and track this release.
^

CAPABILITIES:
The system is the Perl programming language software.
As established by the Perl referenced documents,
program modules, such the "DataPort::DataFile" module, extends the Perl language.

The "DataPort::DataFile" program module accesses different types of
data sources in different formats
and streams them to a stanadard pure Perl API. 

The dependency of the program modules in the US DOD STD2167A bundle is as follows:
 
 File::FileUtil 
   Test::STD::Scrub
     Test::Tech
        DataPort::FileType::FormDB DataPort::DataFile DataPort::Maker Test::STD::Template
            Test::STDmaker ExtUtils::SVDmaker

Note the 
L<File::FileUtil|File::FileUtil>, 
L<Test::STD::STDutil|Test::STD::STDutil> 
L<Test::STD::Scrub|Test::STD::Scrub> 
program modules breaks up 
the Test::TestUtil program module
and Test::TestUtil has disappeared.
^

LICENSE:
Software Diamonds permits the redistribution
and use in source and binary forms, with or
without modification, provided that the 
following conditions are met: 

\=over 4

\=item 1

Redistributions of source code, modified or unmodified
must retain the above copyright notice, this list of
conditions and the following disclaimer. 

\=item 2

Redistributions in binary form must 
reproduce the above copyright notice,
this list of conditions and the following 
disclaimer in the documentation and/or
other materials provided with the
distribution.

\=back

SOFTWARE DIAMONDS, http://www.SoftwareDiamonds.com,
PROVIDES THIS SOFTWARE 
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
^


INSTALLATION:
To installed the release file, use the CPAN module in the Perl release
or the INSTALL.PL script at the following web site:

 http://packages.SoftwareDiamonds.com

Follow the instructions for the the chosen installation software.

The distribution file is at the following respositories:

${REPOSITORY}
^


PROBLEMS:
There are no known open issues.
^

SUPPORT:
603 882-0846 E<lt>support@SoftwareDiamonds.comE<gt>
^

NOTES:
The following are useful acronyms:

\=over 4

\=item .d

extension for a Perl demo script file

\=item .pm

extension for a Perl Library Module

\=item .t

extension for a Perl test script file

\=item DID

Data Item Description

\=item DOD

Department of Defense

\=item POD

Plain Old Documentation

\=item SVD

Software Version Description

\=item US

United States

\=back
^

SEE_ALSO:

Modules with end-user functional interfaces 
relating to US DOD 2167A automation are
as follows:

\=over 4

\=item L<Test::STDmaker|Test::STDmaker>

\=item L<ExtUtils::SVDmaker|ExtUtils::SVDmaker>

\=item L<DataPort::FileType::FormDB|DataPort::FileType::FormDB>

\=item L<DataPort::DataFile|DataPort::DataFile>

\=item L<Test::Tech|Test::Tech>

\=item L<Test|Test>

\=item L<Data::Dumper|Data::Dumper>

\=item L<Test::STD::Scrub|Test::STD::Scrub>

\=item L<Test::STD::STDutil|Test::STD::STDutil>

\=item L<File::FileUtil|File::FileUtil>

\=back

The design modules for L<Test::STDmaker|Test::STDmaker>
have no other conceivable use then to support the
L<Test::STDmaker|Test::STDmaker> functional interface. 
The  L<Test::STDmaker|Test::STDmaker>
design module are as follows:

\=over 4

\=item L<Test::STD::Check|Test::>

\=item L<Test::STD::FileGen|Test::STD::FileGen>

\=item L<Test::STD::STD2167|Test::STD::STD2167>

\=item L<Test::STD::STDgen|Test::STD::STDgen>

\=item L<Test::STDtype::Demo|Test::STDtype::Demo>

\=item L<Test::STDtype::STD|Test::STDtype::STD>

\=item L<Test::STDtype::Verify|Test::STDtype::Verify>

\=back


Some US DOD 2167A Software Development Standard, DIDs and
other related documents that complement the 
US DOD 2167A automation are as follows:

\=over 4

\=item L<US DOD Software Development Standard|Docs::US_DOD::STD2167A>

\=item L<US DOD Specification Practices|Docs::US_DOD::STD490A>

\=item L<Computer Operation Manual (COM) DID|Docs::US_DOD::COM>

\=item L<Computer Programming Manual (CPM) DID)|Docs::US_DOD::CPM>

\=item L<Computer Resources Integrated Support Document (CRISD) DID|Docs::US_DOD::CRISD>

\=item L<Computer System Operator's Manual (CSOM) DID|Docs::US_DOD::CSOM>

\=item L<Database Design Description (DBDD) DID|Docs::US_DOD::DBDD>

\=item L<Engineering Change Proposal (ECP) DID|Docs::US_DOD::ECP>

\=item L<Firmware support Manual (FSM) DID|Docs::US_DOD::FSM>

\=item L<Interface Design Document (IDD) DID|Docs::US_DOD::IDD>

\=item L<Interface Requirements Specification (IRS) DID|Docs::US_DOD::IRS>

\=item L<Operation Concept Description (OCD) DID|Docs::US_DOD::OCD>

\=item L<Specification Change Notice (SCN) DID|Docs::US_DOD::SCN>

\=item L<Software Design Specification (SDD) DID|Docs::US_DOD::SDD>

\=item L<Software Development Plan (SDP) DID|Docs::US_DOD::SDP> 

\=item L<Software Input and Output Manual (SIOM) DID|Docs::US_DOD::SIOM>

\=item L<Software Installation Plan (SIP) DID|Docs::US_DOD::SIP>

\=item L<Software Programmer's Manual (SPM) DID|Docs::US_DOD::SPM>

\=item L<Software Product Specification (SPS) DID|Docs::US_DOD::SPS>

\=item L<Software Requirements Specification (SRS) DID|Docs::US_DOD::SRS>

\=item L<System or Segment Design Document (SSDD) DID|Docs::US_DOD::SSDD>

\=item L<System or Subsystem Specification (SSS) DID|Docs::US_DOD::SSS>

\=item L<Software Test Description (STD) DID|Docs::US_DOD::STD>

\=item L<Software Test Plan (STP) DID|Docs::US_DOD::STP>

\=item L<Software Test Report (STR) DID|Docs::US_DOD::STR>

\=item L<Software Transition Plan (STrP) DID|Docs::US_DOD::STrP>

\=item L<Software User Manual (SUM) DID|Docs::US_DOD::SUM>

\=item L<Software Version Description (SVD) DID|Docs::US_DOD::SVD>

\=item L<Version Description Document (VDD) DID|Docs::US_DOD::VDD>

\=back

^

HTML:
<hr>
<p><br>
<!-- BLK ID="PROJECT_MANAGEMENT" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="NOTICE" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="OPT-IN" -->
<!-- /BLK -->
<p><br>
<!-- BLK ID="LOG_CGI" -->
<!-- /BLK -->
<p><br>
^
~-~


