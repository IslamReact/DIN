import 'package:flutter/material.dart';

import 'domain/entities/mensaje.dart';

class MyMsgBubble extends StatelessWidget {
  final Mensaje msg;

  const MyMsgBubble({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    final esquemaColor = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: esquemaColor.primary,
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(msg.texto,
                style: const TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}