class Characters {
  final int characterId;
  final String name;
  final Stream nickname;
  final String image;
  final List<dynamic> jobs;
  final String statusIfDeadOrAlive;
  final List<dynamic> appearanceOfSeasons;
  final String actorName;
  final String categoryForTwoSeries;
  final List<dynamic> betterCallSaulAppearances;
  Characters({
    required this.characterId,
    required this.name,
    required this.nickname,
    required this.image,
    required this.jobs,
    required this.statusIfDeadOrAlive,
    required this.appearanceOfSeasons,
    required this.actorName,
    required this.categoryForTwoSeries,
    required this.betterCallSaulAppearances,
  });
  Characters.fromJson(Map<String, dynamic> json)
    : characterId = json['char_id'],
      name = json['name'],
      nickname = json['nickname'],
      image = json['img'],
      jobs = json['occupation'],
      statusIfDeadOrAlive = json['status'],
      appearanceOfSeasons = json['appearance'],
      actorName = json['portrayed'],
      categoryForTwoSeries = json['category'],
      betterCallSaulAppearances = json['better_call_saul_appearances'];
}
