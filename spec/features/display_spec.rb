feature 'landing page display' do
  scenario 'user views landing page' do
    visit '/'
    expect(page).to have_text "What's your name?"
    expect(page).to have_content("When's your birthday?")
  end
end