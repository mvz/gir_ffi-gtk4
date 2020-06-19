# frozen_string_literal: true

require "test_helper"

describe Gtk::Window do
  describe ".new" do
    it "creates an object with a refcount of 2 (one for us, one for GTK+)" do
      w = Gtk::Window.new

      _(ref_count(w)).must_equal 2
    end
  end
end
