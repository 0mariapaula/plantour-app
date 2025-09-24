import 'destino.dart';

class Roteiro {
  final String id;
  final String nome;
  final String descricao;
  final String usuarioId;
  final List<Destino> destinos;
  final DateTime? dataInicio;
  final DateTime? dataFim;
  final bool isPublico;
  final DateTime criadoEm;
  final DateTime? atualizadoEm;

  Roteiro({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.usuarioId,
    required this.destinos,
    this.dataInicio,
    this.dataFim,
    this.isPublico = false,
    required this.criadoEm,
    this.atualizadoEm,
  });

  factory Roteiro.fromJson(Map<String, dynamic> json) {
    return Roteiro(
      id: json['_id'] ?? json['id'] ?? '',
      nome: json['nome'] ?? '',
      descricao: json['descricao'] ?? '',
      usuarioId: json['usuarioId'] ?? json['usuario'] ?? '',
      destinos: (json['destinos'] as List<dynamic>? ?? [])
          .map((destino) => Destino.fromJson(destino))
          .toList(),
      dataInicio: json['dataInicio'] != null
          ? DateTime.parse(json['dataInicio'])
          : null,
      dataFim: json['dataFim'] != null
          ? DateTime.parse(json['dataFim'])
          : null,
      isPublico: json['isPublico'] ?? false,
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
      'usuarioId': usuarioId,
      'destinos': destinos.map((destino) => destino.toJson()).toList(),
      'dataInicio': dataInicio?.toIso8601String(),
      'dataFim': dataFim?.toIso8601String(),
      'isPublico': isPublico,
      'criadoEm': criadoEm.toIso8601String(),
      'atualizadoEm': atualizadoEm?.toIso8601String(),
    };
  }

  int get totalDestinos {
    return destinos.length;
  }

  Duration? get duracao {
    if (dataInicio != null && dataFim != null) {
      return dataFim!.difference(dataInicio!);
    }
    return null;
  }

  int? get totalDias {
    final dur = duracao;
    return dur != null ? dur.inDays + 1 : null;
  }

  bool get temDatas {
    return dataInicio != null && dataFim != null;
  }

  String get periodoFormatado {
    if (!temDatas) return 'Datas não definidas';
    
    final inicio = dataInicio!;
    final fim = dataFim!;
    
    return '${inicio.day}/${inicio.month}/${inicio.year} - ${fim.day}/${fim.month}/${fim.year}';
  }

  Roteiro copyWith({
    String? id,
    String? nome,
    String? descricao,
    String? usuarioId,
    List<Destino>? destinos,
    DateTime? dataInicio,
    DateTime? dataFim,
    bool? isPublico,
    DateTime? criadoEm,
    DateTime? atualizadoEm,
  }) {
    return Roteiro(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      usuarioId: usuarioId ?? this.usuarioId,
      destinos: destinos ?? this.destinos,
      dataInicio: dataInicio ?? this.dataInicio,
      dataFim: dataFim ?? this.dataFim,
      isPublico: isPublico ?? this.isPublico,
      criadoEm: criadoEm ?? this.criadoEm,
      atualizadoEm: atualizadoEm ?? this.atualizadoEm,
    );
  }

  @override
  String toString() {
    return 'Roteiro(id: $id, nome: $nome, destinos: ${destinos.length})';
  }
}