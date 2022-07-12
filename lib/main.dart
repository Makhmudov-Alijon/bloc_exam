
import 'package:bloc_exam/bloc/game_data_bloc.dart';
import 'package:bloc_exam/repo/games_repo.dart';

import 'package:bloc_exam/screens/landing_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {

  Dio dio=Dio();
  runApp(
    BlocProvider<GameDataBloc>(
      create: (context) => GameDataBloc(GamesRepo()),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // final _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomePage(),
      builder: (context, child) => ResponsiveWrapper.builder(child,
          maxWidth: 2000,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(400, name: MOBILE),
            ResponsiveBreakpoint.autoScale(1000, name: TABLET),
            ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
    );
  }
}
