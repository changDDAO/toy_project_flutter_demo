import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toy_project/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home', style: TextStyle(
          fontSize: 20,
          fontStyle: FontStyle.italic,
        )),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('SecondPage'),
            ElevatedButton(
                onPressed: ()=>Get.to(SecondPage()),
                child: Text(
                  'Go to Second Page',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}

