part of 'characters_cubit.dart';


abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Characters> characters;

  CharactersLoaded({required this.characters});
}

class CharactersFailure extends CharactersState {
  final String errorMessage;

  CharactersFailure({required this.errorMessage});
}
