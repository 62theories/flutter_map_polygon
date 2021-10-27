import 'package:flutter/material.dart';
import 'map_ui.dart';
import 'page.dart';

class MapsDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GoogleMaps examples')),
      body: MyHomePage(),
    );
  }
}

void main() {
  runApp(MaterialApp(home: MapsDemo()));
}
