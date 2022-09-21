import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/data/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed('countryList', extra: listCountries);
          },
          child: const Text('Click'),
        ),
      ),
    );
  }
}
