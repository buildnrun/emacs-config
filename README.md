# Emacs MyWay

Emacs MyWay is a set of emacs configuration files heavily inspired by the [Prelude](https://github.com/bbatsov/prelude) project.
I designed it for myself when I was a new emacs user.
My requirements were simple: (i) provide a good set of defaults, and (ii) be easy to understand and make changes.
By my standards, existing frameworks at the time were either too cluttered, or it was difficult for me to figure out their structure and make modifications.
So one day, I took [Prelude](https://github.com/bbatsov/prelude), stripped away everything I considered unnecessary, and reorganized it.
My hope is that other emacs users would find this useful as well.
Please do spend a few minutes reading the [philosophy](docs/philosophy.md) of this project.

## Installation

Follow the instructions below to use Emacs MyWay.

### Unix-based OS (GNU/Linux, Mac OSX, ...):

1. If you haven't already, install Emacs.
  * If possible, install version 25. Otherwise, version 24 should still work.
  * If you're using Mac OSX, I highly recommend installing emacs with [Homebrew](http://brew.sh)
     * (Recommended command: `brew install emacs --with-cocoa --with-gnutls`)
2. Clone this repository.
3. Remove your existing `.emacs.d` directory.
4. Symlink the cloned repository to `.emacs.d`.

In terms of shell code:

```bash
cd ~
rm .emacs.d
git clone https://gitlab.com/alirazeen/emacs-myway.git dot.files/emacs-myway
ln -s dot.files/emacs-myway/ .emacs.d
```

## License

This whole project is licensed as GPLv3+.

## Documentation

See the `docs/` folder for further documentation:

* [Philosophy](docs/philosophy.md)
* [Project Structure](docs/project-structure.md)
* [How do I ... ?](docs/how-do-i.md)

## Contact

If you have questions or suggestions, please email me at "alirazeen at alirazeen dot com".
