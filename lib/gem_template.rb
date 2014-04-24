# require gem files here
require "gem_template/version"
require 'gem_template/zombie'

# require third party libraries here
require 'json'

module GemTemplate
  # Your code goes here...
  # hmmm bundler says so, but i say your "helper" methods which are gem wide (used in tests & lib files) should go here
  # usage GemTemplate.root -> 
  class << self
    # Method to return Gem Root Dir
    # @return [String] Gem Root Folder
    def root
      ::File.dirname(::File.expand_path('..', __FILE__))
    end
  end
end
