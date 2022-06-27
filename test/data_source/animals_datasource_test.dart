import 'package:adotapet/data/data_source/animals_data_source.dart';
import 'package:adotapet/data/models/cat_model.dart';
import 'package:adotapet/data/models/data_model.dart';
import 'package:adotapet/data/models/dog_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AnimalsDataSource dataSource;

  setUp(() {
    dataSource = AnimalsDataSource();
  });

  group('Animals Data Source test', () {
    test('When try get Animals then return a right DataModel<DogModel>',
        () async {
      final response = await dataSource.getDogs(1);
      expect(response, isA<DataModel<DogModel>>());
      expect(response.limit, response.results.length);
    });

    test('When try get Animals then return a right DataModel<CatModel>',
        () async {
      final response = await dataSource.getCats(1);
      expect(response, isA<DataModel<CatModel>>());
      expect(response.limit, response.results.length);
    });
  });
}
