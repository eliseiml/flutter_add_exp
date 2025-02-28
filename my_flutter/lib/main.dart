// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:my_flutter/page_a.dart';
import 'package:my_flutter/page_b.dart';

void main() {
  // Imports are needed because otherwise native app can't find entrypoints
  const vmFlutterEntryPointA = flutterEntryPointA;
  const vmFlutterEntryPointB = flutterEntryPointB;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(body: SizedBox.shrink()),
    );
  }
}
