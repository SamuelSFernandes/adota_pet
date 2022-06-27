import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../../../data/list_authorized_email.dart';
import '../../../shared/constants/named_routes.dart';

part 'login_controller.g.dart';

@singleton
class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  late Box<dynamic> box;

  Future initialize() async {
    box = await Hive.openBox('authMe');
  }

  TextEditingController emailController = TextEditingController();

  Future<void> submit(BuildContext context) async {
    String? result = listAuthorizedEmail.firstWhere(
      (element) => element == emailController.text,
      orElse: () => '',
    );

    if (result.isNotEmpty) {
      box.put('user', result);
      emailController.clear();
      Navigator.of(context).pushReplacementNamed(NamedRoutes.homePage);
    } else {
      const snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Email inválido'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
