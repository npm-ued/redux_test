import 'package:flutter/material.dart';

import 'bloc_provider.dart';

class CountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Count Page'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: bloc.stream,
          initialData: 0,
          builder: (context, snapshot) =>
            Text(
              'You hit me ${snapshot.data} times',
              style: Theme.of(context).textTheme.display1,
            ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => bloc.increment(),
      ),
    );
  }
}
