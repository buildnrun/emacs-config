# Structure of Emacs MyWay

### Entry point

When emacs starts up, it loads [init.el](../init.el).
This file runs all the required initialization functions to set up Emacs MyWay.

### Downloading packages

1. Emacs comes with a package manager built-in. The file [mw-initial-setup.el](../bootstrap/mw-initial-setup.el) adds the [melpa](https://melpa.org/) to the repository list.
2. The file [mw-package-setup.el](../bootstrap/mw-package-setup.el) has a list of packages in the variable `mw-packages`.
3. When `mw-package-setup` in [init.el](../init.el) runs, the code in [mw-package-pre-install.el](../bootstrap/mw-package-pre-install.el) runs first to run a pre-install step.
4. Next, the packages in `mw-packages` are downloaded and installed.

Packages that are already downloaded will be skipped. They will not be re-downloaded nor will they be updated to the latest version.

### Customizations

1. The customizations in Emacs MyWay are applied when [init.el](../init.el) loads the file [mw-run-customizations](../bootstrap/mw-run-customizations.el).
2. This, in turn, will load the files under the `customizations/` directory.
3. The order in which the files are loaded are shown in [mw-run-customizations](../bootstrap/mw-run-customizations.el).

#### Customization Files

* [mw-plugins](../customizations/mw-plugins.el): Used to perform package-specific customization
* [mw-ui](../customizations/mw-ui.el): Used to modify the _appearance_ of emacs.
* [mw-editor](../customizations/mw-editor.el): Used to modify how editing functionality of emacs
* [mw-auto-complete](../customizations/mw-auto-complete) and [mw-auto-complete](../customizations/mw-auto-complete-clang-async) : Used to setup auto-complete functionality (not fully functional at the moment).