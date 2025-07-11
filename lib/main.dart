import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/Api/Screen/homeApi.dart';
import 'package:providers/Screen/Cart/cartClass.dart';
import 'package:providers/Screen/Cart/cartScreen.dart';
import 'package:providers/Screen/Cart/favoritesClass.dart';
import 'package:providers/Screen/Cart/favoritesScreen.dart';
import 'package:providers/Screen/Cart/productsClass.dart';
import 'package:providers/Screen/Cart/productsScreen.dart';
import 'package:providers/Screen/StudentScreen/ShowStudent.dart';
import 'package:providers/Screen/StudentScreen/languageClass.dart';
import 'package:providers/Screen/changeColorContainer/changeColorClass.dart';
import 'package:providers/Screen/changeColorContainer/changeColorContainer.dart';
import 'package:providers/Screen/changeColorContainer/showScreen.dart';
import 'package:providers/Screen/home_test.dart';
import 'package:providers/Screen/incrementClass.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => IncrementClass()),
        ChangeNotifierProvider(create: (context) => BoxColor()),
        ChangeNotifierProvider(create: (context) => ListName()),
        ChangeNotifierProvider(create: (context) => ChangeClass()),
        ChangeNotifierProvider(create: (context) => DataYou()),
        ChangeNotifierProvider(create: (context) => productsClass()),
        ChangeNotifierProvider(create: (context) => CartClass()),
        ChangeNotifierProvider(create: (context) => LanguageClass()),
        ChangeNotifierProvider(create: (context) => favoritesClass()),
      ],
      child: AppWidget(),
    );
  }
}

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Language = Provider.of<LanguageClass>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale(Language.currentLang),
      supportedLocales: const [
        Locale('ar'),
        Locale('en'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      initialRoute: 'Homeapi',
      routes: {
        'home_screen': (context) => const HomeTest(),
        'ShowScreen': (context) => const ShowScreen(),
        'Changecolorcontainer': (context) => const Changecolorcontainer(),
        'ShowStudent': (context) => const ShowStudent(),
        'Productsscreen': (context) => const Productsscreen(),
        'Cartscreen': (context) => const Cartscreen(),
        'favoritesScreen': (context) => const favoritesScreen(),
        'Homeapi': (context) => const Homeapi(),
      },
    );
  }
}
