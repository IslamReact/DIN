import 'package:flutter/material.dart';

class InterlocutorMsgBubble extends StatelessWidget {
  const InterlocutorMsgBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final esquemaColor = Theme.of(context).colorScheme;


    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: esquemaColor.secondary,
              borderRadius: BorderRadius.circular(15)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text('Mensaje tuyo',
                style: TextStyle(fontSize: 20, color: Colors.white)),
          ),
        ),
        const SizedBox(height: 10),
        _ImageBubble(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble();

  @override
  Widget build(BuildContext context) {
    final tam = MediaQuery.of(context).size;
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network('https://yesno.wtf/assets/no/2-101be1e3d8a0ed407c4e3c001ef8fa66.gif',
        width: tam.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return Container(
              height: 150,
              child: const Center(child: Text('Cargando imagen...')));
          }return Text('Cargando imagen...');
        },
    )
    );
  }
}
