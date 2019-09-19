### README

[![Maintainability](https://api.codeclimate.com/v1/badges/0fbc7ecbc42ea1b9f53a/maintainability)](https://codeclimate.com/github/Ochowo/iReporter-BE/maintainability) [![Build Status](https://travis-ci.com/Ochowo/iReporter-BE.svg?branch=develop)](https://travis-ci.com/Ochowo/iReporter-BE) [![Test Coverage](https://api.codeclimate.com/v1/badges/0fbc7ecbc42ea1b9f53a/test_coverage)](https://codeclimate.com/github/Ochowo/iReporter-BE/test_coverage)

Structuring Africa without corruption and crime

#### Project Management
Project is managed with pivotal tracker [here](https://www.pivotaltracker.com/n/projects/2389161)

#### API Deployment
Api is deployed [here](https://incident-report-08.herokuapp.com/)

#### Required Features
 * Users can create an account and log in. 
 * Users can create an **incident** record.
 * Users can edit their **incident** records.
 * Users can view their **incident** records.
 * Users can delete their **incident** records.
 
#### Technologies Used
* Ruby
* Rails
* JWT

#### Testing tools
* Rspec.

#### Getting Started
* Install NodeJS and PostgreSQL on your computer
* Clone this repository using git clone https://github.com/Ochowo/iReporter-BE.git
* Run bundle install to install all dependencies
* Run rails db:migrate 
* Run rails s to start the server
* Navigate to localhost:3000 in browser to access the application

#### Available Endpoints
* `/api/auth/signup` - signup
* `/api/auth/login` - login
* `/api/interventions` - create intervention
* `/api/interventions` - get interventions
* `/api/interventions/:id` - get single intervention
* `/api/interventions/:id` -  edit intervention
* `/api/interventions/:id` -  delete intervention

#### Testing with Postman
* Install postman as shown [here]: https://www.getpostman.com/
* Navigate to `https://incident-report-08.herokuapp.com/` in Postman to access the application
* Use available endpoints to access app
* Run test with npm test
