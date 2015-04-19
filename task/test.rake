Rake::TestTask.new(:test) do |t|
  t.libs << "test" << "bin" << "ext"
  t.test_files = FileList['test/**/*_test.rb']
  t.verbose = true
end

# Rake::TestTask.new(:spec) do |t|
#   t.libs << "spec" << "bin" << "ext"
#   t.test_files = FileList['spec/**/*_spec.rb']
#   t.verbose = true
# end
