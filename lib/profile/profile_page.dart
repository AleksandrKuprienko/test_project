import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_project/datasource/local/local_datasource.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.someRandomWord,
    required this.localDatasource,
  });

  final String someRandomWord;
  final LocalDatasource localDatasource;

  @override
  Widget build(BuildContext context) {
    // final LocalDatasource localDatasource = Modular.get();
    return Scaffold(
        appBar: AppBar(
          title: Text(
            someRandomWord,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                child: const Text('Insert'),
                onPressed: () {
                  localDatasource.insert().then((value) => log('complete'));
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const Text('Select'),
                onPressed: () async {
                  final result = await localDatasource.select();
                  print(result.map((e) => print(e.description)));
                },
              )
            ],
          ),
        ));
  }
}
