const models = require('../models');

const getAllAuthors = async (request, response) => {
    const authors = await models.authors.findAll()
  
    return response.send(authors)
}

const getAuthorById = async (request, response) => {
    const { id } = request.params

    const author = await models.authors.findOne({
        where: { id },
        include: [{
        model: models.novels,
        include: [{ model: models.genres }]
        }]
    })

    return author
    ? response.send(author)
    : response.sendStatus(404)
}

const getAllGenres = async (request, response) => {
    const genres = await models.genres.findAll() 
    return response.send(genres); 
}

const getGenreById = async (request, response) => {
    const { id } = request.params
  
    const genre = await models.genres.findOne({
      where: { id },
      include: [{
        model: models.novels,
        include: [{ model: models.authors }]
      }]
    })
    return genre
    ? response.send(genre)
    : response.sendStatus(404)
}

const getAllNovels = async (request, response) => {
    const novels = await models.novels.findAll({
      include: [{ model: models.authors }, { model: models.genres }]
    })
  
    return response.send(novels)
}

const getNovelById = async (request, response) => {
    const { id } = request.params
  
    const novel = await models.novels.findOne({
      where: { id },
      include: [{ model: models.authors }, { model: models.genres }]
    })
  
    return novel
      ? response.send(novel)
      : response.sendStatus(404)
}

module.exports = {
    getAllAuthors, 
    getAuthorById, 
    getAllGenres, 
    getGenreById, 
    getAllNovels, 
    getNovelById}