import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget{
  const CardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Cards'),
          ],
        ),
      ),
    );
  }
}