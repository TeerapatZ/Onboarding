import 'package:flutter/material.dart';
import 'package:modern_onborading_2024/screen/introduction_screen.dart';

// import 'package:introduction_screen/introduction_screen.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// flutter pub add introduction_screen
// $ flutter pub add shared_preferences

// dependencies:
// introduction_screen: ^3.1.11
// shared_preferences: ^2.2.1

// flutter pub get

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bonjour Hola Ciao\nHello all, Welcome to My Apps\nTeerapat Chuenklin',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20), // To provide spacing between text and button
            ElevatedButton(
              onPressed: () {
                // Navigate to the Introduction Screen
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  IntroScreen()),
                );
              },
              child: const Text('Go to Introduction'),
            ),
          ],
        ),
      ),
    );
  }
}

