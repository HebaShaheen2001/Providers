import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providers/Screen/StudentScreen/languageClass.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShowStudent extends StatelessWidget {
  const ShowStudent({super.key});

  @override
  Widget build(BuildContext context) {
    final Language = Provider.of<LanguageClass>(context);
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            title: Text("${AppLocalizations.of(context)!.name}"),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${AppLocalizations.of(context)!.phone}"),
                Text("${AppLocalizations.of(context)!.average}"),
                Text("${AppLocalizations.of(context)!.grade}"),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Language.toggleLanguage();
              },
              child: Text(AppLocalizations.of(context)!.changeLanguage)),
        ],
      ),
    );
  }
}
