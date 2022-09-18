# GirFFI-Gtk4

by Matijs van Zuijlen

## Description

GirFFI-based Ruby bindings for Gtk+ 4

## Usage

```ruby
require 'gir_ffi-gtk4'
Gtk.init
win = Gtk::Window.new :toplevel
win.show
GObject.signal_connect(win, "destroy") { Gtk.main_quit }
Gtk.main
```

See the `examples/` directory for more examples.

## Install

```bash
gem install gir_ffi-gtk4
```

## Requirements

First, make sure the `ffi` gem is properly installed. See its documentation for
the necessary requirements.

GirFFI-Gtk itself depends on the [GirFFI](https://rubygems.org/gems/gir_ffi)
gem, and the gobject-introspection and gtk+ libaries.

For Debian-like systems, try the following for:

```bash
apt-get install libgirepository1.0-dev gobject-introspection gir1.2-gtk-4.0
```

This gem has not been tested on Mac OS X or Microsoft Windows. YMMV. Pull
requests to support these platforms are welcome.

## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## License

Copyright &copy; 2020&ndash;2022 [Matijs van Zuijlen](http://www.matijs.net)

GirFFI-Gtk4 is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for
more information.
