import 'package:flutter/material.dart';

import 'config_dart_define.dart';

class FlavorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Banner(
        location: BannerLocation.topStart,
        message: ConfigDartDefine.env,
        child: MaterialApp(
          home: _Home(),
          title: 'Flavor App',
          theme: ConfigDartDefine.environment() == Environment.DEV
              ? ThemeData.dark()
              : ThemeData.light(),
          debugShowCheckedModeBanner: false,
        ),
      ),
    );
  }
}

class _Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flavor App - ${ConfigDartDefine.appName}'),
      ),
      body: Center(
        child: Text('${ConfigDartDefine.env}'),
      ),
    );
  }
}
