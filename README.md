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

Compared against a background color of `#FFFFFF`

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

Black `#000000` ✅ 👁
* Grade - AAA
* Contrast Ratio - 21:1
* Colour Difference - 765
* Brightness Difference - 255

Red `#C30600` ✅ 👁
* Grade - AA
* Contrast Ratio - 6.3:1
* Colour Difference - 564
* Brightness Difference - 194

Green `#007E00` ✅ 👁
* Grade - AA
* Contrast Ratio - 5.3:1
* Colour Difference - 639
* Brightness Difference - 182

Yellow `#CD7F40` ❌ ⚠️
* Grade - Fail
* Contrast Ratio - 3.1:1
* Colour Difference - 369
* Brightness Difference - 112

Blue '#006A9D' ✅ 👁
* Grade - AA
* Contrast Ratio - 5.9:1
* Colour Difference - 502
* Brightness Difference - 175

Magenta `#3C2DA2` ✅ ⚠️
* Grade - AAA
* Contrast Ratio - 10.1:1
* Colour Difference - 498
* Brightness Difference - 193

Cyan `#306B6A` ✅ 👁
* Grade - AA
* Contrast Ratio - 6.1:1
* Colour Difference - 504
* Brightness Difference - 166

White `#A3AFB6` ❌ ⚠️
* Grade - Fail
* Contrast Ratio - 2.2:1
* Colour Difference - 245
* Brightness Difference - 83

Bright Black `#666666` ✅ ⚠️
* Grade - AA
* Contrast Ratio - 5.7:1
* Colour Difference - 459
* Brightness Difference - 153

Bright Red `#EC0000` ✅ 👁
* Grade - AA
* Contrast Ratio - 4.6:1
* Colour Difference - 529
* Brightness Difference - 185

Bright Green `#008500` ✅ 👁
* Grade - AA
* Contrast Ratio - 4.8:1
* Colour Difference - 632
* Brightness Difference - 177

Bright Yellow `#E9AD53` ❌ ⚠️
* Grade - Fail
* Contrast Ratio - 2:1
* Colour Difference - 276
* Brightness Difference - 75

Bright Blue `#1761BE` ✅ ⚠️
* Grade - AA
* Contrast Ratio - 6:1
* Colour Difference - 455
* Brightness Difference - 170

Bright Magenta `#B20F4A` ✅ ⚠️
* Grade - AA
* Contrast Ratio - 6.9:1
* Colour Difference - 498
* Brightness Difference - 185

Bright Cyan `#276F6F` ✅ 👁
* Grade - AA
* Contrast Ratio - 5.9:1
* Colour Difference - 504
* Brightness Difference - 166

Bright White `#FFFFFF` ❌ ⚠️
* Grade - Fail
* Contrast Ratio - 1:1
* Colour Difference - 0
* Brightness Difference - 0

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
