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

  it('/api/v1/cheeses/:id should return cheese details', async () => {
    const res = await request(app).get('/api/v1/cheeses/1');
    expect(res.status).toEqual(200);
    expect(res.body).toEqual({
      id: expect.any(String),
      name: 'American',
      description: 'American is a creamy, smooth cheese made from blending natural cheeses. It comes in several forms including individually wrapped cheese slices, small pre-sliced blocks and large blocks. It melts well.',
      url: 'https://www.organicauthority.com/.image/t_share/MTU5MzI5OTc3NjUzMzM5MzUw/shutterstock_288297071.jpg',
      pairs: 'pairs with chicken broth',
      smells: false
    });
  });

  it('POST /api/v1/cheeses should add a new cheese to the table', async () => {
    const res = await request(app).post('/api/v1/cheeses').send({
      name: 'String cheese',
      description: 'Fun, delicious snack',
      url: 'http://static1.squarespace.com/static/5424b7b6e4b0bec306d9c41f/5424d2dbe4b0fab9148fa16f/5646caaae4b0e0e27be5cc8b/1585002570101/cesars+string.jpg?format=1500w',
      pairs: 'pairs with grape broth',
      smells: false
    });

    expect(res.status).toEqual(200);

    const res2 = await request(app).get(`/api/v1/cheeses/${res.body.id}`);
    expect(res2.status).toEqual(200);
    expect(res2.body.id).toEqual(expect.any(String));
    expect(res2.body.name).toEqual('String cheese');

  });
});
