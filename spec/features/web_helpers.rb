def enter_details
  visit '/'
  fill_in "name", with: 'Pusheen'
  fill_in 'day', with: 6
  fill_in 'month', with: "June"
  click_button 'Go'
end