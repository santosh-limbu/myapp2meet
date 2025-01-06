import 'package:flutter/material.dart';
import 'screens/onboarding.dart'; // Import the onboarding screen
import 'screens/verification.dart';
import 'screens/quiz_screen.dart'; // Import the quiz screen
import 'screens/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BlindDate',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Using a purple theme
      ),
      home: const QuizScreen(), // Start with the quiz screen
      routes: { 
        '/onboarding': (context) => const OnboardingScreen(), 
        '/id_verification': (context) => const IdVerificationScreen(), 
        '/quiz': (context) => const QuizScreen(), 
        '/signup': (context) => const SignUpScreen(), 
         // Add more routes for other screens here 
      }
    );
  }
}
