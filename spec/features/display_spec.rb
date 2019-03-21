feature 'landing page display' do
  scenario 'user views landing page' do
    visit '/'
    expect(page).to have_text("What's your name?")
    expect(page).to have_content("When's your birthday?")
    expect(page).to have_content("month:")
  end

  scenario 'user has birthday today, enters name, day, month and sees birthday greeting' do
    visit '/'
    enter_birthday_today
    expect(page).to have_text( "Happy Birthday Pusheen!")
  end

  scenario 'user has birthday on another day, enters name, day, month and sees days until, greeting' do
    visit '/'
    enter_another_day
    expect(page).to have_text("Your birthday will be in 92 days, Pusheen.")
  end

end