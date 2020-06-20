# ROR Login SignUp

This is a simple Login and Sign Up page in Ruby on Rails, MySQL Database and Bcrypt.

Ruby version : 5.1.7

## Building from source
You'll need the following installed:

Rails which can be downloaded from: http://railsinstaller.org/en

#### Steps
1. Create a new project in your desired location by using
```bash
 rails new phoenix -d mysql 
```

2. Delete the contents of phoenix folder and replace them with all the downloaded folders.

3. Go to 'phoenix\config\database.yml' and change the username and password to your database's username and password.
(Note: The current user must be granted privileges to make changes in the database)

4. Install it in rails
```bash
bundle 
```
5. Create a Scaffold user and database variables
```bash
rails g scaffold User name:string password:digest 
rails db:create 
rails db:migrate 
```
6.To run it on the server 
```bash
rails s 
```
7. Visit http://localhost:3000/ to see the magic of website! (Ruby on Rails work on the port number 3000 by default) 

##### Pro Tip
You can use ngrok to demonstrate your websites without deploying them, find out more here :
http://ngrok.io/
