# Integration

## WTF? 

This plugin adds hipchat support to [integration](http://github.com/tapajos/integration). Its a small set of rake tasks that can be used along with integration so it can interact with hipchat during the integration process.


## Installing 

Add this project to your gemfile, as you are probably used to do in a bundler controlled project. 

      group :test, :development do
        gem 'integration-hipchat'      
      end 

After bundling your app, you need to change your INTEGRATION\_TASKS adding your hipchat tasks like in the example below 

      INTEGRATION_TASKS = %w(
      integration:start
      db:migrate
      integration:hipchat:announce
      spec
      integration:coverage_verify
      integration:hipchat:finish
      integration:finish)

Don't forget also to configure Rails.root/config/hipchat.yml with the following variables:

     token: "<your token>"
     room: "Your room"
     user: "Your name" # Default to `whoami`
     notify: true # Defaults to false
     appname: "Your project name" # used to create announce messages

## Tasks provided 

This plugin provides the following tasks

  * integration:hipchat:announce
  * integration:hipchat:finish


