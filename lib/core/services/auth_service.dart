// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../app/modules/modules.dart';
import '../../app/shared/validators/navigator_helper.dart';
import 'user/user_service.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;
  bool isLoading = true;

  AuthService() {
    _authCheck();
  }

  void _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      _user = user;
      isLoading = false;
      notifyListeners();
    });
  }

  void _getUser() {
    _user = _auth.currentUser;

    notifyListeners();
  }

  Future<void> forgotPassword({required String email}) async {
    await _auth.sendPasswordResetEmail(
      email: email,
    );
  }

  Future<String> registrar({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      var userId = _auth.currentUser?.uid ?? '';

      log(userId, name: 'userId');
      if (userId.isNotEmpty) UserService().createUser(userId: userId);

      _getUser();
      return 'Success';
    } on FirebaseAuthException catch (err) {
      return handleAuthException(err);
    }
  }

  String handleAuthException(FirebaseAuthException err) {
    switch (err.code) {
      case 'invalid-credential':
        return 'Credneciais invalidas';
      case 'email-already-in-use':
        return 'Email já em uso';
      default:
        return '';
    }
  }

  Future<String> login({
    required String email,
    required String password,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      _getUser();

      return 'Success';
    } on FirebaseAuthException catch (err) {
      log(err.code, name: 'FirebaseAuthException');

      return handleAuthException(err);
    }
  }

  void logout() async {
    await _auth.signOut();
    _getUser();

    NavigatorHelper.navigate(AuthRouteNames.login.fullpath);
  }

  User? get user => _user;
}
