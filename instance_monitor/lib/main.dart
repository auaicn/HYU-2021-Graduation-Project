import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instance_monitor/constants.dart';
import 'package:instance_monitor/providers/service_provider.dart';
import 'package:provider/provider.dart';

import 'screens/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ServiceProvider()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'instance dash-board',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        canvasColor: secondaryColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
          bodyColor: Colors.white,
        ),
      ),
      home: MainScreen(),
    );
  }
}