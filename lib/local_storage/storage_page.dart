import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import 'local_storge_controller.dart';

class StrogePage extends StatelessWidget {
  const StrogePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Storage"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height * 0.5,
          margin: EdgeInsets.all(10),
          child: GetBuilder<LocalStroageController>(
              init: LocalStroageController(),
              builder: (controller) {
                return Column(
                  children: [
                    Card(
                      child: TextField(
                        controller: controller.nameController,
                        decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Please enter your Name'),
                      ),
                    ),
                    Card(
                      child: TextField(
                        controller: controller.positionController,
                        decoration: InputDecoration(
                            labelText: 'Please enter your position',
                            hintText: 'Position'),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        controller.onSaveData();
                      },
                      child: Text("Save"),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GetBuilder<LocalStroageController>(
                              builder: (controller) {
                            return ListView.builder(
                              itemCount: controller.listDevelop.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                return Card(
                                  child: ListTile(
                                    title: Text(
                                        controller.listDevelop[index]['name']),
                                    subtitle: Text(controller.listDevelop[index]
                                        ['position']),
                                    trailing: IconButton(
                                      icon: Icon(Icons.delete),
                                      onPressed: () {
                                        controller.onDeleteData(index);
                                      },
                                    ),
                                  ),
                                );
                              },
                            );
                          })
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
      ),
    );
  }
}
