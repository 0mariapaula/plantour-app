const express = require('express');
const cors = require('cors');
const mongoose = require('mongoose');
require('dotenv').config();

const app = express();

// Middlewares
app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Rotas básicas
app.get('/', (req, res) => {
  res.json({
    message: 'Bem-vindo à API do PlanTour!',
    version: '1.0.0',
    status: 'funcionando'
  });
});

// Aqui serão importadas as rotas quando forem criadas
// app.use('/api/users', require('./src/rotas/usuarios'));
// app.use('/api/destinos', require('./src/rotas/destinos'));
// app.use('/api/roteiros', require('./src/rotas/roteiros'));

// Middleware de erro
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).json({ message: 'Algo deu errado!' });
});

// Rota para lidar com rotas não encontradas
app.use('*', (req, res) => {
  res.status(404).json({ message: 'Rota não encontrada' });
});

module.exports = app;