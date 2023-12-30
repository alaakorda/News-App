import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/screens/news_screen.dart';
import 'package:newsapp/services/news_service.dart';
//import 'package:device_preview/device_preview.dart';

void main() {
  //NewsService(Dio()).getNews();
  runApp(
    // DevicePreview(
    //   enabled: true,
    // builder: (context) => MyApp(), // Wrap your app
    //),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'News App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: Colors.white),
      home: const NewsScreen(),
    );
  }
}
