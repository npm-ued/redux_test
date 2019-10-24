
import 'package:flutter/material.dart';

import 'bloc_provider.dart';
import 'home.dart';

/**
 * scoped 入口
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'BloC Scoped',
        home: Home(),
      ),
    );
  }
}