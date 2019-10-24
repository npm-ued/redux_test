import 'package:flutter/material.dart';
import 'package:redux_test/scoped_model/count_model.dart';
import 'package:redux_test/scoped_model/count_page.dart';
import 'package:scoped_model/scoped_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Model getModel(BuildContext context){

  }
  @override
  Widget build(BuildContext context) {
    // 通过ScopedModelDescendant获取model数据
    return ScopedModelDescendant<CountModel>(
      builder: (context, child, model){
        return Scaffold(
          appBar: AppBar(
            title: Text('ScopedModel'),
          ),
          body: Center(
            child: Text(
              model.count.toString(),
              style: TextStyle(fontSize: 48.0),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.forward),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){
                return CountPage(title: 'Count Page',);
              }));
            }),
        );
      },
    );
  }
}
