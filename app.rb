require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @input = params.fetch('input')
  @result = params.fetch('input').scrabble()
  erb(:result)
end
