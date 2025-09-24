const mongoose = require('mongoose');

const conectarBanco = async () => {
  try {
    const mongoUri = process.env.MONGODB_URI || 'mongodb://localhost:27017/plantour';
    
    await mongoose.connect(mongoUri, {
      useNewUrlParser: true,
      useUnifiedTopology: true,
    });
    
    console.log('✅ Conectado ao MongoDB com sucesso!');
    
    // Log da URI do banco (sem credenciais)
    const uriSemCredenciais = mongoUri.replace(/\/\/.*@/, '//***:***@');
    console.log(`📍 Banco: ${uriSemCredenciais}`);
    
  } catch (error) {
    console.error('❌ Erro ao conectar com o MongoDB:', error);
    process.exit(1);
  }
};

const desconectarBanco = async () => {
  try {
    await mongoose.connection.close();
    console.log('✅ Desconectado do MongoDB');
  } catch (error) {
    console.error('❌ Erro ao desconectar do MongoDB:', error);
  }
};

// Listeners para conexão
mongoose.connection.on('connected', () => {
  console.log('🔗 Mongoose conectado ao MongoDB');
});

mongoose.connection.on('error', (err) => {
  console.error('❌ Erro na conexão MongoDB:', err);
});

mongoose.connection.on('disconnected', () => {
  console.log('💤 Mongoose desconectado do MongoDB');
});

// Graceful shutdown
process.on('SIGINT', async () => {
  await desconectarBanco();
  process.exit(0);
});

module.exports = {
  conectarBanco,
  desconectarBanco,
};