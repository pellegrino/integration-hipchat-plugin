require 'hipchat'

namespace :integration do

  namespace :hipchat do
    desc "Announce the begining of the integration process to a hipchat room" 
    task :announce do
      task "hipchat:send", "User started to integrate" 
    end 

    task :finish do
      task "hipchat:send", "User finished to integrate" 
      task "hipchat:send", "Well done!" 
    end 
 
  end 

end 
