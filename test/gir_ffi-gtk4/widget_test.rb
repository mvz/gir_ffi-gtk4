# frozen_string_literal: true

require "test_helper"

describe Gtk::Widget do
  describe "#children" do
    it "lists the widget's children" do
      # Test widget methods using a derived class since Gtk::Widget is an abstract class
      widget = Gtk::Box.new :horizontal, 3
      labels = %w(one two three)
      labels.each do |label|
        widget.append Gtk::Label.new label
      end

      _(widget.children.map(&:label)).must_equal labels
    end
  end
end
