import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Count App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Count App by Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  LongButton(buttonTitle: 'Plus', onPressed: _incrementCounter),
                  LongButton(
                      buttonTitle: 'Minus', onPressed: _decrementCounter),
                  LongButton(
                    buttonTitle: 'Reset',
                    onPressed: _resetCounter,
                    isDestructive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LongButton extends StatelessWidget {
  const LongButton(
      {Key? key,
      required this.buttonTitle,
      required this.onPressed,
      this.isDestructive = false})
      : super(key: key);

  final String buttonTitle;
  final void Function()? onPressed;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: isDestructive
          ? ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.error,
              minimumSize: const Size.fromHeight(44))
          : ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(44)),
      onPressed: onPressed,
      child: Text(buttonTitle),
    );
  }
}
