def enter_birthday_today
  visit '/'
  fill_in "name", with: 'Pusheen'
  fill_in 'day', with: 21
  page.select("March", :from => "month")
  click_button 'Go'
end

def enter_day_after_current
  visit '/'
  fill_in "name", with: 'Pusheen'
  fill_in 'day', with: 21
  page.select("June", :from => "month")
  click_button 'Go'
end

def enter_day_before_current
  visit '/'
  fill_in "name", with: 'Pusheen'
  fill_in 'day', with: 1
  page.select("February", :from => "month")
  click_button 'Go'
end