require 'sinatra'
require 'sinatra/base'
require_relative 'models/birthday_analyser.rb'

class BirthdayGreeter < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/greeting' do
    @name = params[:name]
    @birthday_day = params[:day].to_i
    @birthday_month = params[:month]

    birthday_analyser = BirthdayAnalyser.new(@name, @birthday_day, @birthday_month)
    @analysed_birthday = birthday_analyser.check?

    erb(:greeting)
  end

end