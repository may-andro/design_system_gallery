import 'package:flutter/material.dart';

import 'di/locator.dart';
import 'presentation/screen/app/dsg_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await locator.resetDependencies();
  await locator.initDependencies();

  runApp(const DSApp());
}
