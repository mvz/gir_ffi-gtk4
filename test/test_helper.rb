# frozen_string_literal: true

require "rubygems" if RUBY_PLATFORM == "java"

begin
  require "simplecov"
  SimpleCov.start do
    add_filter "/test/"
  end
rescue LoadError
  nil # SimpleCov not available
end

require "minitest/autorun"
require "rr"

Thread.abort_on_exception = true

require "gir_ffi-gtk4"

module BaseTestExtensions
  def ref_count(object)
    GObject::Object::Struct.new(object.to_ptr)[:ref_count]
  end
end

Minitest::Test.include BaseTestExtensions

Gtk.init
