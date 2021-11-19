# GirFFI-Gtk4

by Matijs van Zuijlen

## Description

GirFFI-based bindings for Gtk+ 4

## Usage

    require 'gir_ffi-gtk4'
    Gtk.init
    win = Gtk::Window.new :toplevel
    win.show
    GObject.signal_connect(win, "destroy") { Gtk.main_quit }
    Gtk.main

See the `examples/` directory for more examples.

## Install

    gem install gir_ffi-gtk4

## Requirements

First, make sure the `ffi` gem is properly installed. See its documentation for
the necessary requirements.

GirFFI-Gtk itself depends on the GirFFI gem, and the gobject-introspection and
gtk+ libaries.

For debian-like systems, try the following for:

    apt-get install libgirepository1.0-dev gobject-introspection gir1.2-gtk-4.0


## Contributing

Please see [CONTRIBUTING.md](CONTRIBUTING.md) for contribution guidelines.

## License

Copyright &copy; 2020&ndash;2021 [Matijs van Zuijlen](http://www.matijs.net)

GirFFI-Gtk4 is free software, distributed under the terms of the GNU Lesser
General Public License, version 2.1 or later. See the file COPYING.LIB for
more information.
