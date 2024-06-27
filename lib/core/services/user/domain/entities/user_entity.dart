enum UserPath { users }

class UserEntity {
  /// Expect user's name
  final String name;

  /// Expect user's email
  final String email;

  /// Expect user's uid
  final String uid;

  /// Expect if user's has made login once
  final bool hasLogin;

  /// Expect user's count amount
  final double amount;

  UserEntity({
    required this.name,
    required this.email,
    required this.uid,
    required this.hasLogin,
    required this.amount,
  });

  @override
  String toString() {
    return '''
      UserEntity(
        name: $name,
        email: $email,
        uid: $uid,
        hasLogin: $hasLogin,
        amount: $amount,
      )
    ''';
  }
}
