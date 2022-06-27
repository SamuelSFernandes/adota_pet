import 'package:adotapet/data/models/data_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../api_utils.dart';
import '../models/cat_model.dart';
import '../models/category_animals_model.dart';
import '../models/dog_model.dart';

@injectable
class AnimalsDataSource {
  final _dio = Dio();

  Future<DataModel<DogModel>> getDogs(int page) async {
    try {
      final response = await _dio.get(
        ApiUtils.dogApi,
        queryParameters: {
          "api_key": "6b0c1cdb-6af9-491d-afd4-f32119a61856",
          "limit": 10,
          "page": page,
          "order": "Desc",
        },
      );
      final List resultList = response.data as List;
      final headers = response.headers;

      List<DogModel> resultCharacters = List<DogModel>.from(
        resultList.map((e) {
          e.addAll({"type": TypeAnimals.dog});
          return DogModel.fromMap(e);
        }).toList(),
      );

      return DataModel(
        count: int.parse(headers.value('pagination-count') ?? '0'),
        limit: int.parse(headers.value('pagination-limit') ?? '0'),
        page: int.parse(headers.value('pagination-page	') ?? '0'),
        total: int.parse(headers.value('pagination-count') ?? '0'),
        results: resultCharacters,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<DataModel<CatModel>> getCats(int page) async {
    try {
      final response = await _dio.get(
        ApiUtils.catApi,
        queryParameters: {
          "api_key": "6b0c1cdb-6af9-491d-afd4-f32119a61856",
          "limit": 10,
          "page": page,
          "order": "Desc",
        },
      );
      final List resultList = response.data as List;
      final headers = response.headers;

      List<CatModel> resultCharacters = List<CatModel>.from(resultList.map((e) {
        e.addAll({"type": TypeAnimals.dog});
        return CatModel.fromMap(e);
      }).toList());

      return DataModel(
        count: int.parse(headers.value('pagination-count') ?? '0'),
        limit: int.parse(headers.value('pagination-limit') ?? '0'),
        page: int.parse(headers.value('pagination-page') ?? '0'),
        total: int.parse(headers.value('pagination-count') ?? '0'),
        results: resultCharacters,
      );
    } catch (e) {
      rethrow;
    }
  }
}
