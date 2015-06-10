#Teacherbook

##Overview
A webapp that allows teachers to login and view the parents of their students.

###Objectives
This app allows teachers to log-in to an account, and view parents of their students. The table of the parents will have their names, email addresses and their children's name. The teacher's are only able to see parents associated with their class. Once the teacher logs in using password verification, they can see the parents info and edit or add a new parent. The teacher also has the option to change their email or password once they are logged in.

Also, while logged into to their account, the user will have their named displayed at the top of each page. They also have a link to logout in whichever view they navigate to.

Here is an [ERD](https://www.lucidchart.com/invitations/accept/279f5fb1-fbb2-4978-816c-11edd6baac28) showing the table relations.

###To View via Heroku

[Heroku](http://ancient-garden-8370.herokuapp.com/)

###To Run via terminal
* Clone repository to your computer from [here](https://github.com/aaronwiggins/teacherbook.git)
* Once in the projects root directory, in the terminal type:
    * `bundle install --without production`
    * `bin/rake db:migrate`
    * `bin/rake db:seed`
        * can run `bin/rake db:setup` in-place of the previous 2
    * `bin/rails server`
* Open your browser and navigate to `localhost:3000`

###For More Info on Some Tools...
I used Bourbon and Neat for my scss on this assignment. If you're interested here are the links:
* [Bourbon](http://bourbon.io/)
* [Neat](http://neat.bourbon.io/)
