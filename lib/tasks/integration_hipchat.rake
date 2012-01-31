require 'hipchat'

namespace :integration do

  namespace :hipchat do
    desc "Announce the begining of the integration process to a hipchat room" 
    task :announce do
      config_file = Rails.root.join 'config', 'hipchat.yml'
      options     = YAML.load_file(config_file).symbolize_keys 

      `MESSAGE="@all User #{options[:user]} started to integrate project #{options[:appname]}" bundle exec rake hipchat:send` 
    end 

    task :finish do
      config_file = Rails.root.join 'config', 'hipchat.yml'
      options     = YAML.load_file(config_file).symbolize_keys 

      `MESSAGE="@all User #{options[:user]} finished to integrate project #{options[:appname]}. Well done pro!" bundle exec rake hipchat:send` 
    end 

  end 

end 
