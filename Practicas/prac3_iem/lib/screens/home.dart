import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../config/local_gastos.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        shape: CircleBorder(
          side: BorderSide(color: Colors.white.withOpacity(0.25), width: 2.0),
        ),
        child: const Icon(Icons.add),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add other widgets here
            PageViewMonth(),
            PageViewLabels(),
            PageViewImage(),
            ListTiles(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: FaIcon(FontAwesomeIcons.angellist),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: FaIcon(FontAwesomeIcons.artstation),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: FaIcon(FontAwesomeIcons.airbnb),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: FaIcon(FontAwesomeIcons.adversal),
            ),
          ],
        ),
      ),
    );
  }
}

class PageViewMonth extends StatelessWidget {
  const PageViewMonth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: gastosAnuales.map((gasto) {
        return Center(
          child: Text(
            gasto['mes'],
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}

class PageViewLabels extends StatelessWidget {
  const PageViewLabels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Center(
          child: Text(
            'Subtítulo para enero',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}

class PageViewImage extends StatelessWidget {
  const PageViewImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: gastosAnuales.length,
      itemBuilder: (context, index) {
        return Center(
          child: Image.asset(
            'assets/${gastosAnuales[index]['mes']}.png',
            height: 200,
            width: 200,
          ),
        );
      },
    );
  }
}

class ListTiles extends StatelessWidget {
  const ListTiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gastosAnuales.length,
      itemBuilder: (context, index) {
        final porcentaje = (gastosAnuales[index]['compras'] / gastosAnuales[index]['comida']) * 100;
        return Card(
          child: ListTile(
            title: Text(gastosAnuales[index]['mes']),
            subtitle: Text('Porcentaje: ${porcentaje.toStringAsFixed(2)}%'),
            leading: CircleAvatar(
              child: Text('${gastosAnuales[index]['compras']}'),
            ),
          ),
        );
      },
    );
  }
}