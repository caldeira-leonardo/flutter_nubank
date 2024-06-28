import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'data/adapter/user_service_adapter.dart';
import 'domain/entities/user_entity.dart';

class UserService extends ChangeNotifier {
  //usar dentro da função alterando o path corretamente \/
  final userCollectionRef =
      FirebaseFirestore.instance.collection(UserPath.users.name);

  final userServiceAdapter = UserServiceAdapter();

  void createUser({String userId = 'uT0TrH5LyuMq02TWU0NttcS4jNo2'}) async {
    final userEntity = UserEntity(
      name: 'Leonardo Caldeira',
      email: 'teste@teste.com',
      uid: userId,
      hasLogin: false,
      amount: 0,
    );

    final dataToSend = userServiceAdapter.toJson(userEntity);
    userCollectionRef.add(dataToSend);
  }
}
