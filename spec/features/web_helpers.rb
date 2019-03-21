def enter_details
  visit '/'
  fill_in "name", with: 'Pusheen'
  fill_in 'day', with: 6
  page.select("June", :from => "month")
  click_button 'Go'
end