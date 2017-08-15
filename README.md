# Flickr App

Project for [The Odin Projects](https://www.theodinproject.com) Ruby on Rails Curriculum.
More information can be found [here](https://www.theodinproject.com/courses/ruby-on-rails/lessons/apis)

## Installation
* `bundle install`
* add the line `require 'flickraw'` to `config/environment.rb`
* `bundle exec figaro install`
* Obtain Flickr API Key and Secret from [Flickr App Garden](https://www.flickr.com/services/apps/create/)
* Copy Key and Secret into `config/application.yml`
  ```
  FLICKR_API_KEY: "<Your Flickr API Key>"
  FLICKR_API_SECRET: "<Your Flickr API Secret>"
  ```
* then start the server with `rails s`