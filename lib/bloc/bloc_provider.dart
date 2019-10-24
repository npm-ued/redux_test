import 'package:flutter/material.dart';

import 'count_bloc.dart';

class BlocProvider extends InheritedWidget {
  CountBLoC bloC = CountBLoC();
  BlocProvider({Key key, Widget child}): super(key: key, child:child);


  static CountBLoC of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(BlocProvider) as BlocProvider).bloC;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }


}