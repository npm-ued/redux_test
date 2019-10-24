import 'package:flutter/material.dart';

import 'count_page.dart';
import 'count_bloc.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: StreamBuilder<int>(
          stream: bLoC.stream,
          initialData: bLoC.value,
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
