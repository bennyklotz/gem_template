# GemTemplate

This repo is intended as a Gem Template.

Just clone the repo and change the essential parts and you can start with your own gem.

## Essential changes:
### Testing Framework:

This template supports different Testing Frameworks

Before you remove the old .git folder to setup a new git repo for your new gem decide which Testing framework to use.

Choose your testing framework easily, you just have to switch branches.

#### Testing Branches:

- master branch -> MiniTest::TestUnit
- minitest_spec branch -> MiniTest::Spec
- rspec branch -> Rspec

NOTE: Only MiniTest supported for now (master branch)


### Setup your gem

Everything which is named GemTemplate or gem_template (Modules, Files, Folder) should be changed to your gem's name.

Eg.: Move gem_template.gemspec to myawesomegem.gemspec<br /><br />

Also remove the example class and test (class Zombie)


### Manifest File

Decide which files should be shipped with your gem.

Maybe no Rakefile? Testfiles? or just some files which should be checked into Git but not into the rubygem

You can also sync git files with your rubygem files with ```rake manifest```
