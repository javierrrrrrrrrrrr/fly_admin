import 'package:flutter/material.dart';

import 'UI/Pages/estadistic_page.dart';
import 'UI/Pages/login_page.dart';
import 'UI/Pages/search_page.dart';
import 'UI/Pages/search_result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(fontFamily: 'LexendDeca'),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginPage(),
        '/estadistica': (context) => const StaticPage(),
        '/search': (context) => const SearchPage(),
        '/result': (context) => const SearchResult(),
      },
    );
  }
}
