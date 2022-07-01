const { Router } = require('express');
const { Cheese } = require('../models/Cheese');

module.exports = Router()
  .put('/:id', async (req, res, next) => {
    try {
      const cheese = await Cheese.updateById(req.params.id, req.body);
      res.json(cheese);
    } catch (e) {
      next(e);
    }
  })
  .post('/', async (req, res, next) => {
    try {
      const cheese = await Cheese.insert(req.body);
      res.json(cheese);
    } catch (e) {
      next(e);
    }
  })
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
  })

  .delete('/:id', async (req, res, next) => {
    try {
      const cheese = await Cheese.delete(req.params.id);
      res.json(cheese);
    } catch (e) {
      next(e);
    }
  });
