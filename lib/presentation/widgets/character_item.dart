import 'package:bloc_project/constants/app_colors.dart';
import 'package:flutter/material.dart';
import '../../data/models/characters.dart' as model;

class CharacterItem extends StatelessWidget {
  final model.Characters character;

  const CharacterItem({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
        color: AppColors.myWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      // child: InkWell(
      //   onTap:
      //       () => Navigator.pushNamed(
      //         context,
      //         characterDetailsScreen,
      //         arguments: character,
      //       ),
      child: GridTile(
        footer: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          color: Colors.black54,
          alignment: Alignment.bottomCenter,
          child: Text(
            character.name,
            style: TextStyle(
              height: 1.3,
              fontSize: 16,
              color: AppColors.myWhite,
              fontWeight: FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ),
        child: Hero(
          tag: character.charId ?? 'character-${character.name}',
          child: Container(
            color: AppColors.myGray,
            child:
                character.image.isNotEmpty
                    ? FadeInImage.assetNetwork(
                      width: double.infinity,
                      height: double.infinity,
                      placeholder: 'assets/images/loading.gif',
                      image: character.image,
                      fit: BoxFit.cover,
                    )
                    : Image.asset('assets/images/placeholder.jpg'),
          ),
        ),
      ),
    );
  }
}
