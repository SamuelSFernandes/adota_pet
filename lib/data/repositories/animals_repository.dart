import 'package:adotapet/data/data_source/animals_data_source.dart';
import 'package:adotapet/data/models/cat_model.dart';
import 'package:adotapet/data/models/dog_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../infra/failure.dart';
import '../models/data_model.dart';

@injectable
class AnimalsRepository {
  final AnimalsDataSource dataSource;
  AnimalsRepository({
    required this.dataSource,
  });

  Future<Either<Failure, DataModel<DogModel>>> getDogs(
      {required int page}) async {
    try {
      final response = await dataSource.getDogs(page);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }

  Future<Either<Failure, DataModel<CatModel>>> getCats(
      {required int page}) async {
    try {
      final response = await dataSource.getCats(page);
      return right(response);
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
