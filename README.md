syntastic-arclint
=================

This is a syntax checker for Syntastic that highlights `arc lint` errors inside vim itself.

Installation
============

1. This plugin requires [Syntastic](https://github.com/scrooloose/syntastic), so install that first.
1. Clone this repository somewhere with `git clone https://github.com/rissole/syntastic-arclint`.
1. Copy `arc.vim` into `syntastic/syntax_checkers/php` which will be somewhere in your `.vim` folder or something like that.
1. Modify `defaultCheckers` dict in `registry.vim` as follows:
```
\ 'php':         ['php', 'phpcs', 'phpmd', 'arc'],
```
to make this linter enabled by default.
