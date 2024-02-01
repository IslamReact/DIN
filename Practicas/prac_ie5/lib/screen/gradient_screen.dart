import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientScreen extends StatelessWidget {
  const GradientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final schemaColors = Theme.of(context).colorScheme;

    return Scaffold(
        appBar: AppBar(
          title: const Text("Gradient"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
                  width: 1000,
                  height: 725,
                  decoration:  BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        schemaColors.inversePrimary,
                        schemaColors.primary,
                        schemaColors.secondary,
                        schemaColors.onSurface,
                      ],
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}
