import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('${Get.arguments}'),
              const SizedBox(
                height: 10,
              ),
              TextButton(onPressed: () {}, child: Text('Second Next')),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text('Back To Previous')),
            ],
          ),
        ),
      ),
    );
  }
}
