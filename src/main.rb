require 'sinatra'

get '/' do
  "Hello, World!"
end

put '/poll/:qnum/:ans' do |qn, ans|
  # record the answer in the database
end

get '/poll/:qnum/results' do |qn|
  # % of correct answers
end
