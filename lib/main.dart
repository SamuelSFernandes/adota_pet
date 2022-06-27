import 'package:flutter/material.dart';

import 'di/injectable.dart' as di;
import 'src/shared/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp(const AppWidget());
}
