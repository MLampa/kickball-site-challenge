require 'sinatra'
require 'json'
require 'pry'
require 'erb'

file = File.read('roster.json')
data_hash = JSON.parse(file)

get "/teams" do
  @data_hash = data_hash
  erb :teams
end

get "/teams/:team_names" do
  @team = params[:team_names]
  @team_data = data_hash[@team]
  erb :team_names
end
