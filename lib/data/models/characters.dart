class Characters {
  final int id;
  final String name;
  final String status;
  final String species;
  final String gender;
  final String image;

  Characters({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.gender,
    required this.image,
  });

  factory Characters.fromJson(Map<String, dynamic> json) {
    return Characters(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      status: json['status'] ?? '',
      species: json['species'] ?? '',
      gender: json['gender'] ?? '',
      image: json['image'] ?? '',
    );
  }
}
