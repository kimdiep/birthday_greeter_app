# frozen_string_literal: true

TIME = Time.now

def enter_birthday_today
  visit '/'
  fill_in 'name', with: 'Pusheen'
  fill_in 'day', with: 27
  page.select('April', from: 'month')
  click_button 'Go'
end

def enter_day_after_current
  visit '/'
  fill_in 'name', with: 'Pusheen'
  fill_in 'day', with: 28
  page.select('April', from: 'month')
  click_button 'Go'
end

def enter_day_before_current
  visit '/'
  fill_in 'name', with: 'Pusheen'
  fill_in 'day', with: 26
  page.select('April', from: 'month')
  click_button 'Go'
end
