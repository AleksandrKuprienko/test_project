import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:test_project/datasource/local/database.dart';
import 'package:test_project/datasource/local/local_datasource.dart';
import 'package:test_project/home/home_page.dart';
import 'package:test_project/profile/profile_page.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.singleton((i) => MyDatabase()),
        Bind.singleton((i) => LocalDatasource(myDatabase: Modular.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          '/profile',
          child: (context, args) => ProfilePage(
            localDatasource: Modular.get(),
            someRandomWord: args.data['someRandomWord'],
          ),
        ),
      ];
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Test modular app',
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}
