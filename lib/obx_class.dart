import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/reactive_state.dart';
import 'package:flutter_getx_demo/student.dart';
import 'package:get/get.dart';

class ObxClass extends StatelessWidget {
  // var student = Student();

  //For Making this entrire class observable
  final student = Student(name: 'tomm', age: 20).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(
                () =>
                    //Individual Obs Parameter
                    // Text('Name is ${student.name}'),

                    //Obs Class
                    Text('Name is ${student.value.name}'),

                //If Entire Class is
              ),
              const SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  //Using Individual Rx variable of class
                  // student.name.value = student.name.toUpperCase().toString();

                  //Using whole observable class
                  student.update((stud) {
                    student.value.name = stud!.name.toString().toUpperCase();
                  });
                },
                child: Text('Convert To UpperCase'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
