import 'package:flutter/material.dart';
import 'package:redux_test/scoped_model/count_model.dart';
import 'package:scoped_model/scoped_model.dart';
class CountPage extends StatefulWidget {
  CountPage({Key key, this.title}): super(key:key);
  final String title;
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CountModel>(
      builder: (context, child, model){
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have pushed the button this many times:',style: TextStyle(fontSize: 20),),
                Text(
                  '${model.count}',
                  style: TextStyle(fontSize: 36),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => model.increment(),
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
        );
      },
    );
  }
}
