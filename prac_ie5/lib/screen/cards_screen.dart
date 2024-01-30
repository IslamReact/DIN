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
              NormalCardExample(),
              CardInkwellExample(),
              FilledCardExample(),
              OutlinedCardExample(),
              InlinedCardExample(),
            ]
            )
        )
    );
  }
}

class CardInkwellExample extends StatelessWidget {
  const CardInkwellExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const Padding(
            padding:  EdgeInsets.all(8.0),
            child: SizedBox(
              width: 300,
              height: 100,
              child: Text('A card that can be tapped'),
            ),
          ),
        ),
      )
    );
  }
}


class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

class OutlinedCardExample extends StatelessWidget {
  const OutlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: const SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Outlined Card')),
        ),
      ),
    );
  }
}

class InlinedCardExample extends StatelessWidget {
  const InlinedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Inlined Card')),
        ),
      ),
    );
  }
}

class NormalCardExample extends StatelessWidget {
  const NormalCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.accessible_outlined),
            title: Text('Label Card'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Label Card'),
          ),
          ListTile(
            leading: Icon(Icons.accessibility),
            title: Text('Label Card'),
          ),
        ],
      ),
    );
  }
}