import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:template_flutter/src/core/presenter/app_annotaded_region.dart';

import 'main_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //AddGetIt

  @override
  Widget build(BuildContext context) {
    return AppAnnotatedRegionWidget(
        child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    ));
  }
}
