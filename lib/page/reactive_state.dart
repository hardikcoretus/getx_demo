import 'package:flutter/material.dart';
import 'package:get/get.dart';

final name = RxString('');
final isLogged = RxBool(true);

class ReactiveState extends StatelessWidget {
  var count = 0.obs;

  void counter() {
    count++;
  }

  ReactiveState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Reactive State ManageMent'),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => Text(
                  'Count Value is $count',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    counter();
                  },
                  child: Text(
                    'Increment',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
