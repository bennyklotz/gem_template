task :console do
  require 'irb'
  require 'irb/completion'
  require 'gem_template'
  ARGV.clear
  IRB.start
end
