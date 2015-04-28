task :default do
  Rake::Task['test'].invoke
end
