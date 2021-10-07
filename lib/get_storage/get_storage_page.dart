import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStoragePage extends StatelessWidget {
  var emailController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Storage'),
      ),
      body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Your Email'),
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              TextButton(
                  onPressed: () {
                    if (GetUtils.isEmail(emailController.text)) {
                      storage.write('email', emailController.text);
                    } else {
                      Get.snackbar('Invalid Email',
                          'Enter Email is not in valid format');
                    }
                  },
                  child: Text('Write')),
              const SizedBox(
                height: 8.0,
              ),
              TextButton(
                  onPressed: () {
                    print('Your Entered Email Is : ${storage.read('email')}');
                  },
                  child: Text('Read'))
            ],
          ),
        ),
      ),
    );
  }
}

//Remove a Key from storage
// storage.remove('email');

//Erase container
// storage.erase();

//Create Container with name
// GetStorage g = GetStorage('MyStorage');
// await GetStorage.init('MyStorage');