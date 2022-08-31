import 'package:flutter/material.dart';

import 'core/shared/routers/routers.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routers.initialRoute,
      onGenerateRoute: Routers.generateRoutes,
    );
  }
}
