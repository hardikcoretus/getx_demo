import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_demo/api_parsing/product_list_controller.dart';
import 'package:get/get.dart';

class ProductListPage extends StatelessWidget {
  final ProductListController productListController =
      Get.put(ProductListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GetX Api Parsing'),
        ),
        body: Obx(() {
          if (productListController.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  itemCount: productListController.productList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: CachedNetworkImage(
                                  imageUrl: productListController
                                      .productList[index].imageLink,
                                  height: 100.0,
                                  width: 100.0,
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Text((productListController
                                  .productList[index].name))
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          )
                        ],
                      ),
                    );
                  }),
            );
          }
        }));
  }
}
