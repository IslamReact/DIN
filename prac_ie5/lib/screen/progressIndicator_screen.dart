import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressIndicatorScreen extends StatelessWidget{
  const ProgressIndicatorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Progress Indicator')
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            CircularProgressIndicator(),
            Text("Circular progress indicator", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            LinearProgressIndicator(),
            Text("Linear progress indicator", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}