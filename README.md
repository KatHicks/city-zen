# Fix City
### A web application enabling members of the public to report civil issues to their local council

[![Build Status](https://travis-ci.org/KatHicks/fix-city.svg?branch=master)](https://travis-ci.org/KatHicks/fix-city) [![Coverage Status](https://coveralls.io/repos/github/KatHicks/fix-city/badge.svg?branch=master)](https://coveralls.io/github/KatHicks/fix-city?branch=master) [![Code Climate](https://codeclimate.com/github/KatHicks/fix-city/badges/gpa.svg)](https://codeclimate.com/github/KatHicks/fix-city)

Built by [Kat Hicks](https://github.com/KatHicks), [Pedro Castanheira](https://github.com/pedrocastanheira77), [Enrico Graziani](https://github.com/mrenrich84), [Barbara Shinkarenk](https://github.com/varvarra), [Samir Gossain](https://github.com/sim-ware) and [Ben Kielty](https://github.com/bwk103) in 5 days as a practice project at Makers Academy

![Screenshot of landing page](/screenshot.png?raw=true "Screenshot of landing page")

### Instructions

> You'll spend this week working in teams on a project. You'll generate some project ideas (e.g. "build a scheme compiler" or "make a game"). You'll each choose which projects you'd prefer to work on. Your coach will try to assign you to a team that will work on one of your preferred projects.
>
> It will be a one week version of the final projects.

### User stories

As a group, we developed the following user stories that defined our goals for the project as well as what we considered to be the minimum viable product (MVP)

**MVP**

```
As a user,
So that an issue can be dealt with by the council,
I want to be able to create an issue on the app.

As a user,
So that I can manage my issues,
I want to see a list of all of my reported issues.

As a user,
So that I can see what is needed to resolve an issue,
I want to see all the details of an issue.

As a user,
So that citizens can get feedback on the resolution,
I want to be able to manage the status of an issue.

As a user,
So that I can correct myself if there is a mistake in my issue,
I want to be able to update an issue that I've created.
```

**Version 1**

```
As a user,
So that I can differentiate myself and my issues,
I want to be able to sign up to the app.

As a user,
So that I can change my mind about an issue,
I want to be able to delete my issues.

As a user,
So that I can use all the features of the app,
I want to be able to sign in.

As a user,
So that my use of the app is appropriate,
I want to be able to access certain parts of the app based on my credentials.

As a user,
So that I can provide the information to the appropriate council staff member,
I want to be able to add tags when reporting or editing an issue.

As a user,
So that I can see only the issues relevant to me,
I want to be able to filter the issues by tag.

As a council staff member,
So that citizens can get feedback on the result,
I want to be able to manage the status of an issue.

As a citizen,
So that it's clear what the problem is,
I want to be able to upload a photo with my issue.

As a citizen,
So that it is easier to report an issue,
I want the app to know my current location.
```

### Objectives

* Are you having fun?
* Are you a better developer than you were yesterday?
* **Can you use high-quality processes to build a project in a team?**

### Using our app

* You can view our app at [fix-city.herokuapp.com](https://fix-city.herokuapp.com/)
* You will have to sign up to experience the full functionality of the app

### Running the tests

* If you do not have PostgreSQL installed, you will need to install it using the command `$ brew install postgresql`
* You will also need to install Imagemagick using the command `$ brew install imagemagick`
* Next, download the source code by cloning this repo with `$ git clone`
* Navigate into the root of the directory using `$ cd fix-city`
* If you do not have Bundler installed, you will then need to install it using `$ gem install bundler`
* Then, install all of the project dependencies listed in the Gemfile by running `$ bundle install`
* Then, run `$ bin/rake db:create` and `$ bin/rake db:migrate` in the command line to get the database configured
* **Now that everything is set up, run `$ rspec` in the command line to run the tests**

### Technologies

* Built using **Ruby 2.3.3** and **Rails 5.0.1**
* Runs off a **PostgreSQL** database
* Tested using **RSpec** and **Capybara**
* Uses **[Google Maps Javascript API](https://developers.google.com/maps/documentation/javascript/)** to access and present geolocation information
* Styled maps with the **['Pale Dawn' theme by Adam Krogh](https://snazzymaps.com/style/1/pale-dawn)** and the 'Map Marker 2' icon set from 'iconsdb.com'
* Used **SASS** and **Bootstrap** for the front-end styling
* Various gems were also used for different parts of the app, such as **Paperclip** for image upload and **Cancancan** for user differentiation

### Approach

* **Pairing**
  * We split into three groups of two and assigned each pair an aspect of the project to research and develop
  * One group was assigned to the underlying scaffold and structure of the application, another to the different user accounts and image upload, and the final pair to the addition of Google Maps
* **Standups**
  * Daily stand up meetings were held where any problems encountered by the pairs were addressed and any instances of particularly unusual or complex code were reviewed

### Ideas for extension

There are lots of features that we would have liked to include but didn't have time to implement. Below is just a small selection:

* **Council boundaries on map**
  * Our intention for the app is that it would serve the whole of London. London is made up of 32 boroughs which are each responsible for dealing with most of the civic issues within their boundaries.
  * As such, we had wanted to display the borough boundaries on the map and set up the app so that reported issues are automatically forwarded to the appropriate council member
* **Notifications**
  * We also wanted to add on a notification feature so that a user is notified, for example, when the status of an issue that they submitted is changed
* **Profile page**
  * It would have been nice to add a profile page so that users can quickly see all the issues that they themselves have submitted
