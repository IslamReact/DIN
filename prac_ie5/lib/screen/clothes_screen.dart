import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesScreen extends StatelessWidget{
  const ClothesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothes'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Clothes'),
          ],
        ),
      ),
    );
  }
}