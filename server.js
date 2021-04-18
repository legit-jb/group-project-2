const path = require('path');
const express = require('express');
const session = require('express-session');
const exphbs = require('express-handlebars');
const SequelizeStore = require('connect-session-sequelize')(session.Store);

const routes = require('./controllers');
const sequelize = require('./config/connection');
const helpers = require('./utils/helpers');

const app = express();
const PORT = process.env.PORT || 3001;

const cors = require("cors")
app.use(cors())

const sess = {
  secret: 'This cannot be told',
  cookie: {},
  resave: false,
  saveUninitialized: true,
  store: new SequelizeStore({
    db: sequelize,
  }),
};

app.use(session(sess));

const hbs = exphbs.create({ helpers });

app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

app.use(routes);

sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => console.log('Now listening'));
}); 

// const fetch = require('node-fetch');

// const url = 'http://817dc17e6c61.ngrok.io/api/lists';

// const body = { list_name: "new list", user_id: 2, movieIds: [1,2] };
 
// fetch(url, {
//         method: 'post',
//         body:    JSON.stringify(body),
//         headers: { 'Content-Type': 'application/json' },
//     })
//     .then(res => res.json())
//     .then(json => console.log(json));