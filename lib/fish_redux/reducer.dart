import 'package:fish_redux/fish_redux.dart';
import 'package:redux_test/fish_redux/action.dart';
import 'package:redux_test/fish_redux/state.dart';

Reducer<CounterState> buildReducer() {
  return asReducer<CounterState>(<Object, Reducer<CounterState>>{
    CounterAction.add: _add,
  });
}

CounterState _add(CounterState state, Action action) {
  final CounterState newState = state.clone(); // 新的state
  newState.count = ++state.count;
  return newState; // 返回新的state
}


CounterState counterReducer(CounterState state, Action action) {
  print(action.type);
  switch(action.type) {
    case CounterAction.add:
      final CounterState newState = state.clone(); // 新的state
      newState.count = ++state.count;
      return newState;
    default:
      return state;
  }
}