import 'package:bloc_project/constants/app_colors.dart';
import 'package:bloc_project/presentation/widgets/build_bloc_widget.dart';
import 'package:flutter/material.dart';
import 'package:bloc_project/business_logic/cubit/characters_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const String routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<CharactersCubit>(context).getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.myYellow,
        title: const Text('Characters'),
      ),
      body: const BuildBlocWidget(),
    );
  }
}
