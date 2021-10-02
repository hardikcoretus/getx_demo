import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/page/service.dart';
import 'package:get/get.dart';

class GetxServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Service'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.find<GetXServices>().incrementCounter();
                  
                },
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
