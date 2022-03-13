import 'package:flutter/material.dart';
import 'package:youtube/src/binding/init_bining.dart';
import 'package:youtube/src/components/youtube_detail.dart';
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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialBinding: InitBinding(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => const App()),
        GetPage(name: "/detail/:videoId", page: () => const YoutubeDetail()),
      ],
    );
  }
}
