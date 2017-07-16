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
