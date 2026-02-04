// app.dart
// Main app widget setup

import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mediation AI',
      // TODO: Add theme and routes
      home: const Scaffold(
        body: Center(child: Text('Mediation AI Home')),
      ),
    );
  }
}
