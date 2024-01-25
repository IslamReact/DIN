import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget{
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Buttons'),
          ],
        ),
      ),
    );
  }
}