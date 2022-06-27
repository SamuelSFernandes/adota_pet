import 'package:adotapet/src/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../shared/constants/named_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late Box<dynamic> box;

  @override
  initState() {
    super.initState();
    initialize();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 500)).then(
        (value) {
          String? getUser = box.get('user');
          if (getUser != null) {
            Navigator.of(context).pushReplacementNamed(NamedRoutes.homePage);
          } else {
            Navigator.of(context).pushReplacementNamed(NamedRoutes.loginPage);
          }
        },
      );
    });
  }

  Future initialize() async {
    box = await Hive.openBox('authMe');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/pet.png',
                height: 150,
              ),
              const Text(
                'AdotaPet',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
