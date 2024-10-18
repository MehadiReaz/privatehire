import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/routes/pages.dart';
import 'core/routes/routes.dart';
import 'features/splash_screen/presentation/splash_screen.dart';
import 'global/bindings/initial_bindings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      initialRoute: Routes.splashScreen,
      getPages: Pages.pages,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white, // Set background color to white
      ),
      home: const SplashScreen(),
    );
  }
}
