# frozen_string_literal: true

require "test_helper"

describe Gtk::FileChooserDialog do
  describe ".new" do
    it "creates a Gtk::FileChooserDialog with the right attributes" do
      dialog = Gtk::FileChooserDialog.new "Foo", nil, :save, [["Bar", :yes]]
      _(dialog.title).must_equal "Foo"
      _(dialog.action).must_equal :save

      # Check assumption of following code
      _(dialog.use_header_bar).must_equal 1
      header_bar = dialog.header_bar
      window_handle = header_bar.first_child
      center_box = window_handle.child
      button_box = center_box.end_widget
      button = button_box.first_child

      _(button.label).must_equal "Bar"
      _(dialog.response_for_widget(button)).must_equal Gtk::ResponseType.to_int(:yes)
    end
  end
end
