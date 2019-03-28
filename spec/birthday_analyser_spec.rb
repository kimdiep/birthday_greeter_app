# frozen_string_literal: true

require './models/birthday_analyser.rb'

describe BirthdayAnalyser do
  context '#check?' do
    it 'returns the birthday greeting if the user has their birthday today' do
      user_birthday = BirthdayAnalyser.new('Pusheen', TIME.day, 'March')
      expect(user_birthday.check?).to eq 'Happy Birthday Pusheen!'
    end

    it 'returns a message if birthday is not today' do
      user_birthday = BirthdayAnalyser.new('Pusheen', TIME.day + 1, 'March')
      expect(user_birthday.check?).to eq 'Your birthday will be in 1 days, Pusheen.'
    end
  end
end
