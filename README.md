# _Recipes_

##### This application is a demonstration application designed to show a many-to-many relationship between recipes, instructions, ingredients and tags using Active Record.

## Technologies Used

Application: Ruby, Sinatra, Active Record<br>
Testing: Rspec, Capybara<br>
Database: Postgres

Installation
------------

```
$ git clone https://github.com/NickRossBrown/reruby.git
```
 or
 ```
 $ git clone https://github.com/craigwann/recipes.git
```

Install required gems:
```
$ bundle install
```

Create databases:
```
rake db:create
rake db:schema:load
```

Start the webserver:
```
$ ruby app.rb
```

Navigate to `localhost:4567` in browser.

License
-------

MIT Copyright 2018 **Nick Brown and Craig Wann**

***Small change to README added to bookmark completion of one-to-many relationship between employees and projects***


![database schema](/public/Screen%20Shot%202018-07-18%20at%2011.29.10%20AM.png)
