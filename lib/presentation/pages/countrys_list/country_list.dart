import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project/data/country.dart';

class CountryListPage extends StatelessWidget {
  const CountryListPage({
    super.key,
    required this.countryList,
  });

  final List<Country> countryList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CountryListPage')),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: countryList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              context.push(
                  '/countryList/details/${countryList[index].name.common}',
                  extra: countryList[index]);
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(countryList[index].name.common),
            ),
          );
        },
      ),
    );
  }
}
