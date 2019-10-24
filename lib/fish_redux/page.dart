import 'package:fish_redux/fish_redux.dart';
import 'package:redux_test/fish_redux/reducer.dart';
import 'package:redux_test/fish_redux/state.dart';
import 'package:redux_test/fish_redux/effect.dart';
import 'package:redux_test/fish_redux/view.dart';

class CounterFishReduxPage extends Page<CounterState, Map<String,dynamic>> {
  CounterFishReduxPage()
      :super(
        initState:initState,
        effect: buildEffect(),
        reducer: counterReducer,
        view: buildView
      );
}