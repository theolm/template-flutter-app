import 'package:flutter/material.dart';
import 'package:template_flutter/src/core/di/di.dart';

import 'src/core/presenter/app.dart';

Future<void> main() async {
  configureDependencies();
  runApp(App());
}
