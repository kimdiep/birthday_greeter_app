# frozen_string_literal: true

require './models/birthday_analyser.rb'

before(:each) do
  time_now = Time.new(2019, 4, 27, 1, 1, 1, '+01:00')
  allow(Time).to receive(:now).and_return(time_now)
end


describe BirthdayAnalyser do
  context '#check?' do
    it 'returns the birthday greeting if the user has their birthday today' do
      user_birthday = BirthdayAnalyser.new('Pusheen', 27, 'April')
      expect(user_birthday.check?).to eq 'Happy Birthday Pusheen!'
    end

    it 'returns a message if birthday is not today' do
      user_birthday = BirthdayAnalyser.new('Pusheen', 28, 'April')
      expect(user_birthday.check?).to eq 'Your birthday will be in 1 days, Pusheen.'
    end
  end
end
