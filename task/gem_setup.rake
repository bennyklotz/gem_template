desc 'Setup your gem -> rake gem_setup["mygemname"]'
task :gem_setup, [:file_name, :module_name] do |t, args|
  setup_files(args[:file_name])
  setup_file_contents(args[:file_name], args[:module_name])
  system("rm task/gem_setup.rake")
end

def setup_files(name)
  puts "Setting up Gem Name: #{name}"
  system("mv gem_template.gemspec #{name}.gemspec")
  system("mv lib/gem_template lib/#{name}")
  system("mv lib/gem_template.rb lib/#{name}.rb")
  system("mv test/gem_template test/#{name}")
end

def setup_file_contents(file_name, module_name)
  ["{lib,test}/**/*.rb", '*.gemspec', 'Rakefile'].each do |path|
    Dir.glob(path).each do |file|
      puts "Updating file: #{file}"
      content = File.read(file)
      content.gsub!('gem_template', file_name)
      content.gsub!('GemTemplate', module_name)

      File.open(file, 'w') { |file| file.puts(content) }
    end
  end
end
