# frozen_string_literal: true

require_relative "lib/gir_ffi-gtk4/version"

Gem::Specification.new do |spec|
  spec.name = "gir_ffi-gtk4"
  spec.version = GirFFIGtk4::VERSION
  spec.authors = ["Matijs van Zuijlen"]
  spec.email = ["matijs@matijs.net"]

  spec.summary = "GirFFI-based Ruby bindings for Gtk+ 4"
  spec.description = "Bindings for Gtk+ 4, generated by GirFFI, with overrides."
  spec.homepage = "http://www.github.com/mvz/gir_ffi-gtk4"
  spec.license = "LGPL-2.1+"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mvz/gir_ffi-gtk4"
  spec.metadata["changelog_uri"] = "https://github.com/mvz/gir_ffi-gtk4/blob/master/Changelog.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files = File.read("Manifest.txt").split
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "gir_ffi", "~> 0.16.0"

  spec.add_development_dependency "minitest", "~> 5.12"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rake-manifest", "~> 0.2.0"
  spec.add_development_dependency "rr", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.25"
  spec.add_development_dependency "rubocop-minitest", "~> 0.25.0"
  spec.add_development_dependency "rubocop-packaging", "~> 0.5.0"
  spec.add_development_dependency "rubocop-performance", "~> 1.13"
end
