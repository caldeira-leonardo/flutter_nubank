import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'domain/entities/user_entity.dart';

class UserService extends ChangeNotifier {
  //usar dentro da função alterando o path corretamente \/
  final userDocRef = FirebaseFirestore.instance.doc(UserPath.users.name);
  final userCollectionRef =
      FirebaseFirestore.instance.collection(UserPath.users.name);

  void createUser(String userId) {
    // userCollectionRef.add(
    //   UserEntity(
    //       name: 'Leonardo Caldeira',
    //       email: 'teste@teste.com',
    //       uid: 'uT0TrH5LyuMq02TWU0NttcS4jNo2',
    //       hasLogin: false,
    //       amount: 0),
    // );
  }
}
