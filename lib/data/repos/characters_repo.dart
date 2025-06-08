import 'package:bloc_project/data/models/characters.dart' show Characters;
import 'package:bloc_project/data/services/characters_services.dart';

class CharactersRepo {
  final CharactersServices charactersServices;
  CharactersRepo({required this.charactersServices});

  Future<List<Characters>> getAllCharacters() async {
    try {
      final characters = await charactersServices.getAllCharacters();
      List<Characters> charactersList = [];
      for (var character in characters) {
        charactersList.add(Characters.fromJson(character));
      }
      return charactersList;
    } catch (e) {
      print('Error in CharactersRepo: $e');
      return [];
    }
  }
}
