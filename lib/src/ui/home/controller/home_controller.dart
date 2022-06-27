import 'package:adotapet/data/models/cat_model.dart';
import 'package:adotapet/data/models/dog_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../data/data_source/animals_data_source.dart';
import '../../../../data/models/data_model.dart';
import '../../../../data/repositories/animals_repository.dart';
import '../../../shared/constants/named_routes.dart';

part 'home_controller.g.dart';

@singleton
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  late Box<dynamic> box;
  late AnimalsDataSource _dataSource;
  late AnimalsRepository _repository;

  final scrollDogController = ScrollController();
  final scrollCatController = ScrollController();

  int _pageCat = 0;
  int _pageDog = 0;

  Future<void> initialize() async {
    _dataSource = AnimalsDataSource();
    _repository = AnimalsRepository(dataSource: _dataSource);
    box = await Hive.openBox('authMe');

    scrollDogController.addListener(infinityScrollDogs);
    scrollCatController.addListener(infinityScrollCats);

    getAnimals();
  }

  void dispose() {
    scrollDogController.dispose();
    scrollCatController.dispose();
  }

  @observable
  DataModel? infoCats;
  @observable
  ObservableList<CatModel> cats = ObservableList();
  @observable
  DataModel? infoDogs;
  @observable
  ObservableList<DogModel> dogs = ObservableList();

  @action
  Future<void> getAnimals() async {
    await getDogs();
    await getCats();
  }

  @action
  Future<void> getDogs() async {
    final responseDogs = await _repository.getDogs(page: _pageDog);
    if (responseDogs.isRight()) {
      final dogsResult = responseDogs.fold((l) => null, (r) => r);
      infoDogs = dogsResult;
      dogs.addAll(dogsResult!.results);
      _pageDog++;
    }
  }

  @action
  Future<void> getCats() async {
    final responseCats = await _repository.getCats(page: _pageCat);
    if (responseCats.isRight()) {
      final catsResult = responseCats.fold((l) => null, (r) => r);
      infoCats = catsResult;
      _pageCat++;

      cats.addAll(catsResult!.results);
    }
  }

  @action
  void infinityScrollDogs() {
    if (scrollDogController.position.pixels ==
        scrollDogController.position.maxScrollExtent) {
      if (infoDogs!.total > dogs.length) {
        getDogs();
      }
    }
  }

  @action
  void infinityScrollCats() {
    if (scrollCatController.position.pixels ==
        scrollCatController.position.maxScrollExtent) {
      if (infoCats!.total > cats.length) {
        getCats();
      }
    }
  }

  void logoutInApp(BuildContext context) {
    box.put('user', null);
    Navigator.of(context).pushReplacementNamed(NamedRoutes.loginPage);
  }
}
