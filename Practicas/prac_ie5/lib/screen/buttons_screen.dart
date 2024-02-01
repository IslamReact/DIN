import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final schemaColors = Theme.of(context).colorScheme;
    
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text('Elevated Button off'),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined Button'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                const TextButton(
                  onPressed: null,
                  child: Text('Text Button off'),
                ),
                FilledButton(
                  onPressed: () {},
                  child: const Text('Filled Button'),
                ),
                FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility_rounded),
                  label: const Text('Filled Button icon'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.radio_button_checked_sharp),
                  tooltip: 'RadioButton',
                ),
                IconButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(schemaColors.inversePrimary)
                  ),
                  icon: const Icon(Icons.radio_button_checked_sharp),
                  tooltip: 'RadioButton with background',
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarms_outlined),
                  label: const Text('Text Button icon'),
                ),
                const _customButton()
              ],
            )
        )
    );
  }
}

class _customButton extends StatelessWidget {
  const _customButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final schemaColors = Theme.of(context).colorScheme;
    return ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Material(
            color: schemaColors.primary,
            child: InkWell(
                splashColor: schemaColors.inversePrimary,
                onTap: () {},
                child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text('InkWell Button')
                )
            )
        )
    );
  }
}