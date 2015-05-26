# GemTemplate

This repo is intended as a Gem Template.

Just clone the repo and change the essential parts and you can start with your own gem.

Clone it like this:

```bash
  $ git clone git@github.com:bennyklotz/gem_template.git my_gem
```

'my_gem' will be your gem name

## Essential changes:

### Setup your gem

Everything which is named GemTemplate or gem_template (Modules, Files, Folder) should be changed to your gem's name.

To change your files type in ```rake gem_setup```

Now you have to input your new Gem Name and Gem Module Name (eg.: my_gem, MyGem)

This should setup your whole new gem:
  - Change file names
  - Change content from files (updates require statements and module names)
  - Clears README
  - Deletes .git folder

The only thing you have to do by hand, is to move ```gem_template``` folder to your proper gem folder if you didn't clone the repo as your gem name.

### Manifest File

Decide which files should be shipped with your gem.

Maybe no Rakefile? Testfiles? or just some files which should be checked into Git but not into the rubygem

You can also sync git files with your rubygem files with ```rake manifest```

### TODO

Handle gem setup if gem name has pattern rack-my_gem

This would mean a gem with following lib structure (also reflects test/spec folder structure):
  * lib/
    * rack/
      * my_gem/
      * my_gem.rb

And following module structure, eg. in file ```lib/rack/my_gem.rb```:
```ruby
module Rack
  module MyGem
  end
end
```
