require 'rubygems'
require 'bundler'
require 'sinatra'
require 'sprockets'
require './application'

Bundler.require

map '/assets' do
  sprockets = Sprockets::Environment.new
  sprockets.append_path 'assets/stylesheets'
  sprockets.append_path 'assets/images'
  sprockets.append_path 'assets/javascripts'
  run sprockets
end

run Sinatra::Application
