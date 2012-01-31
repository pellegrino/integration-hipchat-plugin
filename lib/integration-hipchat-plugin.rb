require "integration-hipchat-plugin/version"
Dir["#{Gem::Specification.find_by_name('integration-hipchat-plugin').full_gem_path}/lib/tasks/*.rake"].each { |ext| load ext } if defined?(Rake)

module Integration
  module Hipchat
    module Plugin
      # Your code goes here...
    end
  end
end
