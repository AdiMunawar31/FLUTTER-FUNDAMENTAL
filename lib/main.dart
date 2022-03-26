import 'package:flutter/material.dart';
import 'package:flutter_fundamental/drawer.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Fundamental',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('id', 'ID'), Locale('en', 'En')],
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(title: Text(AppLocalizations.of(context)!.titleApp)),
        drawer: DrawerWidget(),
        body: Center(
            child: Text(AppLocalizations.of(context)!.helloWorld,
                style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
