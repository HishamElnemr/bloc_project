import 'package:bloc_project/presentation/widgets/character_item.dart';
import 'package:flutter/material.dart';
import 'package:bloc_project/data/models/characters.dart' as model;

class BuildCharactersList extends StatelessWidget {
  const BuildCharactersList({super.key, required this.itemCount, required this.character});
  final int itemCount;
  final List <model.Characters> character;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
      ),
      shrinkWrap: true,  
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: itemCount,
      itemBuilder: (ctx, index) {
        return CharacterItem(character: character[index]);
      },
    );
  }
}
