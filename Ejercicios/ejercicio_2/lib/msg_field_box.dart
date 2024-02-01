import 'package:ejercicio_2/presentation/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MsgFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;

  const MsgFieldBox({super.key, required this.onValue});

  @override
  Widget build(BuildContext context) {
    final ChatProvider stateCProvider = context.read();
    final esquemaColor = Theme.of(context).colorScheme;
    final bordeCajaInput = UnderlineInputBorder(
        borderSide: BorderSide(color: esquemaColor.surface),
        borderRadius: BorderRadius.circular(15));
    final textController = TextEditingController(

    );
    final focusNode = FocusNode();

    return TextFormField(
      controller: textController,
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        final cadena = textController.value.text;
        onValue(cadena);
        //stateCProvider.enviarMensaje(cadena);
        textController.clear();
        focusNode.requestFocus();
      },
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      decoration: InputDecoration(
        hintText: 'Terminar con "?" para respuesta',
        filled: true,
        enabledBorder: bordeCajaInput,
        focusedBorder: bordeCajaInput,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send),
          onPressed: () {
            final cadena = textController.value.text;
            onValue(cadena);
            //stateCProvider.enviarMensaje(cadena);
            textController.clear();
          },
        )
      ),
    );
  }
}
