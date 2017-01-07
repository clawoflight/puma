[![license](https://img.shields.io/github/license/clawoflight/puma.svg?maxAge=2592000)](https://github.com/clawoflight/puma/blob/master/LICENSE)
[![GitHub contributors](https://img.shields.io/github/contributors/clawoflight/puma.svg)](https://github.com/clawoflight/puma/blob/master/AUTHORS)
[![Github All Releases](https://img.shields.io/github/downloads/clawoflight/puma/total.svg?maxAge=2592000)]()
[![GitHub release](https://img.shields.io/github/release/clawoflight/puma.svg?maxAge=2592000)](https://github.com/clawoflight/puma/releases)
[![AUR](https://img.shields.io/aur/version/puma.svg?maxAge=2592000)](https://aur.archlinux.org/packages/puma/)
[![AUR](https://img.shields.io/aur/votes/puma.svg?maxAge=2592000)](https://aur.archlinux.org/packages/puma/)

# PUMA - Password (and User) MAnager
This is a very simple and effective password manager built on `gnupg`, the `coreutils`, `xdotool` and optionally `dmenu` and `zenity`.

I chose the name from the options given to me by [this awesome acronym generator](http://acronymcreator.net/) because it sounds awesome.

## Concept
The concept is trivial. You simply keep a folder with some gpg-encrypted files of the form:

```
// ~/Documents/keyring/amazon.gpg
User: john.doe@gmail.com
Pass: Tr0ub4dor&3
```

Adding support for subfolders is trivial, and I will do that when I get around to it.

When you want to log in somewhere, simply invoke `puma` or `puma-menu` while having keyboard focus in the login form, and PUMA will log you in.

## Install
PUMA is just shell glue combining a lot of existing programs. It has the following dependencies:

- `gnupg`
- `pandoc` (to compile the man pages)
- `xdotool`

Optionally, for `puma-menu`:

- `dmenu`

Optionally, for `puma-add`:

- `zenity`
- `diceware` for secure random password generation

To install, just type `make install` in the project root. The Makefile honors the `PREFIX` and `DESTDIR` environment variables for easy packaging by maintainers used to the GNU autotools.

## Usage
To type out the user name, TAB, password and ENTER for an account:

    $puma <account-name>
    $puma -u <account-name>  # Types the user name only
    $puma -p <account-name>  # Types the password only

You will probably only use `puma` directly in your own scripts, or if using a window manager like AwesomeWM that allows you to execute arbitrary shell commands.

`puma-menu` uses `dmenu` to provide a GUI login flow. This is the recommended way to use PUMA.

Simply invoke it with keyboard focus in a login form and select the account to which you want to be logged in.

`puma-add` is a GUI dialog to simplify adding an account:

    $puma-add [--random]

For more information, read the man-pages.
