import 'package:flutter/material.dart';
import '../config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget{

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return const _HomeScreen();
  }

}

class _HomeScreen extends StatelessWidget{
  const _HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final schemaColors = Theme.of(context).colorScheme;

    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          tileColor: schemaColors.secondaryContainer,
          title: Text(menuItems[index].titulo),
          subtitle: Text(menuItems[index].subtitulo),
          leading: Icon(menuItems[index].icono),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: (){
            Navigator.pushNamed(context, menuItems[index].ruta);
          },
        );
      },
    );
  }
}