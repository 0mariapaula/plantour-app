# 📋 Requisitos do PlanTour

## Requisitos Funcionais

### 🔐 Autenticação e Usuários
- [ ] RF001: O sistema deve permitir cadastro de novos usuários
- [ ] RF002: O sistema deve permitir login com email e senha
- [ ] RF003: O sistema deve permitir recuperação de senha via email
- [ ] RF004: O usuário deve poder editar seu perfil
- [ ] RF005: O usuário deve poder fazer logout

### 🌍 Gestão de Destinos
- [ ] RF006: O sistema deve exibir lista de destinos disponíveis
- [ ] RF007: O usuário deve poder buscar destinos por nome/localização
- [ ] RF008: O sistema deve exibir detalhes completos de cada destino
- [ ] RF009: O usuário deve poder favoritar destinos
- [ ] RF010: O sistema deve mostrar destinos próximos à localização do usuário

### 📝 Roteiros de Viagem
- [ ] RF011: O usuário deve poder criar novos roteiros
- [ ] RF012: O usuário deve poder adicionar destinos aos roteiros
- [ ] RF013: O usuário deve poder definir datas para os roteiros
- [ ] RF014: O sistema deve calcular duração total do roteiro
- [ ] RF015: O usuário deve poder compartilhar roteiros
- [ ] RF016: O usuário deve poder duplicar roteiros existentes
- [ ] RF017: O usuário deve poder excluir roteiros

### ⭐ Sistema de Avaliações
- [ ] RF018: O usuário deve poder avaliar destinos (1-5 estrelas)
- [ ] RF019: O usuário deve poder escrever comentários sobre destinos
- [ ] RF020: O sistema deve exibir média de avaliações dos destinos
- [ ] RF021: O usuário deve poder visualizar avaliações de outros usuários

### 🔍 Busca e Filtros
- [ ] RF022: O sistema deve permitir busca por texto livre
- [ ] RF023: O sistema deve permitir filtros por categoria (praia, montanha, cidade, etc.)
- [ ] RF024: O sistema deve permitir filtros por faixa de preço
- [ ] RF025: O sistema deve permitir ordenação (nome, avaliação, popularidade)

## Requisitos Não Funcionais

### 📱 Usabilidade
- [ ] RNF001: A interface deve ser intuitiva e responsiva
- [ ] RNF002: O app deve funcionar offline com dados já carregados
- [ ] RNF003: O tempo de carregamento das telas não deve exceder 3 segundos
- [ ] RNF004: O app deve ser compatível com iOS e Android

### 🔒 Segurança
- [ ] RNF005: Senhas devem ser criptografadas (bcrypt)
- [ ] RNF006: Autenticação deve usar tokens JWT
- [ ] RNF007: API deve implementar rate limiting
- [ ] RNF008: Dados sensíveis não devem ser expostos nos logs

### ⚡ Performance
- [ ] RNF009: API deve responder em menos de 500ms para 95% das requisições
- [ ] RNF010: O app deve suportar pelo menos 1000 usuários simultâneos
- [ ] RNF011: Imagens devem ser otimizadas e com cache
- [ ] RNF012: Database deve ter índices apropriados para buscas

### 🛠️ Manutenibilidade
- [ ] RNF013: Código deve seguir padrões de clean code
- [ ] RNF014: Cobertura de testes deve ser pelo menos 80%
- [ ] RNF015: API deve ter documentação automática (Swagger)
- [ ] RNF016: Sistema deve ter logs estruturados

### 🔄 Disponibilidade
- [ ] RNF017: Sistema deve ter uptime de 99.5%
- [ ] RNF018: Backup automático dos dados a cada 24h
- [ ] RNF019: Recuperação em caso de falha deve ser em menos de 5 minutos

## Regras de Negócio

### RN001: Cadastro de Usuários
- Email deve ser único no sistema
- Senha deve ter pelo menos 8 caracteres
- Nome deve ter pelo menos 2 caracteres

### RN002: Roteiros
- Um roteiro deve ter pelo menos 1 destino
- Máximo de 20 destinos por roteiro
- Data de início deve ser posterior à data atual

### RN003: Avaliações
- Usuário só pode avaliar cada destino uma vez
- Comentário deve ter entre 10 e 500 caracteres
- Avaliação deve ser entre 1 e 5 estrelas

### RN004: Destinos
- Nome do destino deve ser único
- Localização (lat/lng) deve ser válida
- Categoria deve ser uma das predefinidas

## Casos de Uso Principais

### 👤 Usuário Novo
1. Abre o app pela primeira vez
2. Visualiza onboarding
3. Cria uma conta ou faz login
4. Explora destinos disponíveis
5. Cria seu primeiro roteiro

### 🗺️ Planejamento de Viagem
1. Usuário acessa "Criar Roteiro"
2. Define nome, datas e descrição
3. Busca e adiciona destinos
4. Organiza ordem dos destinos
5. Salva e compartilha o roteiro

### 🔍 Descoberta de Destinos
1. Usuário acessa aba "Explorar"
2. Usa filtros para refinar busca
3. Visualiza lista de destinos
4. Acessa detalhes de destino específico
5. Adiciona aos favoritos ou roteiro

## Métricas de Sucesso

- **Engajamento**: Usuários ativos mensais > 1000
- **Retenção**: 60% dos usuários voltam em 7 dias
- **Performance**: Tempo médio de resposta < 300ms
- **Qualidade**: Bug rate < 1% das sessões
- **Satisfação**: NPS > 70