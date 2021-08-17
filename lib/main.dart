import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:provider/provider.dart';
import 'package:note_app/noteoperation.dart';
import 'package:note_app/home_screen.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Noteoperation>(
      create: (Context) => Noteoperation(),
      child: MaterialApp(
        home: HomeScreen(),

      ),
    );
  }
}