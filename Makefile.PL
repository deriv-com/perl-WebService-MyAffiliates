# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v6.029.
use strict;
use warnings;

use 5.008005;

use ExtUtils::MakeMaker 7.64;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Interface to myaffiliates.com API",
  "AUTHOR" => "binary.com <BINARY\@cpan.org>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "7.64"
  },
  "DISTNAME" => "WebService-MyAffiliates",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.008005",
  "NAME" => "WebService::MyAffiliates",
  "PREREQ_PM" => {
    "Carp" => 0,
    "HTTP::Tiny" => 0,
    "JSON::MaybeUTF8" => 0,
    "Mojo::URL" => 0,
    "Mojo::Util" => 0,
    "Mojolicious" => "6.36",
    "XML::Simple" => 0,
    "strict" => 0,
    "vars" => 0,
    "warnings" => 0
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::CheckDeps" => "0.010",
    "Test::Exception" => 0,
    "Test::MockModule" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.10",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "HTTP::Tiny" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "JSON::MaybeUTF8" => 0,
  "Mojo::URL" => 0,
  "Mojo::Util" => 0,
  "Mojolicious" => "6.36",
  "Test::CheckDeps" => "0.010",
  "Test::Exception" => 0,
  "Test::MockModule" => 0,
  "Test::More" => "0.96",
  "XML::Simple" => 0,
  "strict" => 0,
  "vars" => 0,
  "warnings" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
