Birthday Greeter Web App
========================

```
           ~                  ~
     *                   *                *       *
                  *               *
  ~       *                *         ~    *
              *       ~        *              *   ~
                  )         (         )              *
    *    ~     ) (_)   (   (_)   )   (_) (  *
           *  (_) # ) (_) ) # ( (_) ( # (_)       *
              _#.-#(_)-#-(_)#(_)-#-(_)#-.#_
  *         .' #  # #  #  # # #  #  # #  # `.   ~     *
           :   #    #  #  #   #  #  #    #   :
    ~      :.       #     #   #     #       .:      *
        *  | `-.__                     __.-' | *
           |      `````"""""""""""`````      |         *
     *     |         | ||\ |~)|~)\ /         |
           |         |~||~\|~ |~  |          |       ~
   ~   *   |                                 | *
           |      |~)||~)~|~| ||~\|\ \ /     |         *
   *    _.-|      |~)||~\ | |~|| /|~\ |      |-._
      .'   '.      ~            ~           .'   `.  *
  jgs :      `-.__                     __.-'      :
       `.         `````"""""""""""`````         .'
         `-.._                             _..-'
              `````""""-----------""""`````

------------------------------------------------
Thank you for visiting https://asciiart.website/
This ASCII pic can be found at
https://asciiart.website/index.php?art=events/birthday


```
## How to use the app

The app is available here:
https://birthday-greeter.herokuapp.com/

## I documented my approach in 'kd_approach.md' <---- Please read me! :)

**To improve my project, next time I would like to:**


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

## Introduction to the project

This project is part of Week 3 of the Makers Academy 12-week software engineering programme.

The aim of this project is to build a web app that will ask the user for a name and birthday. When the user submits the form, and depending on the current date, the app will either:

- wish the user happy birthday
- tell them how long they'll have to wait until their next birthday

https://github.com/makersacademy/course/blob/master/intro_to_the_web/post_challenges/birthday_app.md


## Motivation: What are my goals for this project?

#### For this challenge, I am specifically targeting the following Makers Academy goals:

I have a methodical approach to solving problems
I can debug anything
I can TDD anything

In order to test my understanding of web apps and verify that I can build a simple web app with a form using an MVC framework, I will build a birthday greeter app.

#### Relating to the above high-level goals, I would like to:

- Document and explain the processes and approaches I used

> This is presented in: 'kd_approach.md'.

Concrete things
- Apply the MVC framework `Sinatra` to build a simple web app

Concepts
- Understand MVC frameworks
- Explore how to host my web app

Processes
- Use test-driven development to test-drive the app. I would like to apply the use of Capybara for feature testing the user flow.

Behaviours/mindset
- Take a step back to understand how to model the birthday greeter app

## Tech/Framework Used

I will be using Capybara testing as it has extensions for RSpec. I will be particularly focusing on feature-testing the user flow for this project.

You can find out more about Capybara here: http://teamcapybara.github.io/capybara/

RSpec will be used as the testing framework.  

>"RSpec is a Behaviour-Driven Development tool for Ruby programmers. BDD is an approach
to software development that combines Test-Driven Development, Domain Driven Design,
and Acceptance Test-Driven Planning. RSpec helps you do the TDD part of that equation,
focusing on the documentation and design aspects of TDD." 

See documentation:
https://relishapp.com/rspec
http://rspec.info/


The MVC framework, `Sinatra` will be used to build a simple web app. Ruby will be used as the programming language and HTML in Sinatra views for the user interface.

As a final step, I explored options for hosting my web app.

## Code Style


## How to use the app

The app is available here:
https://birthday-greeter.herokuapp.com/

I decided to host the app using Heroku. The app was deployed using the Heroku CLI.
https://www.heroku.com/home


## Images/Screenshots

<img src="./public/images/Screen Shot 2019-03-21 at 18.03.07.png" width="600" height="400"/>

<img src="./public/images/Screen Shot 2019-03-21 at 18.03.13.png" width="600" height="400"/>

<img src="./public/images/Screen Shot 2019-03-28 at 12.16.01.png" width="600" height="400"/>

## Getting started

`git clone https://github.com/kimdiep/birthday_greeter_app.git`

## Running tests

Tests can be run from the root directory using:

`rspec`

