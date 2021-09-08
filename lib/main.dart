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
      title: 'SnackBar',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Snackbar'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                        'Snackbar Title', 'this is the snackbar from get',
                        snackPosition: SnackPosition.BOTTOM,
                        titleText: Text('Ttitle Text',
                            style: TextStyle(color: Colors.white)),
                        messageText: Text(
                          'This is widget Text',
                          style: TextStyle(color: Colors.white),
                        ),
                        colorText: Colors.red,
                        backgroundColor: Colors.black,
                        margin: EdgeInsets.all(20),
                        animationDuration: Duration(milliseconds: 300),
                        isDismissible: true,
                        dismissDirection: SnackDismissDirection.HORIZONTAL,
                        borderRadius: 20,
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        shouldIconPulse: false,
                        mainButton: TextButton(
                          onPressed: () {},
                          child: Text('Retry'),
                        ));
                  },
                  child: Text('show snackbar')),,
                  
            ],
          ),
        ),
      ),
    );
  }
}
