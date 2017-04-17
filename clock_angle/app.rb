require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:form)
end

get('/main') do
  @time = params.fetch('time')
  erb(:main)
end
