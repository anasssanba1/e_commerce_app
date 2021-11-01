import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/authentication/modules/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class DataBase {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
 final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  Future<void> addUsertoDatabase(UserModule user) async {
    await users.doc(user.userId).set({
      'userId': user.userId,
      'userName': user.userName,
      'userEmail': user.userEmail,
    });
  }
}
