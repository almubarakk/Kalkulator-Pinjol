import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // <-- Import package font baru
import 'package:kalkulator_kredit/screens/home_screen.dart';

void main() {
  runApp(const KalkulatorKreditApp());
}

class KalkulatorKreditApp extends StatelessWidget {
  const KalkulatorKreditApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simulasi Kredit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        // Baris di bawah ini akan mengubah SEMUA font di aplikasi menjadi Anek Latin
        textTheme: GoogleFonts.anekLatinTextTheme(Theme.of(context).textTheme),
      ),
      home: const HomeScreen(),
    );
  }
}
