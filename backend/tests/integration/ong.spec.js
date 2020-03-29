const request = require('supertest');
const app = require('../../src/app');
const connection = require('../../src/database/connection');

describe('ONG', () => {
    beforeEach(async() => {
        await connection.migrate.rollback();
        await connection.migrate.latest();
    });

    afterAll(async() => {
        await connection.destroy();
    });

    it('Should be able ro create a new ONG', async () => {
        const response = await request(app)
            .post('/ongs')
            // .set('Authorization', 'id') // for profile
            .send({
                name: "ONG_TEST",
                email: "test@test.com",
                whatsapp: "11954887873",
                city: "São Paulo",
                uf: "SP"
            })
        expect(response.body).toHaveProperty('id');
        expect(response.body.id).toHaveLength(8);
    });
})