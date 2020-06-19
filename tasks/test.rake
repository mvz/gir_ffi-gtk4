# frozen_string_literal: true

require "rake/testtask"

namespace :test do
  Rake::TestTask.new(:unit) do |t|
    t.libs = ["lib"]
    t.test_files = FileList["test/**/*_test.rb"]
    t.ruby_opts += ["-w", "-Itest"]
  end
end

desc "Run unit tests"
task test: ["test:unit"]
