import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/changeColorContainer/changeColorClass.dart';
import 'package:providers/Screen/changeColorContainer/changeColorContainer.dart';
import 'package:providers/Screen/changeColorContainer/showScreen.dart';
import 'package:providers/Screen/home_test.dart';
import 'package:providers/Screen/incrementClass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => IncrementClass(),
        ),
        ChangeNotifierProvider(create: (context) => BoxColor()),
        ChangeNotifierProvider(create: (context) => ListName()),
        ChangeNotifierProvider(create: (context) => ChangeClass()),
        ChangeNotifierProvider(create: (context) => DataYou())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'ShowScreen',
        routes: {
          'home_screen': (context) => const HomeTest(),
          'ShowScreen': (context) => const ShowScreen(),
          'Changecolorcontainer': (context) => const Changecolorcontainer(),
        },
      ),
    );
  }
}
