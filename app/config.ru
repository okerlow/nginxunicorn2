require 'rubygems'
require 'bundler'
require 'rack'
Bundler.require
require './serve.rb'

use Rack::ShowExceptions

run Rack::URLMap.new \
    ENV['ABOUTMEAPP_ROOT'] => Sinatra::Application

