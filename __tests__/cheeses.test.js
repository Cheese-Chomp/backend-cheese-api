const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('cheese routes', () => {
  beforeEach(() => {
    return setup(pool);
  });

  afterAll(() => {
    pool.end();
  });

  it('/api/v1/cheeses should return a list of cheeses', async () => {
    const res = await request(app).get('/api/v1/cheeses');
    const cheese = {
      id: expect.any(String),
      name: 'American',
      smells: false,
    };
    expect(res.status).toBe(200);
    expect(res.body.length).toEqual(15);
    expect(res.body[0]).toEqual(cheese);
  });

  // it('/api/v1/cheeses/:id', async () => {
  //   const res = await request(app).get('/api/v1/cheese/1');
  //   expect(res.status).toEqual(200);
  //   expect(res.body).toEqual({
  //     id: expect.any(String),
  //     name: 'American',
  //     description: 'American is a creamy, smooth cheese made from blending natural cheeses. It comes in several forms including individually wrapped cheese slices, small pre-sliced blocks and large blocks. It melts well.',
  //     url: 'https://www.organicauthority.com/.image/t_share/MTU5MzI5OTc3NjUzMzM5MzUw/shutterstock_288297071.jpg',
  //     pairs: 'pairs with chicken broth',
  //     smells: false
  //   });
  // });
});
