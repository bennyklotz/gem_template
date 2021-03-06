desc 'Setup your gem -> rake gem_setup["mygemname"]'
task :gem_setup  do |t, args|
  puts 'Specify gem name'
  file_name = STDIN.gets.chomp
  if file_name.include?('-')
    puts 'Not supported yet...'
  else
    puts 'Specify module name'
    module_name = STDIN.gets.chomp

    setup_files(file_name)
    setup_file_contents(file_name, module_name)
    clearup
  end
end

def setup_files(name)
  puts "Setting up Gem Name: #{name}"
  system("mv gem_template.gemspec #{name}.gemspec")
  system("mv lib/gem_template lib/#{name}")
  system("mv lib/gem_template.rb lib/#{name}.rb")
  system("mv test/gem_template test/#{name}")
end

def setup_file_contents(file_name, module_name)
  ["{lib,test}/**/*.rb", '*.gemspec', "Rakefile", "Gemfile", "task/console.rake", 'README.md.new'].each do |path|
    Dir.glob(path).each do |file|
      puts "Updating file: #{file}"
      content = File.read(file)
      content.gsub!('gem_template', file_name)
      content.gsub!('GemTemplate', module_name)

      File.open(file, 'w') { |file| file.puts(content) }
    end
  end
end

def clearup
  system("rm task/gem_setup.rake")
  system("rm -rf .git/")
  system("rm README.md")
  system("mv README.md.new README.md")
  system("rm MANIFEST")
  system("touch MANIFEST")
end
