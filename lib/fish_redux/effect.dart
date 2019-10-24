import 'package:fish_redux/fish_redux.dart';
import 'package:redux_test/fish_redux/action.dart';
import 'package:redux_test/fish_redux/state.dart';

Effect<CounterState> buildEffect() {
  return combineEffects(<Object, Effect<CounterState>>{
    CounterAction.onAdd: _onAdd,
  });
}

void _onAdd(Action action, Context<CounterState> ctx) {
  print("_onadd");
  ctx.dispatch(CounterActionCreator.add());
}