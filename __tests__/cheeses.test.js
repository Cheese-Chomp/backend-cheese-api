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
    expect(res.body[0]).toEqual(cheese);
  });
});
