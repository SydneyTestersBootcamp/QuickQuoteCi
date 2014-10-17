require 'rspec/core/rake_task'
require 'cucumber/rake/task'
require 'heroku-headless'

RSpec::Core::RakeTask.new("unit")
Cucumber::Rake::Task.new("cucumber")

task :default => ["unit", "cucumber"]

task :deploy do
  appname = ENV["APP_NAME"]
  apikey = ENV["HEROKU_API_KEY"]
  heroku = Heroku::API.new(apikey)
  HerokuHeadless::Deployer.deploy(appname)
end