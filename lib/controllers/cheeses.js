const { Router } = require('express');
const { Cheese } = require('../models/Cheese');

module.exports = Router()
  .get('/:id', async (req, res, next) => {
    try {
      const id = req.params.id;
      const cheeseId = await Cheese.getById(id);
      res.json(cheeseId); 
    } catch (e) {
      next(e);  
    }
  })
  .get('/', async (req, res, next) => {
    try {
      const cheeses = await Cheese.getAll();
      res.json(cheeses);
    } catch (e) {
      next(e);
    }
  });
