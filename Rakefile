require 'rspec/core/rake_task'
require 'cucumber/rake/task'

RSpec::Core::RakeTask.new("unit")
Cucumber::Rake::Task.new("cucumber")

task :default => ["unit", "cucumber"]

task :deploy do
  heroku_url = ENV["HEROKU_GIT_URL"]
  system!("git push #{heroku_url} master")
end