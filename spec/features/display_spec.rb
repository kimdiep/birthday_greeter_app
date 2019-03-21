feature 'landing page display' do
  scenario 'user views landing page' do
    visit '/'
    expect(page).to have_text("What's your name?")
    expect(page).to have_content("When's your birthday?")
  end

  scenario 'user enters name, day and month and sees a basic greeting' do
    visit '/'
    enter_details
    expect(page).to have_text("Hi Pusheen")
    expect(page).to have_text("Your birthday day is 6")
    expect(page).to have_text("Your birthday month is June")
  end

end