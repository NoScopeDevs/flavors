import 'package:flutter/material.dart';

import 'config_dart_define.dart';

class FlavorApp extends StatelessWidget {
  final config = ConfigDartDefine();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _Home(),
      title: 'Flavor App',
      theme: config.isDev ? ThemeData.dark() : ThemeData.light(),
    );
  }
}

class _Home extends StatelessWidget {
  final config = ConfigDartDefine();

  @override
  Widget build(BuildContext context) {
    String environment;

    if (config.isDev) {
      environment = 'DEV';
    } else {
      environment = 'PROD';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Flavor App - $environment'),
      ),
      body: Center(
        child: Container(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
