# Enlighten - A Lighter Theme

Currently a work in progress. 

**Finished:** 
  * [enlighten.terminal](https://github.com/her/enlighten#enlightenterminal-) - terminal.app profile 

**In Progress:**
  * A color scheme with multiple language & highlight group support - enlighten.vim
  * Accessibility for users across all color scheme implementations.

### enlighten.terminal 👩‍🎨
Download enlighten.terminal and open it with Terminal.app to auto import.

```shell
curl -fLo ~/Downloads/enlighten.terminal \
  https://raw.githubusercontent.com/her/enlighten/master/enlighten.terminal
```

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

## Accessibility of enlighten

 | Regular | Bright |
 | ------- | ------ |
 | ![#000000](https://placehold.it/15/000000?text=+) `Black`   | ![#666666](https://placehold.it/15/666666?text=+) `Bright Black`
 | ![#B83520](https://placehold.it/15/C30600?text=+) `Red`     | ![#D84D62](https://placehold.it/15/EC0000?text=+) `Bright Red`
 | ![#268800](https://placehold.it/15/007E00?text=+) `Green`   | ![#5EB055](https://placehold.it/15/008500?text=+) `Bright Green`
 | ![#C1512C](https://placehold.it/15/CD7F40?text=+) `Yellow`  | ![#DFC240](https://placehold.it/15/E9AD53?text=+) `Bright Yellow`
 | ![#2C69EE](https://placehold.it/15/006A9D?text=+) `Blue`    | ![#4D7DEA](https://placehold.it/15/1761BE?text=+) `Bright Blue`
 | ![#722ECf](https://placehold.it/15/3C2DA2?text=+) `Magenta` | ![#C990F8](https://placehold.it/15/B20F4A?text=+) `Bright Magenta`
 | ![#408065](https://placehold.it/15/306B6A?text=+) `Cyan`    | ![#55B0B2](https://placehold.it/15/276F6F?text=+) `Bright Cyan`
 | ![#A3AFB6](https://placehold.it/15/A3AFB6?text=+) `White`   | ![#FEFBED](https://placehold.it/15/FFFFFF?text=+) `Bright White`


**Minimum contrast ratio requirements for AA grade**\
Normal text - 4.5:1\
Large text - 3:1

**Minimum contrast ratio requirements for AAA grade**\
Normal text - 7:1\
Large text - 4.5:1

✅ - Pass\
❌ - Fail

**Passing requirements for color and brightness:**\
Color Difference - Minimum 500\
Brightness Difference - Minimum 125

👁 - Pass\
⚠️ - Fail


Compared against a background color of `#FFFFFF`

Examle of accessible color meansurement values:

 | Grade | Contrast Ratio | Color Difference | Brightness Difference
 | ----- | -------------- | ---------------- | ---------------------
 | AAA | 21:1 | 765 | 255

 As a list:\
 AAA, 21:1, 765, 255

![#000000](https://placehold.it/15/000000?text=+) `Black` `#000000` ✅ 👁\
AAA, 21:1, 765, 255

![#C30600](https://placehold.it/15/C30600?text=+) `Red` `#C30600` ✅ 👁\
AA, 6.3:1, 564, 194

![#007E00](https://placehold.it/15/007E00?text=+) `Green` `#007E00` ✅ 👁\
AA, 5.3:1, 639, 182

![#CD7F40](https://placehold.it/15/CD7F40?text=+) `Yellow` `#CD7F40` ❌ ⚠️\
Fail, 3.1:1, 369, 112

![#006A9D](https://placehold.it/15/006A9D?text=+) `Blue` '#006A9D' ✅ 👁\
AA, 5.9:1, 502, 175

![#3C2DA2](https://placehold.it/15/3C2DA2?text=+) `Magenta` `#3C2DA2` ✅ ⚠️\
AAA, 10.1:1, 498, 193

![#306B6A](https://placehold.it/15/306B6A?text=+) `Cyan` `#306B6A` ✅ 👁\
AA, 6.1:1, 504, 166

![#A3AFB6](https://placehold.it/15/A3AFB6?text=+) `White` `#A3AFB6` ❌ ⚠️\
Fail, 2.2:1, 245, 83

![#666666](https://placehold.it/15/666666?text=+) `Bright Black` `#666666` ✅ ⚠️\
AA, 5.7:1, 459, 153

![#EC0000](https://placehold.it/15/EC0000?text=+) `Bright Red` `#EC0000` ✅ 👁\
AA, 4.6:1, 529, 185

![#008500](https://placehold.it/15/008500?text=+) `Bright Green` `#008500` ✅ 👁\
AA, 4.8:1, 632, 177

![#E9AD53](https://placehold.it/15/E9AD53?text=+) `Bright Yellow` `#E9AD53` ❌ ⚠️\
Fail, 2:1, 276, 75

![#1761BE](https://placehold.it/15/1761BE?text=+) `Bright Blue` `#1761BE` ✅ ⚠️\
AA, 6:1, 455, 170

![#B20F4A](https://placehold.it/15/B20F4A?text=+) `Bright Magenta` `#B20F4A` ✅ ⚠️\
AA, 6.9:1, 498, 185

![#276F6F](https://placehold.it/15/276F6F?text=+) `Bright Cyan` `#276F6F` ✅ 👁\
AA, 5.9:1, 504, 166

![#FFFFFF](https://placehold.it/15/FFFFFF?text=+) `Bright White` `#FFFFFF` ❌ ⚠️\
Fail, 1:1, 0, 0

### Notes on Grading
AAA grade is given for passing all the above requirements.\
AA grade will be given for passing Normal Text requirements.

⚠️  Careful consideration before use. Against another listed color this may be
fine to use, but you should take into account the user.

## Included Highlight Groups

Ruby, Python, Javascript, JSON, SQL, YAML, XML, HTML, CSS, Markdown, Shell, Vim's defaults (Language Constructs, Variable Types, C Family), netrw. 

Will add other highlight groups once the above are completed. Possibly next being,
Perl, php. Also am considering other add-on syntax groups like NGINX or Docker (which would require extending vim with a syntax library for these technologies).  

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

#### Colour Contrast Analyser
* https://github.com/ThePacielloGroup/CCA-OSX

#### Color Oracle
* https://github.com/nvkelso/color-oracle

#### Color Usage Research Lab
https://colorusage.arc.nasa.gov/GuidelinesHierarchy.php
