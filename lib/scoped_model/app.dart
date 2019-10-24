import 'package:flutter/material.dart';
import 'package:redux_test/scoped_model/home.dart';
import 'package:scoped_model/scoped_model.dart';

import 'count_model.dart';

class MyApp extends StatelessWidget {
  // 创建顶层状态
  CountModel countModel = CountModel();

  @override
  Widget build(BuildContext context) {
    // 将顶层状态包在MaterialApp之上
    return ScopedModel<CountModel>(
      model: countModel,
      child: MaterialApp(
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}
