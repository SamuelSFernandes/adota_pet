// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'view_animal_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ViewAnimalController on _ViewAnimalControllerBase, Store {
  late final _$dogAtom =
      Atom(name: '_ViewAnimalControllerBase.dog', context: context);

  @override
  DogModel? get dog {
    _$dogAtom.reportRead();
    return super.dog;
  }

  @override
  set dog(DogModel? value) {
    _$dogAtom.reportWrite(value, super.dog, () {
      super.dog = value;
    });
  }

  late final _$catAtom =
      Atom(name: '_ViewAnimalControllerBase.cat', context: context);

  @override
  CatModel? get cat {
    _$catAtom.reportRead();
    return super.cat;
  }

  @override
  set cat(CatModel? value) {
    _$catAtom.reportWrite(value, super.cat, () {
      super.cat = value;
    });
  }

  late final _$resultAtom =
      Atom(name: '_ViewAnimalControllerBase.result', context: context);

  @override
  dynamic get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(dynamic value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  @override
  String toString() {
    return '''
dog: ${dog},
cat: ${cat},
result: ${result}
    ''';
  }
}
