# Structure of Emacs MyWay

### Entry point

When emacs starts up, it loads [init.el](../init.el).
This file runs all the required initialization functions to set up Emacs MyWay.

### Downloading packages

1. Emacs comes with a package manager built-in. The file [mw-initial-setup.el](../bootstrap/mw-initial-setup.el) initializes the package manager and also adds the [melpa](https://melpa.org/) repository.
2. The file [mw-package-setup.el](../bootstrap/mw-package-setup.el) has a list of packages in the variable `mw-packages`.
3. When `mw-package-setup` in [init.el](../init.el) runs, the packages in `mw-packages` are downloaded and installed.

Packages that are already downloaded will be skipped. They will not be re-downloaded nor will they be updated to the latest version.

### Customizations

1. The customizations in Emacs MyWay are applied when [init.el](../init.el) loads the file [mw-run-customizations](../bootstrap/mw-initial-setup.el).
2. This, in turn, will load the files under the `customizations/` directory.