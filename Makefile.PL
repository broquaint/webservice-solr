use inc::Module::Install 0.91;

if ( -e 'MANIFEST.SKIP' ) {
    system( 'pod2text lib/WebService/Solr.pm > README' );
}

perl_version '5.008';

name 'WebService-Solr';
all_from 'lib/WebService/Solr.pm';

requires 'LWP::UserAgent';
requires 'URI' => '1.28';
requires 'Data::Page';
requires 'Data::Pageset';
requires 'XML::Generator' => '0.94';
requires 'JSON::XS';
requires 'Moose';
requires 'Encode';

test_requires 'Test::More';
test_requires 'XML::Simple';
test_requires 'Test::Mock::LWP';

tests_recursive;

repository 'http://github.com/bricas/webservice-solr';

WriteAll;

