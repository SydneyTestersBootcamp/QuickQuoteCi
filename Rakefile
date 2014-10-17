require 'rspec/core/rake_task'
require 'cucumber/rake/task'
require 'paratrooper'

RSpec::Core::RakeTask.new("unit")
Cucumber::Rake::Task.new("cucumber")

task :default => ["unit", "cucumber"]

task :deploy do
  appname = ENV["APP_NAME"]
  apikey = ENV["API_KEY"]
  deployment = Paratrooper::Deploy.new(appname, api_key: apikey)
  deployment.deploy
end