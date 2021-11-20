import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/constants/app_image_path.dart';
import 'package:e_commerce/features/authentication/modules/user.dart';
import 'package:e_commerce/features/products/modules/product.dart';

class DataBase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference _users =
      FirebaseFirestore.instance.collection('users');
  final CollectionReference _products =
      FirebaseFirestore.instance.collection('products');
  Future<void> addUsertoDatabase(UserModule user) async {
    await _users.doc(user.userId).set({
      'userId': user.userId,
      'userName': user.userName,
      'userEmail': user.userEmail,
      'userImage': user.userImage ?? Imagespath.userIcon,
    });
  }

  Future<void> addProductToDatabase(Product product) async {
    await _products.add({
      'productName': product.name,
      'productDescription': product.description,
      'productPrice': product.price,
    });
  }

  CollectionReference get users => _users;
}
