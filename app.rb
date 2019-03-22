require 'sinatra'
require 'sinatra/base'
require_relative 'models/birthday_analyser.rb'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/greeting' do
    session[:name] = params[:name]
    session[:day] = params[:day].to_i
    session[:month] = params[:month]

    redirect '/greeting'
  end

  get '/greeting' do
    @name = session[:name]
    @birthday_day = session[:day]
    @birthday_month = session[:month]

    birthday_analyser = BirthdayAnalyser.new(@name, @birthday_day, @birthday_month)
    @analysed_birthday = birthday_analyser.check?

    erb(:greeting)
  end

end