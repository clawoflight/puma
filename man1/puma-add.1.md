% PUMA-ADD(1) PUMA user manuals
% Bennett Piater and Justus Piater
% January 07, 2017

# NAME
puma-add - Add a user account to PUMA

# SYNOPSIS
puma-add [*options*]

# Description
Helper script to simplify the flow of adding a new account to PUMA.

It shows a zenity form popup into which one can enter the account name, user name and password, writes the file, and encrypts it.

The password is shown in a popup at the end so it can easily be copied.

# OPTIONS
--random
: Generate a random password instead of asking for it in the popup.

# EXIT STATUS
TODO

# ENVIRONMENT
PUMA_KEYRING
: The folder containing the credential files. Defaults to *~/Documents/keyring*.

PUMA_GPGID
: The gpg id with which to encrypt the password files.

# NOTES

# BUGS

# SEE ALSO
**puma**(1), **puma**(7)

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
