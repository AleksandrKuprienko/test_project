import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    required this.exception,
  });
  final Exception exception;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(exception.toString()),
      ),
    );
  }
}
