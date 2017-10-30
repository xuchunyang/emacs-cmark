# emacs-cmark

Emacs binding of [cmark](https://github.com/commonmark/cmark).

## Requirements

- cmark (if you're a Homebrew user, use `brew install cmark`)
- Emacs with dynamic modules support (if not sure, check `C-h v module-file-suffix`)
- `emacs-module.h` (for compiling `cmark-module.c`, the entirly Emacs source is NOT required)

## Installation

Compile:

    make EMACS_SRC=/dirname/of/emacs-module.h

Setup:

```elisp
(use-package cmark
  :load-path "/path/to/emacs-cmark"
  :commands cmark-markdown-to-html)
```

for those who don't use `use-package`:

```elisp
(add-to-list 'load-path "/path/to/emacs-cmark")
(autoload #'cmark-markdown-to-html "cmark" nil t)

```

## Usage

```elisp
(cmark-markdown-to-html "# foo")
     => "<h1>foo</h1>
"
```
