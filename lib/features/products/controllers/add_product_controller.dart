import 'package:e_commerce/features/products/modules/product.dart';
import 'package:e_commerce/services/firebase/database_serivce.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final prodcontroller = Get.put<DataBase>(DataBase());
  final controller = Get.find<DataBase>();
  final productName = TextEditingController();
  final productPrice = TextEditingController();
  final productDescription = TextEditingController();
  void addProduct() => controller.addProductToDatabase(
        Product(
          name: productName.text,
          price: double.parse(productPrice.text),
          description: productDescription.text,
          image: '',
          review: 3,
        ),
      );
}
