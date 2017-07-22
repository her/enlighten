# Enlighten - A Color Scheme.

Currently a work in progress. 

**Finished:** 
  * terminal.app profile - enlighten.terminal

**In Progress:**
  * A color scheme with multiple language & highlight group support - enlighten.vim

**TODO:**
  * Accessibility for colorblind users across all color scheme implementations.
  * iTerm theme.
  * lightline theme.

## But Why?

[Research](https://graphicdesign.stackexchange.com/a/15152) has shown that text is easier to read on a light background. Users make less mistakes and it's easier on the eyes. However, most themes for both terminal emulators and text editors across the internet cater towards light text on a dark background. 

The goal of this project is to develop the world's most beautiful and legible
light theme for every day use. It should be accessible to everyone, adaptable to
the user, and available on as many platforms as possible. Color choices should
be based on a model of readability, easy discernment, and wherever possible
should use color theory and science to lead development decisions. 

This project is in it's early stages and I wouldn't say that it currently lives
up to the stated goals. Going forward changes and developments should
seek to uphold the ideals of this project by following it's goals. 

## Included Highlight Groups

Ruby, Python, Javascript, JSON, SQL, YAML, XML, HTML, CSS, Markdown, Shell, Vim's defaults (Language Constructs, Variable Types, C Family), netrw. 

Will add other highlight groups once the above are completed. Possibly next being,
Perl, php. Also am considering other add-on syntax groups like NGINX or Docker (which would require extending vim with a syntax library for these technologies).  

## Screenshot

**Terminal output**
![terminal
output](https://github.com/her/enlighten/blob/master/assets/colortest0.4.0.png)

## Notes

#### Valuable Vim Docs
 `:h group-name`
 `:h highlight-groups`
 `:h cterm-colors`

#### If editing a colorscheme this applies it to the current buffer
 `:w`
 `:so %` 

#### Output all the current highlight groups 
 `:so $VIMRUNTIME/syntax/hitest.vim`
