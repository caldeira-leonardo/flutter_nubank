// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthException implements Exception {
  String message;
  AuthException(this.message);
}

class AuthService extends ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? usuario;
  bool isLoading = true;

  AuthService() {
    _authCheck();
  }

  void _authCheck() {
    _auth.authStateChanges().listen((User? user) {
      usuario = user;
      isLoading = false;
      notifyListeners();
    });
  }

  void _getUser() {
    usuario = _auth.currentUser;
    notifyListeners();
  }

  void registrar({required String email, required String password}) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      _getUser();
    } on FirebaseAuthException catch (err) {
      log(err.code);
      if (err.code == 'weak') {
        throw AuthException('Senha fraca');
      }
    }
  }

  void login({required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      _getUser();
    } on FirebaseAuthException catch (err) {
      log(err.code);
      if (err.code == 'weak') {
        throw AuthException('Senha fraca');
      }
    }
  }

  void logout() async {
    await _auth.signOut();
    _getUser();
  }
}
