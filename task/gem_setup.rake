desc 'Setup your gem -> rake gem_setup["mygemname"]'
task :gem_setup, :name do |t, args|
  puts "Setting up Gem Name: #{args['name']}"
  system("mv gem_template.gemspec #{args['name']}.gemspec")
  system("mv lib/gem_template lib/#{args['name']}")
  system("mv lib/gem_template.rb lib/#{args['name']}.rb")
  system("mv test/gem_template test/#{args['name']}")
end
