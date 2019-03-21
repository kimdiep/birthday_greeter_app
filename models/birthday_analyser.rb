require 'date'

class BirthdayAnalyser

  attr_reader :name, :birth_day, :birth_month

  def initialize(name, birth_day, birth_month)
    @name = name
    @birth_day = birth_day
    @birth_month = birth_month
  end

  def check?
    current_time = Time.now
    current_day = current_time.day
    current_month = current_time.month
    current_year = current_time.year

    birth_month = Date::MONTHNAMES.index(@birth_month)
    current_date = Date.new(current_year, current_month, current_day)
    birthday_date = Date.new(current_year, birth_month, @birth_day)

    if birthday_date > current_date
      days_until = (birthday_date - current_date).to_i

    elsif birthday_date < current_date
      days_until = (birthday_date - current_date).to_i + 365
    end


    if current_date == birthday_date
      greeting("birthday")
    else
      greeting("future", days_until) if current_date != birthday_date
    end
  end

  def greeting(message, days = nil)
    if message == "birthday"
      "Happy Birthday #{@name}!"
    elsif message == "future"
      "Your birthday will be in #{days} days, #{@name}."
    end
  end

end