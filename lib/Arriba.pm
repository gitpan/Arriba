package Arriba;

use strict;

# ABSTRACT: PSGI web server with SPDY support

our $VERSION = '0.020'; # VERSION

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Arriba - PSGI web server with SPDY support

=head1 VERSION

version 0.020

=head1 SYNOPSIS

Launch a plain HTTP server listening on port 5080:

    arriba --listen :5080

Launch an HTTPS server on port 5443, no SPDY:

    arriba --listen :5443:ssl --ssl-cert cert.pem --ssl-key key.pem

Launch an HTTPS server with SPDY support:

    arriba --listen :5443:ssl --ssl-cert cert.pem --ssl-key key.pem \
        --enable-spdy

=head1 DESCRIPTION

Arriba is a PSGI web server based on L<Starman> and sharing most of its
features, with added support for the SPDY protocol.

B<WARNING:> Arriba is still in early stage of development and is not ready for
production use.

=head1 SEE ALSO

Please see those modules/websites for more information related to this module.

=over 4

=item *

L<Starman>

=item *

L<Net::Server::PreFork>

=back

=head1 AUTHOR

Michal Wojciechowski <odyniec@cpan.org>

=head1 ACKNOWLEDGEMENTS

Basic server code and plain HTTP connection support is based on L<Starman>,
written by Tatsuhiko Miyagawa.

SPDY support is provided by L<Net::SPDY>, written by Lubomir Rintel.

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Michal Wojciechowski.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
