import 'package:flutter/material.dart';
import 'package:fluttertest/counter/counterController.dart';
import 'package:get/get.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: GetBuilder<CounterController>(
            init: CounterController(),
            builder: (controller) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(controller.count.toString()),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                      onPressed: () {
                        controller.increament();
                      },
                      child: Text("Increament")),
                  FlatButton(
                      onPressed: () {
                        controller.Decreament();
                      },
                      child: Text("Deincreament"))
                ],
              );
            }),
      ),
    );
  }
}
