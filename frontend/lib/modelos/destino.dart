class Destino {
  final String id;
  final String nome;
  final String descricao;
  final String cidade;
  final String estado;
  final String pais;
  final double latitude;
  final double longitude;
  final String categoria;
  final List<String> imagens;
  final double avaliacaoMedia;
  final int totalAvaliacoes;
  final double? preco;
  final DateTime criadoEm;
  final DateTime? atualizadoEm;

  Destino({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.cidade,
    required this.estado,
    required this.pais,
    required this.latitude,
    required this.longitude,
    required this.categoria,
    required this.imagens,
    this.avaliacaoMedia = 0.0,
    this.totalAvaliacoes = 0,
    this.preco,
    required this.criadoEm,
    this.atualizadoEm,
  });

  factory Destino.fromJson(Map<String, dynamic> json) {
    return Destino(
      id: json['_id'] ?? json['id'] ?? '',
      nome: json['nome'] ?? '',
      descricao: json['descricao'] ?? '',
      cidade: json['cidade'] ?? '',
      estado: json['estado'] ?? '',
      pais: json['pais'] ?? '',
      latitude: (json['latitude'] ?? 0).toDouble(),
      longitude: (json['longitude'] ?? 0).toDouble(),
      categoria: json['categoria'] ?? '',
      imagens: List<String>.from(json['imagens'] ?? []),
      avaliacaoMedia: (json['avaliacaoMedia'] ?? 0).toDouble(),
      totalAvaliacoes: json['totalAvaliacoes'] ?? 0,
      preco: json['preco']?.toDouble(),
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
      'descricao': descricao,
      'cidade': cidade,
      'estado': estado,
      'pais': pais,
      'latitude': latitude,
      'longitude': longitude,
      'categoria': categoria,
      'imagens': imagens,
      'avaliacaoMedia': avaliacaoMedia,
      'totalAvaliacoes': totalAvaliacoes,
      'preco': preco,
      'criadoEm': criadoEm.toIso8601String(),
      'atualizadoEm': atualizadoEm?.toIso8601String(),
    };
  }

  String get localizacaoCompleta {
    return '$cidade, $estado - $pais';
  }

  String get imagemPrincipal {
    return imagens.isNotEmpty ? imagens.first : '';
  }

  bool get temImagens {
    return imagens.isNotEmpty;
  }

  Destino copyWith({
    String? id,
    String? nome,
    String? descricao,
    String? cidade,
    String? estado,
    String? pais,
    double? latitude,
    double? longitude,
    String? categoria,
    List<String>? imagens,
    double? avaliacaoMedia,
    int? totalAvaliacoes,
    double? preco,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) {
    return Destino(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
      pais: pais ?? this.pais,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      categoria: categoria ?? this.categoria,
      imagens: imagens ?? this.imagens,
      avaliacaoMedia: avaliacaoMedia ?? this.avaliacaoMedia,
      totalAvaliacoes: totalAvaliacoes ?? this.totalAvaliacoes,
      preco: preco ?? this.preco,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return 'Destino(id: $id, nome: $nome, localizacao: $localizacaoCompleta)';
  }
}