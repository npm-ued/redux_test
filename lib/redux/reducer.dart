import 'action.dart';
import 'state.dart';

/**
 * reducer会根据传进来的action生成新的CountState
 */
CountState reducer(CountState state, action) {
  switch(action) {
    case CounterAction.increment:
      return CountState(state.count+1);
    default:
      break;
  }
}