class ApiConfig {
  static const String baseUrl = 'http://localhost:3000';
  
  // Endpoints da API
  static const String loginEndpoint = '/api/auth/login';
  static const String registerEndpoint = '/api/auth/register';
  static const String usersEndpoint = '/api/users';
  static const String destinosEndpoint = '/api/destinos';
  static const String roteirosEndpoint = '/api/roteiros';
  static const String avaliacoesEndpoint = '/api/avaliacoes';
  
  // URLs completas
  static String get loginUrl => baseUrl + loginEndpoint;
  static String get registerUrl => baseUrl + registerEndpoint;
  static String get usersUrl => baseUrl + usersEndpoint;
  static String get destinosUrl => baseUrl + destinosEndpoint;
  static String get roteirosUrl => baseUrl + roteirosEndpoint;
  static String get avaliacoesUrl => baseUrl + avaliacoesEndpoint;
  
  // Headers padrão
  static Map<String, String> get headers => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
  
  // Headers com token de autenticação
  static Map<String, String> headersWithAuth(String token) => {
    ...headers,
    'Authorization': 'Bearer $token',
  };
}