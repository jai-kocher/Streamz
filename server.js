const express = require('express');
const app = express();
const port = 3000;
const actorRoutes = require('./src/routes/actorRoutes.js');
const genreRoutes = require('./src/routes/genreRoutes.js');
const movieRoutes = require('./src/routes/movieRoutes.js');
const memberRoutes = require('./src/routes/memberRoutes.js');

app.use(express.json());

app.get('/', (req, res) => {
    res.send('Hello!');
})

app.use('/actor', actorRoutes);
app.use('/genre', genreRoutes);
app.use('/movie', movieRoutes);
app.use('/member', memberRoutes);

app.listen(port, () => console.log(`App Listening on Port ${port}`));