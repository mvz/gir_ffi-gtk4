# frozen_string_literal: true

require "test_helper"

describe Gtk::Image do
  describe ".new_from_icon_name" do
    it "works when called with an icon name" do
      result = Gtk::Image.new_from_icon_name("hi")
      _(result).must_be_instance_of Gtk::Image
    end
  end

  describe ".new_from_gicon" do
    let(:gicon) { Gio::ThemedIcon.new("hi") }
    it "works when called with an icon" do
      result = Gtk::Image.new_from_gicon(gicon)
      _(result).must_be_instance_of Gtk::Image
    end
  end

  describe "#set_from_gicon" do
    let(:gicon) { Gio::ThemedIcon.new("gnome") }
    let(:image) { Gtk::Image.new }

    it "works when called with an icon" do
      image.set_from_gicon(gicon)
      _(image.get_gicon).must_equal gicon
    end
  end
end
