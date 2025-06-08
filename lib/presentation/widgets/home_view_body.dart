import 'package:bloc_project/data/models/characters.dart' as model;
import 'package:bloc_project/presentation/widgets/build_chatacters_list.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.characters,
    required this.itemCount,
  });
  final List<model.Characters> characters;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(child: Column(children: [BuildCharactersList(itemCount: itemCount)]));
  }
}
