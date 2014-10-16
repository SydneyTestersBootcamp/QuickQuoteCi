$: << './lib'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
 
require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'rspec'
require 'simplecov'
SimpleCov.start do
  add_filter("spec/")
end
 
# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  App.new
end