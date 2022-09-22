import 'package:test_project/datasource/local/database.dart';

abstract class ILocalDatasource {
  Future<void> insert();
  Future<void> update();
  Future<void> delete();
  select();
}

class LocalDatasource implements ILocalDatasource {
  LocalDatasource({required this.myDatabase});

  final MyDatabase myDatabase;

  @override
  Future<List<Category>> select() async {
    final allCategories = await myDatabase.select(myDatabase.categories).get();
    return allCategories;
  }

  @override
  Future<void> delete() {
    throw UnimplementedError();
  }

  @override
  Future<void> insert() async {
    await myDatabase
        .into(myDatabase.categories)
        .insert(CategoriesCompanion.insert(description: 'my first category'));
  }

  @override
  Future<void> update() {
    throw UnimplementedError();
  }
}
