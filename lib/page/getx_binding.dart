import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/controller/binding_one_controller.dart';
import 'package:flutter_getx_demo/controller/binding_two_controller.dart';
import 'package:get/get.dart';

class GetXBindingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Binding'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                    'The Value From One Controller is ${Get.find<BindingOneController>().count}'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Obx(
                () => Text(
                    'The Value From Two Controller is ${Get.find<BindingTwoController>().count}'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<BindingOneController>().increment();
                },
                child: Text(' Increment - BindingOneController'),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.find<BindingTwoController>().increment();
                },
                child: Text(' Increment - BindingTwoController'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
