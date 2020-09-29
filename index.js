const express = require('express');
const { getAllAuthors, getAuthorById, getAllGenres, getGenreById, getAllNovels, getNovelById } = require('./controllers/great-novels');

const app = express();

app.get('/authors', getAllAuthors);
app.get('/authors/:id', getAuthorById);

app.get('/genres', getAllGenres);
app.get('/genres/:id', getGenreById);

app.get('/novels', getAllNovels);
app.get('/novels/:id', getNovelById);

app.listen((1337), () => {
    console.log('Listening to 1337 ...')
});