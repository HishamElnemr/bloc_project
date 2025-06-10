import 'package:bloc_project/business_logic/cubit/characters_cubit.dart';
import 'package:bloc_project/constants/app_colors.dart';
import 'package:bloc_project/data/models/characters.dart' as model;
import 'package:bloc_project/presentation/widgets/build_app_bar_actions.dart';
import 'package:bloc_project/presentation/widgets/build_chatacters_list.dart';
import 'package:bloc_project/presentation/widgets/custom_app_bar.dart';
import 'package:bloc_project/presentation/widgets/search_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({
    super.key,
    required this.characters,
    required this.itemCount,
  });
  final List<model.Characters> characters;
  final int itemCount;

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<model.Characters> searchCharacters = [];
  bool isSearchEnabled = false;
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.myGray,
      appBar: customAppBar(
        title:
            isSearchEnabled
                ? SearchTextFiled(
                  controller: searchController,
                  onChanged: (value) {
                    searchForCharacter(value);
                    
                  },
                )
                : const Text('Characters'),
        actions: buildAppBarSearch(context),
      ),
      body: BuildCharactersList(
        itemCount: searchController.text.isNotEmpty
            ? searchCharacters.length
            : widget.itemCount,
        character: searchController.text.isNotEmpty
            ? searchCharacters
            : widget.characters,
      ),
    );
  }

  List<Widget> buildAppBarSearch(BuildContext context) {
    return buildAppBarActions(
      isSearchEnabled: isSearchEnabled,
      closeOnPressed: () {
        searchController.text.isEmpty ? Navigator.pop(context) : clearSearch();
      },
      searchOnPressed: () {
        startSearching();
      },
    );
  }

  void startSearching() {
    ModalRoute.of(
      context,
    )?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopingSearch));
    setState(() {
      isSearchEnabled = true;
    });
  }

  void searchForCharacter(String value) {
    setState(() {
      searchCharacters =
          widget.characters
              .where(
                (character) => character.name.toLowerCase().startsWith(
                  value.toLowerCase(),
                ),
              )
              .toList();
    });
  }

  void stopingSearch() {
    clearSearch();
    setState(() {
      isSearchEnabled = false;
    });
  }

  void clearSearch() {
    searchController.clear();
    searchCharacters = [];
  }
}
