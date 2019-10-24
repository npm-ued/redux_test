import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_test/redux/state.dart';

import 'home.dart';

class MyApp extends StatelessWidget {
  final Store<CountState> store;
  MyApp(this.store);

  @override
  Widget build(BuildContext context) {
    return StoreProvider<CountState>(
      store: store,
      child: MaterialApp(
        title: 'Redux Count',
        theme: ThemeData(
          primarySwatch: Colors.blue
        ),
        home: Home(),
      )
    );
  }
}