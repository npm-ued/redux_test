import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_test/redux/app.dart';
import 'package:redux_test/redux/state.dart';
import 'package:redux_test/redux/reducer.dart';




void main(){
  final store = Store<CountState>(reducer, initialState: CountState.initState());
  runApp(MyApp(store));
}