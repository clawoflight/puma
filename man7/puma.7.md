% PUMA(7) PUMA user manuals
% Bennett Piater and Justus Piater
% January 07, 2017

# NAME
PUMA - simple password manager

# PROGRAMS
The following is just an overview, see the respective documentation for details.

puma(1)
: Log in using credentials.

puma-add(1)
: Helper script to simplify adding new credentials.

puma-menu
: Helper script providing interactive account selection for logging in using dmenu.

puma-profile-grep
: Helper script to quickly search through account files.

# PURPOSE
We wanted a very simple password manager, so we made this.
All you need to use it is a folder with gpg-encrypted credential files.
As of version 0.6, subfolders are supported as well!

To log in somewhere (as long as tab indices are properly set by the website or application), simply invoke **puma** or **puma-menu** while having keyboard focus in the username field.

I recommend binding **puma-menu** to some keyboard shortcut.

# ACCOUNT FILE SYNTAX
Account files are of the following form:

    // ~/Documents/keyring/google.gpg
    User: john.doe@gmail.com
    Pass: Tr0ub4dor&3

Lines other than *User* and *Pass* are ignored and can be used for notes or any other information.

# NOTES
Some environment variables may need to be set. Check the documentation of the scripts before using them.

# BUGS

# SEE ALSO
**puma**(1), **puma-add**(1)

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
