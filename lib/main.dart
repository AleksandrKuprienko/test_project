import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/data/country.dart';
import 'package:test_project/presentation/pages/countrys_list/country_list.dart';
import 'package:test_project/presentation/pages/details/details_page.dart';
import 'package:test_project/presentation/pages/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: 'Flutter Test',
    );
  }

  final GoRouter _router = GoRouter(
    navigatorKey: GlobalKey(),
    initialLocation: '/',
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        name: 'countryList',
        path: '/countryList',
        builder: (context, state) => CountryListPage(
          countryList: state.extra as List<Country>,
        ),
        routes: [
          GoRoute(
            name: 'details',
            path: 'details/:name',
            builder: (context, state) {
              log(state.error.toString());
              return DetailsPage(
                country: state.extra as Country,
              );
            },
          ),
        ],
      ),
    ],
  );
}
