RPG Codex LaTeX class
=====================

rpgcodex is designed for homebrew rules and adventures creation.
Files that use it should be compiled with xetex as rpgcodex uses 
fontspec package for fancy fonts.
This class doesn't reimplement visual design of any official books,
like DnD5E rulebook, but some features might be inspired by them.

Installation
------------
Get a complete TeX Live distibution, if you don't have one. 
On Debian it could be installed with
  sudo apt-get install texlive-full

Deploy this repo in any default directory where xetex would find it. 
On Linux it could be ~/.texmf/tex/latex. 

Usage
-----
rpgcodex is a class, like article and book (it's actually written
above the default book class), so all you need is to set document 
class with
  \documentclass[<options>]{rpgcodex}

Soon there will be an example, showing all features of this class.

Credits
-------
rpgcodex is inspired by following projects:
https://github.com/rpgtex/DND-5e-LaTeX-Template
https://github.com/Krozark/RPG-LaTeX-Template
