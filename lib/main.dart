import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kata_jane/Screens/HomeScreen/home_screen.dart';
import 'package:kata_jane/Screens/SplashScreen/splash_screen.dart';
import 'package:kata_jane/main_scaffold.dart';

import 'Provider/event_provider.dart'; // Import your provider

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const KataJane());
}

class KataJane extends StatelessWidget {
  const KataJane({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EventProvider(), // Provide the EventProvider
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(), // Set the initial screen
      ),
    );
  }
}
