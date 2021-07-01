import 'package:flutter/material.dart';
import 'package:fluttertest/local_storage/storage_page.dart';
import 'package:get_storage/get_storage.dart';

import 'counter/counterPage.dart';
import 'getx_counter/getxPages.dart';

main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StrogePage(),
    );
  }
}
