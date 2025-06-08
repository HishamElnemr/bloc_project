import 'package:bloc/bloc.dart';
import 'package:bloc_project/data/models/characters.dart';
import 'package:bloc_project/data/repos/characters_repo.dart';
part 'characters_state.dart';

class CharactersCubit extends Cubit<CharactersState> {
  CharactersCubit(this.charactersRepo) : super(CharactersInitial());
  final CharactersRepo charactersRepo;
  Future<List<Characters>> getAllCharacters() async {
    emit(CharactersLoading());
    try {
      final characters = await charactersRepo.getAllCharacters();
      if (characters.isNotEmpty) {
        emit(CharactersLoaded(characters: characters));
        return characters;
      } else {
        emit(CharactersFailure(errorMessage: 'No characters found'));
        return [];
      }
    } catch (e) {
      emit(CharactersFailure(errorMessage: e.toString()));
      return [];
    }
  }
}
