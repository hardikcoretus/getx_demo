import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dialog ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Dialog'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //Bottom Sheet
                    Get.bottomSheet(
                        Container(
                          child: Wrap(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.wb_sunny_outlined),
                                title: Text('Light Theme'),
                                onTap: () =>
                                    {Get.changeTheme(ThemeData.light())},
                              ),
                              ListTile(
                                leading: Icon(Icons.wb_sunny),
                                title: Text('Dark Theme'),
                                onTap: () =>
                                    {Get.changeTheme(ThemeData.dark())},
                              ),
                            ],
                          ),
                        ),

                        // barrierColor: Colors.grey.shade100,  // Background Color when bottomsheet open
                        // backgroundColor: Colors.black,

                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0)));

                    //Default Dialog
                    // Get.defaultDialog();

                    //Custom Dialog
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
                  child: Text('show dialog')),
            ],
          ),
        ),
      ),
    );
  }
}
