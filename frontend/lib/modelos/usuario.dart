class Usuario {
  final String id;
  final String nome;
  final String email;
  final String? avatar;
  final DateTime criadoEm;
  final DateTime? atualizadoEm;

  Usuario({
    required this.id,
    required this.nome,
    required this.email,
    this.avatar,
    required this.criadoEm,
    this.atualizadoEm,
  });

  factory Usuario.fromJson(Map<String, dynamic> json) {
    return Usuario(
      id: json['_id'] ?? json['id'] ?? '',
      nome: json['nome'] ?? '',
      email: json['email'] ?? '',
      avatar: json['avatar'],
      criadoEm: DateTime.parse(json['criadoEm'] ?? json['createdAt'] ?? DateTime.now().toIso8601String()),
      atualizadoEm: json['atualizadoEm'] != null || json['updatedAt'] != null
          ? DateTime.parse(json['atualizadoEm'] ?? json['updatedAt'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'avatar': avatar,
      'criadoEm': criadoEm.toIso8601String(),
      'atualizadoEm': atualizadoEm?.toIso8601String(),
    };
  }

  Usuario copyWith({
    String? id,
    String? nome,
    String? email,
    String? avatar,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) {
    return Usuario(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      email: email ?? this.email,
      avatar: avatar ?? this.avatar,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return 'Usuario(id: $id, nome: $nome, email: $email)';
  }
}