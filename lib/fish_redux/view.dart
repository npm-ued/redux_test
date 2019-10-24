import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:redux_test/fish_redux/state.dart';
import 'package:redux_test/fish_redux/action.dart';

Widget buildView(CounterState state, Dispatch dispatch, ViewService viewService){
  return Scaffold(
    appBar: AppBar(
      title: Text('CounterFishREdux'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(state.count.toString())
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () => dispatch(CounterActionCreator.onAdd()),
      tooltip: 'add',
      child: Icon(Icons.add),
    ),
  );
}