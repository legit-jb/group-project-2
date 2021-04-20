# Movie Bucket List

## Project 2 Requirements:
- Use Node.js and Express.js to create a RESTful API.
- Use Handlebars.js as the template engine.
- Use MySQL and the Sequelize ORM for the database.
- Have both GET and POST routes for retrieving and adding new data.
- Use at least one new library, package, or technology that we haven't discussed.
- Have a folder structure that meets the MVC paradigm.
- Include authentication (express-session and cookies).
- Protect API keys and sensitive information with environment variables.
- Be deployed using Heroku (with data).
- Have a polished UI.
- Be responsive.
- Be interactive (i.e., accept and respond to user input).
- Meet good-quality coding standards (file structure, naming conventions, follows best practices for class/id naming conventions, indentation, quality comments, etc.).

## Description:
The goal was to build an app that would allow users to keep track of movies. Movies they've watch, that they haven't watched, that friends have recommended, that are their favorites, or that they think are the worst. Users would be able to sign up for an account and create their list, search for movies and save them to their list of choice.

## Under the Hood:
- [Express](https://www.npmjs.com/package/express) was used to set up the web framework for node.

- [Sequelize](https://sequelize.org/) was used to connect node to the mysql database.

- [Ngrok](https://ngrok.com/) was used as a temporary hosting solution while working out fetches from the local database.

- [Node-fetch](https://www.npmjs.com/package/node-fetch) was used as middleware for fetches done from the back end.

- [Handlebars.js]("https://handlebarsjs.com/") was used for templating, making it easy to insert data into pages to load users' personal lists and do neat stuff like greet them by name on the dashboard. Partials were a great tool for filling in lists and making a template for displaying individual movie info. 

## Future Development:
- Add ability to review movies
- Add ability for users to comment on other user's lists.
- Auto seeding of large third party lists like AFI top 100

## Screenshots:
(screenshots go here)
landing page background photo by [Timothy Eberly]("https://unsplash.com/@timothyeberly?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText") on [Unsplash]("https://unsplash.com/s/photos/film-reel?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText")

## Developer Credits:
Sean - mostly worked on models, seeds and api routes.
Dawan - Server, DB, API Route Functionality.