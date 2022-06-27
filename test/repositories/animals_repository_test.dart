import 'package:adotapet/data/data_source/animals_data_source.dart';
import 'package:adotapet/data/models/cat_model.dart';
import 'package:adotapet/data/models/data_model.dart';
import 'package:adotapet/data/models/dog_model.dart';
import 'package:adotapet/data/repositories/animals_repository.dart';
import 'package:adotapet/infra/failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AnimalsDataSource dataSource;
  late AnimalsRepository repository;

  setUp(() {
    dataSource = AnimalsDataSource();
    repository = AnimalsRepository(dataSource: dataSource);
  });

  group('Animals repository test', () {
    test('getDog return DataModel<DogModel>', () async {
      final response = await repository.getDogs(page: 1);
      final result = response.fold((l) => l, (r) => r);

      expect(result, isA<DataModel<DogModel>>());
    });

    test('getDog return Failure', () async {
      final response = await repository.getDogs(page: -1);
      final result = response.fold((l) => l, (r) => r);

      expect(result, isA<Failure>());
    });

    test('getCat return DataModel<CatModel>', () async {
      final response = await repository.getCats(page: 1);
      final result = response.fold((l) => l, (r) => r);

      expect(result, isA<DataModel<CatModel>>());
    });

    test('getCat return Failure', () async {
      final response = await repository.getCats(page: -1);
      final result = response.fold((l) => l, (r) => r);

      expect(result, isA<Failure>());
    });
  });
}
