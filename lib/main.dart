import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hello_meal/Onboarding/onboarding.dart';

import 'firebase_options.dart';

void main() async{
  ///Firebase.initializeApp sets up a connection between your Flutter app and your Firebase project.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello FA',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const OnBoarding(),
    );
  }
}




