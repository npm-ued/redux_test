import 'package:flutter/material.dart';
import 'package:redux_test/bloc/bloc_provider.dart';
import 'package:redux_test/bloc/home.dart';


/**
 * scoped 入口
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'BloC Count',
        home: Home(),
      ),
    );
  }
}
