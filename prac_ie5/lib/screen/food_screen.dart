import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodScreen extends StatelessWidget{
  const FoodScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Food'),
          ],
        ),
      ),
    );
  }
}