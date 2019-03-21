require 'sinatra'

require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base

get '/' do
 erb(:index)
end

post '/user_birthday' do
  @name = params[:name]
  @birthday_day = params[:day]
  @birthday_month = params[:month]
  redirect '/greeting'
end

get '/greeting' do
  erb(:greeting)
end


end