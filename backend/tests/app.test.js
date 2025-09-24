const request = require('supertest');
const app = require('../app');

describe('API Básica', () => {
  describe('GET /', () => {
    it('deve retornar mensagem de boas-vindas', async () => {
      const response = await request(app)
        .get('/')
        .expect(200);

      expect(response.body).toHaveProperty('message');
      expect(response.body.message).toBe('Bem-vindo à API do PlanTour!');
      expect(response.body).toHaveProperty('status', 'funcionando');
    });
  });

  describe('GET /rota-inexistente', () => {
    it('deve retornar erro 404 para rota não encontrada', async () => {
      const response = await request(app)
        .get('/rota-inexistente')
        .expect(404);

      expect(response.body).toHaveProperty('message', 'Rota não encontrada');
    });
  });
});