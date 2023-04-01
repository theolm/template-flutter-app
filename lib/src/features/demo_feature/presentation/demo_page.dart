import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SchemeColorBox(
                label: 'Primary',
                color: Theme.of(context).colorScheme.primary,
              ),
              SchemeColorBox(
                label: 'Secondary',
                color: Theme.of(context).colorScheme.secondary,
              ),
              SchemeColorBox(
                label: 'Tertiary',
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ],
          ),
          Container(height: 32),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '0',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          Container(height: 64),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //_incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
    ;
  }
}

class SchemeColorBox extends StatelessWidget {
  final String label;
  final Color color;

  const SchemeColorBox({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(label),
            Container(
              color: color,
              height: 40,
              width: 40,
            ),
          ],
        ),
      ),
    );
  }
}