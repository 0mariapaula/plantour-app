const app = require('./app');
const mongoose = require('mongoose');
require('dotenv').config();

// Conexão com o MongoDB
const conectarBanco = async () => {
  try {
    await mongoose.connect(process.env.MONGODB_URI || 'mongodb://localhost:27017/plantour');
    console.log('✅ MongoDB conectado com sucesso!');
  } catch (error) {
    console.error('❌ Erro ao conectar com o MongoDB:', error);
    process.exit(1);
  }
};

// Inicia o servidor
const PORT = process.env.PORT || 3000;

const iniciarServidor = async () => {
  await conectarBanco();
  
  app.listen(PORT, () => {
    console.log(`🚀 Servidor PlanTour rodando na porta ${PORT}`);
    console.log(`📱 Acesse: http://localhost:${PORT}`);
  });
};

iniciarServidor();