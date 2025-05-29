import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/StudentScreen/ShowStudent.dart';
import 'package:providers/Screen/StudentScreen/languageClass.dart';
import 'package:providers/Screen/changeColorContainer/changeColorClass.dart';
import 'package:providers/Screen/changeColorContainer/changeColorContainer.dart';
import 'package:providers/Screen/changeColorContainer/showScreen.dart';
import 'package:providers/Screen/home_test.dart';
import 'package:providers/Screen/incrementClass.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:providers/SharedPreferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); 
  await ShApp().init(); 
  runApp(const MyApp());
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
        ChangeNotifierProvider(create: (context) {
          final lang = LanguageClass();
          lang.loadLanguage();
          return lang;
        }),
      ],
      child: Consumer<LanguageClass>(
        builder: (context, langProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale(langProvider.currentLang),
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
            initialRoute: 'ShowStudent',
            routes: {
              'home_screen': (context) => const HomeTest(),
              'ShowScreen': (context) => const ShowScreen(),
              'Changecolorcontainer': (context) => const Changecolorcontainer(),
              'ShowStudent': (context) => const ShowStudent(),
            },
          );
        },
      ),
    );
  }
}
