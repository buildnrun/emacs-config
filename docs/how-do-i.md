# How do I ..... ?

This document (hopefully) contains answers to questions you might have when modifying emacs-myway to meet your needs.
If you do not find a helpful answer or want to suggest a question, please email me.

### How should I modify emacs-myway?

Clone/fork this repository, create a branch and commit all your modifications to that branch.
That way, if I update emacs-myway, you can pull my updates and merge them with your modifications.
In the ideal case, though, one day you would no longer need to pull anything from this repository because you're now an expert in emacs configuration!

### How do I install a new package?

Open the file [mw-package-setup.el](../bootstrap/mw-package-setup.el), and add the package to the list `mw-packages`.
For readability, the list is alphabetically ordered.
In case you face errors, check that your package is available either in [elpa](https://elpa.gnu.org) or [melpa](https://melpa.org).

### How do I change the appearance?

By default, emacs-myway uses the [Zenburn](https://github.com/bbatsov/zenburn-emacs) theme.
If you would like to use another theme, you would need to add the theme to the package list (see #).
Next, you would modify [mw-ui.el](../customizations/mw-ui.el) to load your new theme instead of Zenburn.
After modifying [mw-ui.el](../customizations/mw-ui.el), save the file and restart emacs.