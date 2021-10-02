import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/binding/allcontrollerbinding.dart';
import 'package:flutter_getx_demo/other/messages.dart';
import 'package:flutter_getx_demo/page/getx_binding.dart';

import 'package:flutter_getx_demo/page/home.dart';
import 'package:flutter_getx_demo/page/internationalization_page.dart';
import 'package:flutter_getx_demo/page/service.dart';
import 'package:get/get.dart';

import 'getx_service_page.dart';

void main() async {
  // await initServices();
  runApp(MyApp());
}

Future<void> initServices() async {
  print('service starting...');
  // await Get.putAsync<Service>(() async => await Service());
  await Get.put(GetXServices());
  print('all service started');
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(), // Your Translation File

      //data binding initialization
      initialBinding: AllControllerBinding(),
      fallbackLocale: Locale(
          'en', 'US'), //default local // to get device locale Get.deviceLocale
      title: 'Binding',
      // home: getXComponent(),
      // home: InternationalizationPage(),
      // home: GetxServicePage(),
      home: GetXBindingPage(),

      /* For Reactive State Management */
    );
  }
}

class getXComponent extends StatelessWidget {
  const getXComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Route Navigation'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () async {
                  /* Route Naigation */
                  /*  Get.to(Home(),
                      // fullscreenDialog: true,
                      /* Full Screen Dialog */
                      transition: Transition.zoom,
                      duration: Duration(microseconds: 4000),
                      curve: Curves.bounceIn); */

                  /* Go to home screen but no option to return previous screen */
                  // Get.off(Home());

                  /* Go to home screen and cancel all previous screens/route */
                  // Get.offAll(Home());

                  /* Move to Next Screen With Data */

                  /* Get result data when click on go to previous button from home screen */
                  var data = await Get.to(Home());
                  print('the received data is $data');
                  Get.to(Home(), arguments: 'Data From Main Screen');

                  /* Bottom Sheet */
                  // Get.bottomSheet(
                  //     Container(
                  //       child: Wrap(
                  //         children: <Widget>[
                  //           ListTile(
                  //             leading: Icon(Icons.wb_sunny_outlined),
                  //             title: Text('Light Theme'),
                  //             onTap: () =>
                  //                 {Get.changeTheme(ThemeData.light())},
                  //           ),
                  //           ListTile(
                  //             leading: Icon(Icons.wb_sunny),
                  //             title: Text('Dark Theme'),
                  //             onTap: () =>
                  //                 {Get.changeTheme(ThemeData.dark())},
                  //           ),
                  //         ],
                  //       ),
                  //     ),

                  //     barrierColor: Colors.grey.shade100,  // Background Color when bottomsheet open
                  //     backgroundColor: Colors.black,

                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(20),
                  //         side: BorderSide(
                  //             color: Colors.white,
                  //             style: BorderStyle.solid,
                  //             width: 2.0)));

                  /* Default Dialog */
                  // Get.defaultDialog();

                  /* Custom Dialog*/
                  // Get.defaultDialog(
                  //     title: 'Custom Dialog Title',
                  //     titleStyle:
                  //         TextStyle(fontSize: 18.0, color: Colors.black45),
                  //     backgroundColor: Colors.amber,
                  //     barrierDismissible: true,
                  //     content: Column(
                  //       children: [
                  //         Text('1'),
                  //         const SizedBox(
                  //           height: 20,
                  //         ),
                  //         Text('2'),
                  //       ],
                  //     ),
                  //     textCancel: 'Cancel',
                  //     cancelTextColor: Colors.red,
                  //     textConfirm: 'Okay',
                  //     onConfirm: () {
                  //       Get.back();
                  //       Get.snackbar('Confirmed....', 'Done !');
                  //     });
                },
                child: Text('Go to Next')),
          ],
        ),
      ),
    );
  }
}
