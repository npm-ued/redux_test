import 'package:flutter/material.dart';
import 'package:redux_test/bloc/bloc_provider.dart';
import 'package:redux_test/bloc/count_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: bloc.stream,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.display1,
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CountPage()))),
    );
  }
}
