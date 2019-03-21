require './models/birthday_analyser.rb'

describe BirthdayAnalyser do

  context '#check?' do 

    it 'returns the birthday greeting if the user has their birthday matching the current date' do
      user_birthday = BirthdayAnalyser.new("Pusheen",21,"March")
      expect(user_birthday.check?).to eq "Happy Birthday Pusheen!"
    end

    it 'returns (days until birthday message) if today is not the user birthday' do
      user_birthday = BirthdayAnalyser.new("Pusheen",21,"June")
      expect(user_birthday.check?).to eq "Your birthday will be in 92 days, Pusheen."
    end

  end

end