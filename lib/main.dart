import 'package:flutter/material.dart';
import 'package:youtube/src/binding/init_bining.dart';
import 'src/app.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Youtube Clone App',
        theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialBinding: InitBinding(),
        initialRoute: "/",
        getPages: [GetPage(name: "/", page: () => const App())],
    );
  }
}
