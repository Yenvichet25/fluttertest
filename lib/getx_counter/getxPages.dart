import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getxCountController.dart';

class GetXPage extends StatelessWidget {
  const GetXPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: GetX<GetxCountController>(
          init: GetxCountController(),
          builder: (controller) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(controller.counter.string),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                    onPressed: () {
                      controller.onInCreas();
                    },
                    child: Text("Increament")),
                FlatButton(
                    onPressed: () {
                      controller.onDeinCreas();
                    },
                    child: Text("Deincreament"))
              ],
            );
          }
        )
      ),
    );
  }
}
