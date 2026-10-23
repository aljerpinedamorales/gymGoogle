class EstadoCivil {
  final int idestadocivil;
  final String nombre;
  final String? apellidos;

  EstadoCivil({
    required this.idestadocivil,
    required this.nombre,
    required this.apellidos,
  });

  factory EstadoCivil.fromJson(Map<String, dynamic> json) {
    return EstadoCivil(
      idestadocivil: int.tryParse(json['idestadocivil']?.toString() ?? '') ?? 0,
      nombre: json['nombre']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'idestadocivil': idestadocivil,
      'nombre': nombre,
      'apellios': apellidos,
    };
  }
}
