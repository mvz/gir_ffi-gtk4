# frozen_string_literal: true

module GirFFIGtk4
  # Overrides for Gtk::Widget
  module WidgetOverride
    def children
      children = []
      child = first_child
      while child
        children << child
        child = child.next_sibling
      end

      children
    end
  end
end

Gtk.load_class :Widget
Gtk::Widget.prepend GirFFIGtk4::WidgetOverride
