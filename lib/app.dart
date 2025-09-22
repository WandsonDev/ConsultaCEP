import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:consulta_cep/screen/loading.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consulta CEP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF3F51B5),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF3F51B5),
          foregroundColor: Colors.white, // textos e ícones brancos
        ),
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme.apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3F51B5),
          primary: const Color(0xFF3F51B5),
          secondary: const Color(0xFFFFCA28),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoadingPage(),
        //'/loading': (context) => const LoadingPage(),
      },
    );
  }
}
