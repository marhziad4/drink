import 'package:admin_app_flutter/main.dart';
import 'package:admin_app_flutter/model/main_categories.dart';
import 'package:admin_app_flutter/model/product_model.dart';
import 'package:admin_app_flutter/model/subcategories_model.dart';
import 'package:admin_app_flutter/model/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FbStoreController {
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  var firebaseUser = FirebaseAuth.instance.currentUser;



  Future<bool> create(
      {required MainCategories mainCategories,
      required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .add(mainCategories.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> createSubCategories(
      {required SubCategories subCategories,
      required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .add(subCategories.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> createUser({
    required UserData userData,
    required String collectionName,
  }) async {
    return await _firebaseFirestore
        .collection("Admins")
        .doc(firebaseUser!.uid)
        .set({"ImageUrl": userData.ImageUrl, "name": userData.name})
        .then((value) => true)
        .catchError((error) => false);
  }

  // Future<String?> getUser({
  //   required String collectionName,
  // }) async {
  //   // var firebaseUser =  FirebaseAuth.instance.currentUser;
  //   return await _firebaseFirestore
  //       .collection(collectionName)
  //       .doc(firebaseUser!.uid)
  //       .get()
  //       .then((value) => UserData.fromMap(value.data()!));
  // }



  Future<bool> createProduct(
      {required Products products, required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .add(products.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> update(
      {required String path,
      required MainCategories mainCategories,
      required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .doc(path)
        .update(mainCategories.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> updateSubCategories(
      {required String path,
      required SubCategories subCategories,
      required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .doc(path)
        .update(subCategories.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> updateProducts(
      {required String path,
      required Products products,
      required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .doc(path)
        .update(products.toMap())
        .then((value) => true)
        .catchError((error) => false);
  }

  Future<bool> delete(
      {required String path, required String collectionName}) async {
    return await _firebaseFirestore
        .collection(collectionName)
        .doc(path)
        .delete()
        .then((value) => true)
        .catchError((error) => false);
  }

  Stream<QuerySnapshot> read({required String collectionName}) async* {
    yield* _firebaseFirestore.collection(collectionName).snapshots();
  }
  //
  // Future<QuerySnapshot> readDataUser({required String collectionName}) async* {
  //   yield* _firebaseFirestore.collection(collectionName).snapshots();
  // }




}
