import 'package:flutter/material.dart';
import 'package:test_project/data/country.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
    required this.country,
  });

  final Country country;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: Text(country.name.common),
      ),
    );
  }
}
