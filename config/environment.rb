require "bundler/setup"
require "sinatra/activerecord"
Bundler.require
require_all 'app/models'
require 'pry'

ENV['SINATRA_ENV'] ||= 'development'

ActiveRecord::Base.establish_connection(ENV['SINATRA_ENV'].to_sym)
