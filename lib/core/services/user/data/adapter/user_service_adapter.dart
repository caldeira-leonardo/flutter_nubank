import '../../../../adapter.dart';
import '../../domain/entities/user_entity.dart';

class UserServiceAdapter implements Adapter<UserEntity> {
  @override
  UserEntity fromJson(Map<String, dynamic> json) {
    return UserEntity(
      amount: double.parse(json['qty_charges']),
      email: json['email'],
      hasLogin: bool.parse(json['hasLogin']),
      name: json['hasLogin'],
      uid: json['hasLogin'],
    );
  }

  @override
  List<UserEntity> fromJsonList(List<Map<String, dynamic>> jsonList) {
    // TODO: implement fromJsonList
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toJson(UserEntity entity) {
    return {
      'amount': entity.amount,
      'email': entity.email,
      'hasLogin': entity.hasLogin,
      'name': entity.name,
      'uid': entity.uid,
    };
  }
}
