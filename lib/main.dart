import 'package:flutter/material.dart';
import 'env/env.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
        brightness: Brightness.light, primaryColor: Colors.lightGreen);

    final ThemeData darkTheme =
        ThemeData(brightness: Brightness.dark, primaryColor: Colors.lightGreen);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test .env in GitHub Pages',
      theme: theme,
      darkTheme: darkTheme,
      home: const MyHomePage(title: 'Test .env in GitHub Pages'),
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
              'Value from .env file (TEST key): ',
              style: Theme.of(context).textTheme.headline4,
            ),
            const Text("'${Env.test}'"),
          ],
        ),
      ),
    );
  }
}
