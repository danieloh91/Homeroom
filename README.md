# Homeroom
HomeRoom is a web platform through which instructors can communicate to their students via broadcasting information that each of their students will receive. Students receive the announcements of their instructors via a feed shown on their user pages. Students are able to "enroll" into an instructor's class by sending a request to follow them, which instructors can confirm or deny that request. This application ensures that students receive the latest information on their assignments while instructors can relay that information in a secure manner.

## Link to Heroku App
* [HomeRoom] (https://homeroom-app.herokuapp.com)

## Wireframes and ERDs

### Wireframes
![wireframes for HomeRoom:](http://i.imgur.com/WsT0QWg.png)

### ERD
![ERD for HomeRoom:](http://i.imgur.com/M509Vkz.png)

## Installation Steps
* After cloning the repo, add the following gems to Gemfile
  * ```gem 'bcrypt'
       gem 'uploadcare-rails'
       gem 'bootstrap_form'
       gem 'has_friendship'
    ```
* Then ```bundle install``` on your terminal
* Run ```rails s``` on your terminal to load up the server
* Open up browser and go to ```localhost:3000```

## Technologies Used
* **Ruby on Rails**
* **Postgresql**
* **Bootstrap**
* **HTML/CSS**
* **bCrypt Secure Authorization / Authentication**
* **Javascript & jQuery**
* **Upload-Care**
* **Has_friendship (creates friend requests using self-referential polymorphic association)**

## Future Features
* Create a comments model so that users can comment on a tweet
* Refactoring code to make it DRY
* Allow instructors to edit their tweets
* Implement Angular.js to further modularize webpage
* Add mobile friendly design

## Links to Developer’s Github :octocat:
* [Daniel Oh] (https://github.com/danieloh91)
