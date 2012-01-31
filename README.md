# Integration

## WTF? 

This plugin adds hipchat support to [integration](http://github.com/tapajos/integration). Its a small set of rake tasks that can be used along with integration so it can interact with hipchat during the integration process.


## Installing 

Add this project to your gemfile, as you are probably used to do in a bundler controlled project. 

    group :test, :development do
      gem 'integration-hipchat'      
    end 

After bundling your app, you need to change your INTEGRATION\_TASKS adding your hipchat tasks. 

## Tasks provided 

This plugin provides the following tasks

  * integration:hipchat:announce
  * integration:hipchat:finish


