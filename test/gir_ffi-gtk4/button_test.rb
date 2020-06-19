# frozen_string_literal: true

require "test_helper"

describe Gtk::Button do
  describe ".new_from_icon_name" do
    it "works when called with an icon name" do
      result = Gtk::Button.new_from_icon_name("hi")
      _(result).must_be_instance_of Gtk::Button
    end
  end
end
