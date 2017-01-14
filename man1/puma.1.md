% PUMA(1) PUMA user manuals
% Bennett Piater and Justus Piater
% January 07, 2017

# NAME
puma - simple password manager

# SYNOPSIS
puma [*options*] \<account\>

# Description
Log in automatically using the credentials for the specified account.

This will type the user name, TAB, password and ENTER.

# OPTIONS
-h, \--help
: Show a help message.

-u
: only type the user name and TAB

-p
: only type the password and ENTER

# EXIT STATUS
TODO

# ENVIRONMENT
PUMA_KEYRING
: The folder containing the credential files. Defaults to *~/Documents/keyring*.

# NOTES

# BUGS

# EXAMPLES
To log into your google account, while having keyboard focus in the user name field:

    puma google

This assumes that $PUMA_KEYRING/google.gpg exists and is valid.

To log into an account in a subfolder:

    puma finance/paypal

This assumes that $PUMA_KEYRING/finance/paypal.gpg exists and is valid.

# SEE ALSO
**puma-add**(1), **puma**(7)

# COPYRIGHT
PUMA is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
PUMA is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with PUMA.  If not, see <http://www.gnu.org/licenses/>.
