## Project Overview
## Processes & Approach

#### REQUIREMENTS

This project is part of Week 3 of the Makers Academy 12-week software engineering programme.

The aim of this project is to build a web app that will ask the user for a name and birthday. When the user submits the form, and depending on the current date, the app will either:

- wish the user happy birthday
- tell them how long they'll have to wait until their next birthday

https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md


#### USER STORIES

As a user, I must be able enter my name so that the birthday greeter app can use my name for the greeting

As a user, I must be able to type in a day of the month and select the month of my birthday so that the greeter app can check whether it is my birthday or not

As a user, I must be able to click 'Go' to receive a greeting. If it is my birthday today, the app will say Happy Birthday, otherwise the app will let me know how long it is until my birthday.

As a user, I must be able to click 'Go' to receive a greeting. If it is my birthday today, the app will say Happy Birthday, otherwise the app will let me know how long it is until my birthday.


#### TECHNICAL IMPLEMENTATION

I used a test-driven development approach to create the simple web app with a form using the `sinatra` MVC framework.

For each user story, I sketched out the features and then wrote some feature tests to capture the end-to-end user flow. I used Capybara for feature testing the user flow, with extensions for RSpec.


### USER STORY 1
> As a user, I must be able enter my name so that the birthday greeter app can use my name for the greeting

The user will first go to the landing page, they will see the following features:

- A landing page title

```
"Hello there!"
```

- Text input box for the user to enter their name:

```
What is your name?
Type: Text input box

```

### USER STORY 2
As a user, I must be able to type in a day of the month and select the month of my birthday so that the greeter app can check whether it is my birthday or not

The following features are also available on the landing page:

- A numerical input field so the user can enter the day of their birthday:

```
- When's your Birthday?
  - Day
    Number input box?

```

*Enhancement:*
For version 1, the number input box can accept any value, but for further improvements, it is possibly better to have dropdown options based days in the calendar month


- A month drop-down field so the user can select the month of their birthday:

```
  - Month
    Month dropdown selection

```

### USER STORY 3
As a user, I must be able to click 'Go' to receive a greeting. If it is my birthday today, the app will say Happy Birthday, otherwise the app will let me know how long it is until my birthday.


- A 'Go!' button to submit the data

```
- Go! 
  Submit button
```

A check is conducted so the user receives the message based on their day, month entry. 

For technical implementation, I decided to use a model to `birthday_analyser.rb` to analyse the user's input.

```
#Some pseudo-code for this model
- Analyse user birthday:

  Current day/month user accessed the app
  Use this to calculate the days until birthday
    "Your birthday will be in X days, [NAME]"
  If birthday day/month == current day/month
    "Happy Birthday [NAME]!"

```

### USER STORY 4
As a user, I must be able to access the birthday greeter web app using a web browser

I thought about hosting technologies, as the user will need to access this via the browser. I also thought about future enhancements and how this would be deployed.

I decided to host the app using Heroku. The app was deployed using the Heroku CLI.


## Improvements/enhancements:

I did this project on 21/03/2019 in a morning. Here are the improvements/enhancements I identified for my project:

- [X] Refactor code for model `birthday_analyser.rb` to remove if/else and to improve readability
- [X] Factor in time-dependent testing in my feature and unit tests
- Factor in edge cases in my testing to improve validation

  e.g. Validation:

  - At the moment, the user can enter any number into the 'day' field. I would like to make the 'day' field validation (based on a dropdown) based on the month selected.
  - [FIXED] If the user enters a day/month before the current day/month, the app will show a negative figure, I would like to fix this by showing the number of days until the next date the following year
  - How about if the user has a birthday on 29/02 - which is a leap year? How to account for a leap year?

- [FIXED] Think about the application of the POST route in `app.rb` and how I can redirect this to another view
- Improve the look and feel of the app
- [DONE] Host the app via Heroku or Github Pages