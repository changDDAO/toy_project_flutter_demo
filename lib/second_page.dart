import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toy_project/plus_button_controller.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(PlusButtonController());
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<PlusButtonController>(
              builder: (controller){
                return Text('+ Button을 눌러보세요. count: ${controller.count}');
              },
            ),
            ElevatedButton(
                onPressed:(){
                  Get.find<PlusButtonController>().increase();
                },
                child: Icon(
                  CupertinoIcons.plus,
                  color: Colors.blue,
                  size: 30,
                )
            ),
          ],
        ),
      ),
    );
  }
}
