import 'package:desh_app/view/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Desh',
        theme: ThemeData(
          scaffoldBackgroundColor: const MaterialColor(0xff9BE09D, {
            50: Color(0xff9BE09D),
          }),
        ),
        home: const HomeScreen());
  }
}
