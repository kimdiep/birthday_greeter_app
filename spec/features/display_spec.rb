# frozen_string_literal: true

feature 'landing page display' do

  before(:each) do
    time_now = Time.new(2019, 4, 27, 1, 1, 1, '+01:00')
    allow(Time).to receive(:now).and_return(time_now)
  end
  
  scenario 'user views landing page' do
    visit '/'
    expect(page).to have_text("What's your name?")
    expect(page).to have_content("When's your birthday?")
    expect(page).to have_content('month:')
  end

  scenario 'user views a birthday greeting if today is their birthday' do
    visit '/'
    enter_birthday_today
    expect(page).to have_text('Happy Birthday Pusheen!')
  end

  scenario 'it is not their birthday today, user views alternative greeting' do
    visit '/'
    enter_day_after_current
    expect(page).to have_text('Your birthday will be in 1 days, Pusheen.')
  end

  scenario 'user already had birthday this year' do
    visit '/'
    enter_day_before_current
    expect(page).to have_text('Your birthday will be in 364 days, Pusheen.')
  end
end
