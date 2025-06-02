import 'package:bloc_project/app_router.dart';
import 'package:bloc_project/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BlocProject(appRouter: AppRouter(),));
}

class BlocProject extends StatelessWidget {
  const BlocProject({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',  
      onGenerateRoute: appRouter.onGenerateRoute,  
      initialRoute: HomeView.routeName,
    );
  }
}