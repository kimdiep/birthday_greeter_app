require 'sinatra'

require 'sinatra/base'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/greeting' do
    @name = params[:name]
    @birthday_day = params[:day]
    @birthday_month = params[:month]
    erb(:greeting)
  end

  # get '/greeting' do
  #   erb(:greeting)
  # end

end