# Fix City

[![Build Status](https://travis-ci.org/KatHicks/fix-city.svg?branch=master)](https://travis-ci.org/KatHicks/fix-city) [![Coverage Status](https://coveralls.io/repos/github/KatHicks/fix-city/badge.svg?branch=master)](https://coveralls.io/github/KatHicks/fix-city?branch=master) [![Code Climate](https://codeclimate.com/github/KatHicks/fix-city/badges/gpa.svg)](https://codeclimate.com/github/KatHicks/fix-city)

Fix City is a web application that enables members of the public to report civil issues to their local Council.

Citizens are able to report different types of non-emergency problems such as:

  * Potholes
  * Broken street or sign lighting
  * Worn or cracked road surfaces
  * Traffic signal faults
  * Unstable pavements
  * Overgrown trees and vegetation
  * Blocked drains
  * Flooding

## Approach

#### Planning & Design

Our overarching goal for this project was to design an application which would enable concerned citizens to quickly and efficiently notify their local council of non-emergency problems and issues.  At the outset of the design stage, we first debated the functionality required of a minimum viable product (MVP) and concluded that it should include the abilities to report, view and edit issues.

![Create new](app/images/IMAG0191.jpg)


We decided at an early stage that the most appropriate technology to use in creating our application would be Ruby on Rails and that we would implement Google Maps functionality using the Google Maps Javascript API.

In order to form a shared vision of the final application we produced a series of mockup images, showing the functionality of each page of the application.

![Create new](app/images/IMAG0195.jpg)


![Create new](app/images/IMAG0201.jpg)


#### Development

We split into three groups of two and assigned each pair an aspect of the project to research and develop.  One group was assigned to the underlying scaffold, structure and views of the rails environment, another to a feature permitting the uploading of user photos, and the final pair to the addition of Google Maps across the application.

Daily standups were held at which any problems encountered by the pairs were addressed and any instances of particularly unusual or complex code were shared.

#### Using the App

Index view showing all previous issues:

![alt tag](app/images/index.png)


#### Outcome

At the conclusion of the project, we have produced an application which meets its overriding specification (that of reporting issues), includes a number of additional features and possesses an attractive user-interface.

## User Stories

```

Minimum Viable Product(MVP):

As a user
I want to be able to create an issue
so that it can dealt with by the council

As a user
I want to see a list of all of my reported issues
so that I can manage my issues

As a user
I want to see all the details of an issue
so that I can see what needs to be done

As a user
I want to be able to manage the status of an issue
so that citizens get feedback on the result

As a user
I can update an issue that I've raised
so that I can correct myself
```

```
Additional Features:

As a user
I can sign up
so that I can differentiate myself and my issues

As a user
I can delete issues
if I make a mistake.

As a user
I can sign in
so that I can use the app

As a user
I can access certain parts of the web app based on my credentials
so that my use of the app is appropriate

As a user
I can add tags when reporting or editing my issue
so that I can provide the information to the appropriate Council worker.

As a user
I can filter the issues by tag
so that I can see only the issues relevant to me

As a council staff member
I want to be able to manage the status of an issue
so that citizens get feedback on the result

As a citizen
I want to be able to upload a photo with my issue
so that it's clear what the problem is

As a citizen
I want the app to know my current location
so that it is easier to report an issue
```


### Installation

This project uses Ruby on Rails version 5.0.1 (http://rubyonrails.org) and Ruby version 2.3.3.

  * git clone/fork this repository

  * $ gem install rails

  * $ gem install bundler

  * $ brew install imagemagick

  * $ bundle install

  * $ bin/rake db:create

  * $ bin/rake db:migrate

  * $ bin/rails s

  * Open http://localhost:3000/ in your browser in order to access the app


### Testing framework

This project was tested using Rspec and Capybara.  In order to run and view the tests, run '$ rspec' from the command line.

### Services

The application uses Google Maps Javascript API (https://developers.google.com/maps/documentation/javascript/) in order to access and present map, marker and geolocation information.

To style the maps we used the 'Pale Dawn' theme by Adam Krogh (https://snazzymaps.com/style/1/pale-dawn) and the 'Map Marker 2' iconset from 'iconsdb.com'.

### Future Updates

Going forward, we would like to add functionality to address the following user stories:

```
As a citizen
I want to receive notifications when the status of my issue is changed
so that I know as soon as the Council has resolved the issue.

As a user
I want to have a profile page
so that I can see my user information and reported issue history

As a user
I want to receive 'badges'
so that I can demonstrate the number of times I've reported issues

As a user
I want to use a 'live chat' feature
so that I can discuss an issue with a Council staff member in real time

As a Council staff member
I want to add council boundaries as a layer to the maps
so that any reported issues can be automatically forwarded to the appropriate Council.
```



### Collaborators

  * Kat Hicks
  * Pedro Castanheira
  * Enrico Graziani
  * Barbara Shinkarenko
  * Samir Gossain
  * Ben Kielty
