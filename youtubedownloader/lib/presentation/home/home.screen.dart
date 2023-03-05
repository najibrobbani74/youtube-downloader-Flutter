import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
              child: Obx(
            () => Text(
              '${controller.count.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          )),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.getSearch();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
