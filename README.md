# Ben's dotfiles

## Installation

```bash
git clone https://github.com/benichu/dotfiles.git && cd dotfiles && ./bootstrap.sh
```

## Upgrading

```bash
cd ~/dotfiles && git pull https://github.com/benichu/dotfiles.git && ./bootstrap.sh
```

Don't worry, all your old files will be backed up!

## Prerequisites

* Git (1.7+)
* Ruby (1.9 recommended) and RubyGems
* Vim (7.3+)

Optional, but recommended:

* [rbenv](http://rbenv.org)
* [Homebrew](http://mxcl.github.com/homebrew/) (OS X only)
* [git-flow](http://github.com/nvie/gitflow)

## Vim

Need a good vim distribution? Try this one: [2ret-vim](https://github.com/benichu/2ret-vim) :-)

The easiest way to install 2ret-vim is to use our [automatic installer](http://2ret.com/vim)
by simply copying and pasting the following line into a terminal.
This will install 2ret-vim and backup your existing vim configuration.

```bash
curl http://2ret.com/vim -L -o - | sh
```

## References

* [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [https://github.com/aziz/dotfiles](https://github.com/aziz/dotfiles)
* [Bash Reference Manual](http://www.gnu.org/software/bash/manual/bashref.html)
* [https://github.com/benichu/2ret-vim](https://github.com/benichu/2ret-vim)
