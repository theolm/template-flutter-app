import 'package:flutter/material.dart';

// TODO: move this file into a feature package
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
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
