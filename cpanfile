requires 'perl', '5.008005';

requires 'XML::Simple';
requires 'Mojolicious', '6.36';
requires 'Future::AsyncAwait', 0;

on test => sub {
    requires 'Test::More', '0.96';
    requires 'Test::Exception';
};
