import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/Data/NetWorkFetching/NetworkFetching.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // this is the first change in this repo
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FetchingContent(),
    );
  }
}
