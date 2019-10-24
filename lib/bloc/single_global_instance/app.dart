
import 'package:flutter/material.dart';

import './home.dart';

/**
 * single global instance 入口
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'single global instance',
      theme: ThemeData.dark(),
      home: Home()
    );
  }
}

