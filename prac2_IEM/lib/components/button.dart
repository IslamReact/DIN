import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ButtonColumn extends StatelessWidget {
  final int likes;
  final int views;

  const ButtonColumn({super.key, required this.likes, required this.views});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Column(
            children: [
              const Icon(Icons.favorite, color: Colors.red),
              Text("$views")
            ],
          ),
        ),
        const SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          child: Column(
            children: [
               const Icon( Icons.remove_red_eye,color: Colors.deepPurple),
              Text("$likes")
            ],
          ),
        ),
        SpinPerfect(
          infinite: true,
          duration: const Duration(seconds:4),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            elevation: 0,
            child: const Column(
              children: [
                Icon( Icons.play_circle_outline,color: Colors.white),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
