# frozen_string_literal: true

require 'date'

# Birthday Analyser class
class BirthdayAnalyser
  TIME = Time.now
  DATE = Date.new(TIME.year, TIME.month, TIME.day)

  attr_reader :name, :birth_day, :birth_month

  def initialize(name, birth_day, birth_month)
    @name = name
    @birth_day = birth_day
    @birth_month = birth_month
  end

  def check?
    birth_month = Date::MONTHNAMES.index(@birth_month)
    birthday = Date.new(TIME.year, birth_month, @birth_day)

    validation

    if DATE == birthday
      greeting('birthday')
    else
      greeting('future', @days_until)
    end
  end

  def greeting(message, days = nil)
    if message == 'birthday'
      "Happy Birthday #{@name}!"
    elsif message == 'future'
      "Your birthday will be in #{days} days, #{@name}."
    end
  end

  private

  def validation
    birth_month = Date::MONTHNAMES.index(@birth_month)
    birthday = Date.new(TIME.year, birth_month, @birth_day)

    if birthday > DATE
      @days_until = (birthday - DATE).to_i
    elsif birthday < DATE
      @days_until = (birthday - DATE).to_i + 365
    end
  end
end
