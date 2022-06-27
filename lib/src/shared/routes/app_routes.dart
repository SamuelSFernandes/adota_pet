import 'package:flutter/material.dart';

import '../../ui/home/home_page.dart';
import '../../ui/login/login_page.dart';
import '../../ui/splash/spash_page.dart';
import '../../ui/view_animal_profile/view_animal_page.dart';
import '../constants/named_routes.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  NamedRoutes.loginPage: (context) => const LoginPage(),
  NamedRoutes.splash: (context) => const SplashPage(),
  NamedRoutes.homePage: (context) => const HomePage(),
  NamedRoutes.viewAnimal: (context) => const ViewAnimalPage(),
};
