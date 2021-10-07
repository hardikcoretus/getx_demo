import 'package:flutter_getx_demo/api_parsing/api_services.dart';
import 'package:flutter_getx_demo/api_parsing/product_model.dart';
import 'package:get/get.dart';

class ProductListController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiServices.fetchProducts();
      if (products != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
