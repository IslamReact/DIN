import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget{
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Wrap(spacing: 16.0, runSpacing: 16.0, children: <Widget>[
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.accessible_outlined),
                      title: Text('Card Label 1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Card Label 2'),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessibility),
                      title: Text('Card Label 3'),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16.0)),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.accessible_outlined),
                      title: Text('Card Label 1'),
                    ),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Card Label 2'),
                    ),
                    ListTile(
                      leading: Icon(Icons.accessibility),
                      title: Text('Card Label 3'),
                    ),
                  ],
                ),
              )
            ]
            )
        )
    );
  }
}