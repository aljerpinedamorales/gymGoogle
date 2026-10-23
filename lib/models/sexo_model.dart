class Sexo {
  final int idsexo;
  final String nombre;
  final String? apellidos;
  final String? cedula;

  Sexo({
    required this.idsexo,
    required this.nombre,
    required this.apellidos,
    required this.cedula,
  });

  factory Sexo.fromJson(Map<String, dynamic> json) {
    return Sexo(
      idsexo: int.tryParse(json['idsexo']?.toString() ?? '') ?? 0,
      nombre: json['nombre']?.toString() ?? '',
      apellidos: json['apellidos']?.toString(),
      cedula: json['cedula']?.toString(),
    );
  }

    
  });

  factory Sexo.fromJson(Map<String, dynamic> json) {
    return Sexo(
      idsexo: int.tryParse(json['idsexo']?.toString() ?? '') ?? 0,
      nombre: json['nombre']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idsexo': idsexo,
      'nombre': nombre,
      'apellios': apellidos,

     
    };
  }
}
