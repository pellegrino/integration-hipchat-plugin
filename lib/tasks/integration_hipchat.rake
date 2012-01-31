require 'hipchat'

namespace :integration do

  namespace :hipchat do
    desc "Announce the begining of the integration process to a hipchat room" 
    task :announce do
      user = `whoami`
      `MESSAGE="@all User #{user} started to integrate" bundle exec rake hipchat:send` 
    end 

    task :finish do
      user = `whoami`
      `MESSAGE="@all User #{user} finished to integrate. Well done pro!" bundle exec rake hipchat:send` 
    end 
 
  end 

end 
