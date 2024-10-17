import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({Key? key}) : super(key: key);

  final List<PageViewModel> pages = [];

  @override
  Widget build(BuildContext context) {
    pages.addAll([
      PageViewModel(
        title: 'Bonjour Everyone',
        body: 'Bonjour (hello) Au revoir (goodbye) Oui (yes) Non (no) Merci (thank you) Fille (girl) Garçon (boy) Femme (woman)',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
            ),
            onPressed: () => onDone(context), 
            child: const Text("Allons-y"),
          ),
        ),
        image: Center(
          child: Image.asset('assets/images/111.png'),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      PageViewModel(
        title: 'Hola Everyone',
        body: 'Hola (Hello) Adios (Goodbye) Gracias (Thank you) Por favor (Please) Si (Yes) Claro (Of course) No (No) Amor (Love) Todo (All)',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
            ),
            onPressed: () => onDone(context),  
            child: const Text("Vamos"),
          ),
        ),
        image: Center(
          child: Image.asset('assets/images/222.png'),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      PageViewModel(
        title: 'Ciao Everyone',
        body: 'Ciao (Hi) Arrivederci (Goodbye) Grazie (Thank you) Per favore (Please) Sí (Yes) Certo (Sure) No (No) Amore (Love) Tutto (Everything)',
        footer: SizedBox(
          height: 45,
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 8,
            ),
            onPressed: () => onDone(context),  
            child: const Text("Andiamo"),
          ),
        ),
        image: Center(
          child: Image.asset('assets/images/333.png'),
        ),
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ]);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome everyone'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 80, 12, 12),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(15, 15),
            color: Colors.blue,
            activeSize: Size.square(20),
            activeColor: Colors.red,
          ),
          showDoneButton: true,
          done: const Text(
            'Done',
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
          showSkipButton: true,
          skip: const Text(
            'Skip',
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          showNextButton: true,
          next: const Icon(
            Icons.arrow_forward,
            size: 25,
            color: Colors.blue,
          ),
          onDone: () => onDone(context),
          curve: Curves.bounceOut,
        ),
      ),
    );
  }

  void onDone(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
