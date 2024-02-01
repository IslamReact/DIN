import 'package:ejercicio_2/msg_field_box.dart';
import 'package:ejercicio_2/my_msg_bubble.dart';
import 'package:ejercicio_2/intl_msg_bubbler.dart';
import 'package:ejercicio_2/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/entities/mensaje.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
    child: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Consumer<ChatProvider>(
            builder: (BuildContext context, ChatProvider stateCProvider, Widget? child) {
              return ListView.builder(
                itemCount: stateCProvider.listaMensajes.length,
                itemBuilder: (BuildContext context, int index) {
                  Mensaje msg = stateCProvider.listaMensajes[index];
                  return (msg.autor == Autor.yo)
                      ?MyMsgBubble(msg: msg)
                      :const InterlocutorMsgBubble();
                },
              // itemBuilder: (context, index) {
              //   return (index % 2 == 0)
              //       ? const MyMsgBubble()
              //       : const InterlocutorMsgBubble();
              //   },
              );
            },
          ),
        ),
        MsgFieldBox(onValue: (String value) {  },),
      ]),
    );
  }
}