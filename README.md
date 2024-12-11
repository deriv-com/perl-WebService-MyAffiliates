## get\_affiliate\_details

Get affiliate detail from user token

- `token` - token to get detail from

Returns token\_info hash

# NAME

WebService::MyAffiliates - Interface to myaffiliates.com API

# SYNOPSIS

    use WebService::MyAffiliates;

    my $aff = WebService::MyAffiliates->new(
        user => 'user',
        pass => 'pass',
        host => 'admin.example.com'
    );

    my $token; # initial it
    my $token_info = $aff->decode_token($token) or die $aff->errstr;

# DESCRIPTION

WebService::MyAffiliates is Perl interface to [http://www.myaffiliates.com/xmlapi](http://www.myaffiliates.com/xmlapi)

It's incompleted. patches are welcome with pull-requests of [https://github.com/binary-com/perl-WebService-MyAffiliates](https://github.com/binary-com/perl-WebService-MyAffiliates)

# METHODS

## new

- user

    required. the Basic Auth username.

- pass

    required. the Basic Auth password.

- host

    required. the Basic Auth url/host.

## get\_users

Feed 1: Users Feed

[https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+1%3A+Users+Feed](https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+1%3A+Users+Feed)

    my $user_info = $aff->get_users(USER_ID => $id);
    my $user_info = $aff->get_users(STATUS => 'new');
    my $user_info = $aff->get_users(VARIABLE_NAME => 'n', VARIABLE_VALUE => 'v');

## get\_user

    my $user_info = $aff->get_user($id); # { ID => ... }

call get\_users(USER\_ID => $id) with the top evel USER key removed.

## decode\_token

Feed 4: Decode Token

[https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+4%3A+Decode+Token](https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+4%3A+Decode+Token)

    my $token_info = $aff->decode_token($token); # $token_info is a HASH which contains TOKEN key
    my $token_info = $aff->decode_token($tokenA, $tokenB);

## encode\_token

Feed 5: Encode Token

[https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+5%3A+Encode+Token](https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+5%3A+Encode+Token)

    my $token_info = $aff->encode_token(
        USER_ID  => 1,
        SETUP_ID => 7
    );

## get\_user\_transactions

Feed 6: User Transactions Feed

[https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+6%3A+User+Transactions+Feed](https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+6%3A+User+Transactions+Feed)

    my $transactions = $aff->get_user_transactions(
        'USER_ID'   => $id,
        'FROM_DATE' => '2011-12-31',
        'TO_DATE'   => '2012-01-31',
    );

## get\_customers

Feed 10: User Customers Feed.
Returns Array ref with customer list.

    my $customers = $aff->get_customers( AFFILIATE_ID => $affiliate_id );

## create\_affiliate

Feed 26:Create Affiliate

[https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+26%3A+Create+Affiliate](https://myaffiliates.atlassian.net/wiki/display/PUB/Feed+26%3A+Create+Affiliate)

    my $res = $aff->create_affiliate({
        'first_name'     => 'Chales',
        'last_name'     => 'Babbage',
        'date_of_birth' => '1871-10-18',
        'individual'    => 'individual',
        'phone_number'  => '+4412341234',
        'address'       => 'Some street',
        'city'          => 'Some City',
        'state'         => 'Some State',
        'postcode'      => '1234',
        'website'       => 'https://www.example.com/',
        'agreement'     => 1,
        'username'      => 'charles_babbage.com',
        'email'         => 'charles@babbage.com',
        'country'       => 'GB',
        'password'      => 's3cr3t',
        'plans'         => '2,4'
    });

    $res->{USERID};

It expects a hashref with all the required parameters for account creation. Other fields may be required depending on your installation.

- username: A non-empty string with the username, must be an alphanumeric unique string.
- password: A non-empty string with the password, following configured the password policy.
- email: A non-empty string with a valid e-mail account. It must be unique.
- referrer\_token: Optional. A non-empty string with subaffiliate token.
- plans: Optional. A non-empty string with CSV with the channel numeric IDs to subscribe the client. MyAffiliates will also subscribe the client to any default channel unless **PLAN\_FORCE** is set to 1.
- PLAN\_FORCE: Optional. For use with plans, if 1 is set here the client will be subscribe to the channels listed in `plans` parameters only, and won't be subscribed to any other channel. By default this is is 0.

Returns a hashref with the details for the created account, in particular a numeric user\_id will be returned in the hashref.

## errstr

## get\_affiliate\_id\_from\_token

## request

## reset\_errstr

# AUTHOR

Binary.com <fayland@binary.com>

# COPYRIGHT

Copyright 2014- Binary.com

# LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO
