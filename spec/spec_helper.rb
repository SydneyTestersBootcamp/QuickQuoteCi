$: << './lib'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
 
require 'rubygems'
require 'sinatra'
require 'rack/test'
require 'rspec'
require 'simplecov'
require 'simplecov-rcov'
SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
SimpleCov.start do
  add_filter("spec/")
  add_filter("gems/")
end
 
# set test environment
set :environment, :test
set :run, false
set :raise_errors, true
set :logging, false

def app
  App.new
end