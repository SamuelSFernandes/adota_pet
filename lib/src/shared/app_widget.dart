import 'package:flutter/material.dart';

import 'app_themes.dart';
import 'constants/named_routes.dart';
import 'routes/app_routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: kThemeData,
      initialRoute: NamedRoutes.splash,
      routes: appRoutes,
    );
  }
}
