Crunch Thumbnailer
==================


Distribution
------------

Author: Thomas _“illwieckz”_ Debesse <dev@illwieckz.net>.

License: This tool is distributed under the highly permissive [ISC](COPYING.md) license.


Description
-----------

This is a thumbnailer for the [GNOME](https://www.gnome.org/) desktop. It generates thumbnails for `.ktx`, `.dds` and `.crn` texture files.

It relies on the [`crunch`](https://github.com/Unvanquished/crunch) tool to decode these files then it uses the `convert` tool from [ImageMagick](http://www.imagemagick.org/) to generate thumbnails.

Mime-type definitions for `image/ktx`, `image/x-dds` and `image/x-crn` are installed if they are missing.


How it looks
------------

Here is an example of thumbnails displayed by `nautilus`:

![Nautilus displaying crn thumbnails](doc/nautilus-crn-thumbnails.png)


Installation
------------

```
./configure
make install
make update-db
```

On supported distribution like Debian, you may generate a package by doing:

```
./configure
make checkinstall
```

You can then install the package using `gdebi`. This feature requires `checkinstall` and `fstrans` to be installed. Be sure to uninstall previous version of `crunch-thumbnailer` before running `./configure` to properly detect missing Mime-type definitions, or those will not be shipped in newer package.


About the thumbnailer
---------------------

It can be used by third party projects this way:

```
crunch-thumbnailer -s SIZE INFILE OUTFILE
```


Warning
-------

No warranty is given, use this at your own risk.