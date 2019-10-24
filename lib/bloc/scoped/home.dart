import 'package:flutter/material.dart';

import 'bloc_provider.dart';
import 'count_page.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: bloc.stream,
          initialData: bloc.value,
          builder: (context, snapshot) {
            return Text(
              'You hit me:${snapshot.data} times',
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
          onPressed: () =>
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CountPage()))
      ),
    );
  }
}
