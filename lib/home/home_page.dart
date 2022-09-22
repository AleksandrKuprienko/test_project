import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
          child: ElevatedButton(
        onPressed: () => Modular.to.pushNamed(
          '/profile',
          arguments: {'someRandomWord': 'helloHowAreYou'},
        ),
        child: const Text('Go to Profile'),
      )),
    );
  }
}
