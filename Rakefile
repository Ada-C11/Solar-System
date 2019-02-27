require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs = ["."]
  t.warning = true
  t.test_files = FileList["*_spec.rb"]
end

task default: :test
