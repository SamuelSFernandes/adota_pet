// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  late final _$infoCatsAtom =
      Atom(name: '_HomeControllerBase.infoCats', context: context);

  @override
  DataModel<dynamic>? get infoCats {
    _$infoCatsAtom.reportRead();
    return super.infoCats;
  }

  @override
  set infoCats(DataModel<dynamic>? value) {
    _$infoCatsAtom.reportWrite(value, super.infoCats, () {
      super.infoCats = value;
    });
  }

  late final _$catsAtom =
      Atom(name: '_HomeControllerBase.cats', context: context);

  @override
  ObservableList<CatModel> get cats {
    _$catsAtom.reportRead();
    return super.cats;
  }

  @override
  set cats(ObservableList<CatModel> value) {
    _$catsAtom.reportWrite(value, super.cats, () {
      super.cats = value;
    });
  }

  late final _$infoDogsAtom =
      Atom(name: '_HomeControllerBase.infoDogs', context: context);

  @override
  DataModel<dynamic>? get infoDogs {
    _$infoDogsAtom.reportRead();
    return super.infoDogs;
  }

  @override
  set infoDogs(DataModel<dynamic>? value) {
    _$infoDogsAtom.reportWrite(value, super.infoDogs, () {
      super.infoDogs = value;
    });
  }

  late final _$dogsAtom =
      Atom(name: '_HomeControllerBase.dogs', context: context);

  @override
  ObservableList<DogModel> get dogs {
    _$dogsAtom.reportRead();
    return super.dogs;
  }

  @override
  set dogs(ObservableList<DogModel> value) {
    _$dogsAtom.reportWrite(value, super.dogs, () {
      super.dogs = value;
    });
  }

  late final _$getAnimalsAsyncAction =
      AsyncAction('_HomeControllerBase.getAnimals', context: context);

  @override
  Future<void> getAnimals() {
    return _$getAnimalsAsyncAction.run(() => super.getAnimals());
  }

  late final _$getDogsAsyncAction =
      AsyncAction('_HomeControllerBase.getDogs', context: context);

  @override
  Future<void> getDogs() {
    return _$getDogsAsyncAction.run(() => super.getDogs());
  }

  late final _$getCatsAsyncAction =
      AsyncAction('_HomeControllerBase.getCats', context: context);

  @override
  Future<void> getCats() {
    return _$getCatsAsyncAction.run(() => super.getCats());
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  void infinityScrollDogs() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.infinityScrollDogs');
    try {
      return super.infinityScrollDogs();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void infinityScrollCats() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.infinityScrollCats');
    try {
      return super.infinityScrollCats();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
infoCats: ${infoCats},
cats: ${cats},
infoDogs: ${infoDogs},
dogs: ${dogs}
    ''';
  }
}
