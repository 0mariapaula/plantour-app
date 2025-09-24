# 🌍 PlanTour

Aplicativo para planejamento de viagens e roteiros turísticos.

## 📋 Sobre o Projeto

PlanTour é uma aplicação completa que permite aos usuários planejar viagens, descobrir destinos e criar roteiros personalizados.

## 🏗️ Arquitetura

- **Backend**: Node.js + Express + MongoDB
- **Frontend**: Flutter (multiplataforma)
- **Banco de Dados**: MongoDB
- **Autenticação**: JWT

## 🚀 Como Executar

### Backend (API)

1. Navegue até a pasta do backend:
```bash
cd backend
```

2. Instale as dependências:
```bash
npm install
```

3. Configure as variáveis de ambiente criando um arquivo `.env`:
```bash
PORT=3000
MONGODB_URI=mongodb://localhost:27017/plantour
JWT_SECRET=seu_jwt_secret_aqui
```

4. Execute o servidor:
```bash
# Desenvolvimento
npm run dev

# Produção
npm start
```

### Frontend (Flutter)

1. Navegue até a pasta do frontend:
```bash
cd frontend
```

2. Instale as dependências:
```bash
flutter pub get
```

3. Execute o aplicativo:
```bash
flutter run
```

## 📁 Estrutura do Projeto

```
plantour/
├── backend/           # API Node.js + Express
│   ├── src/
│   │   ├── modelos/      # Schemas do MongoDB
│   │   ├── controladores/ # Controllers
│   │   ├── rotas/        # Endpoints
│   │   ├── servicos/     # Serviços
│   │   ├── middlewares/  # Middlewares
│   │   ├── utils/        # Utilitários
│   │   └── config/       # Configurações
│   └── tests/         # Testes
│
├── frontend/          # Aplicativo Flutter
│   └── lib/
│       ├── telas/        # Telas
│       ├── componentes/  # Widgets
│       ├── modelos/      # Models
│       ├── servicos/     # API Services
│       ├── estado/       # Estado
│       └── utils/        # Utilitários
│
└── docs/              # Documentação
```

## 🛠️ Tecnologias Utilizadas

### Backend
- Node.js
- Express.js
- MongoDB
- Mongoose
- JWT
- bcryptjs

### Frontend
- Flutter
- Dart
- Provider (Gerenciamento de Estado)
- HTTP (Requisições API)

## 📝 Documentação

Para mais detalhes sobre o projeto, consulte a pasta `docs/`:
- [Arquitetura](docs/arquitetura.md)
- [Requisitos](docs/requisitos.md)
- [Roadmap](docs/roadmap.md)

## 👥 Contribuição

1. Faça um fork do projeto
2. Crie uma branch para sua feature (`git checkout -b feature/AmazingFeature`)
3. Commit suas mudanças (`git commit -m 'Add some AmazingFeature'`)
4. Push para a branch (`git push origin feature/AmazingFeature`)
5. Abra um Pull Request

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.