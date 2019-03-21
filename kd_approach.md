##Approach

This project is part of Week 3 of the Makers Academy 12-week software engineering programme.

The aim of this project is to build a web app that will ask the user for a name and birthday. When the user submits the form, and depending on the current date, the app will either:

- wish the user happy birthday
- tell them how long they'll have to wait until their next birthday

https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md


User Stories:

As a user, I must be able enter my name so that the birthday greeter app can use my name for the greeting

- Landing page title

- What is your name?
  Text input box

As a user, I must be able to type in a day of the month and select the month of my birthday so that the greeter app can check whether it is my birthday or not

- When's your Birthday?
  - Day
    Number input box? - possibly better to have a dropdown options based days in the calendar month?
  
  - Month
    Month dropdown selection

As a user, I must be able to click 'Go' to receive a greeting. If it is my birthday today, the app will say Happy Birthday, otherwise the app will let me know how long it is until my birthday.

- Go! 
  Submit button

- Calculate
  Current day/month user accessed the app
  Use this to calculate the days until birthday
    "Your birthday will be in X days, [NAME]"
  If birthday day/month == current day/month
    "Happy Birthday [NAME]!"

As a user, I must be able to access the birthday greeter web app using a web browser

- Hosting?