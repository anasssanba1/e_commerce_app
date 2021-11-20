import 'package:e_commerce/features/products/controllers/add_product_controller.dart';
import 'package:e_commerce/shared/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddPrductView extends StatelessWidget {
  final controller = Get.find<ProductController>();
  AddPrductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: controller.productName,
              decoration: InputDecoration(hintText: 'Name'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.productDescription,
              decoration: InputDecoration(hintText: 'desciption'),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: controller.productPrice,
              decoration: InputDecoration(hintText: 'price'),
            ),
            SizedBox(
              height: 10,
            ),
            AppButton(
              child: Text('add product'),
              color: Colors.blue,
              secondColor: Colors.lightBlue,
              onPressed: () {
                controller.addProduct();
              },
            )
          ],
        ),
      ),
    );
  }
}
