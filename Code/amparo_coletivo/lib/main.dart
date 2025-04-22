import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:amparo_coletivo/pages/main_navigation.dart';
import 'config/theme_config.dart';
import 'config/theme_notifier.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remova o banner de depuração
      title: 'Amparo Coletivo', // Defina o título da aplicação
      home: const MainNavigation(), // Defina a tela inicial
      theme: AppTheme.themeData, // Defina o tema claro
      darkTheme: ThemeData.dark(), // Defina o tema escuro
      themeMode: themeNotifier.themeMode,
      supportedLocales: const [
        Locale('pt', 'BR'), // Idioma padrão
        Locale('en', 'US'), // Outro idioma
      ],
    );
  }
}
