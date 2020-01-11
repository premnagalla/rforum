# README

## Setup

* Ruby version: 2.6.3

* Rails version: 5.1.7

* Database: Postgresql

### Configuration

* Database creation:
` rake db:create db:migrate`
* To Create master/seed data:
 `rake db:seed`
* How to run the test suite
`rspec spec`


## Features
* This application let users to add questions, answers & comments
* Authentication mechanism is not yet added
* Comments are supported to have n-levels of nested comments in backend
* Comments display is configured to have only 2 levels, for cleaner display
* Removing a comment, will cleanly remove all its child comments both in front end as well as backend
