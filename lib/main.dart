import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_project/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Modular.setNavigatorKey(GlobalKey());
  Modular.setInitialRoute('/');

  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
