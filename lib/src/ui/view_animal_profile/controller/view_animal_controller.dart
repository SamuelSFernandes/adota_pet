import 'package:adotapet/data/models/cat_model.dart';
import 'package:adotapet/data/models/dog_model.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'view_animal_controller.g.dart';

@singleton
class ViewAnimalController = _ViewAnimalControllerBase
    with _$ViewAnimalController;

abstract class _ViewAnimalControllerBase with Store {
  @observable
  DogModel? dog;
  @observable
  CatModel? cat;

  @observable
  dynamic result;

  initialize() {
    if (result is CatModel) {
      cat = result;
    } else if (result is DogModel) {
      dog = result;
    }
  }
}
