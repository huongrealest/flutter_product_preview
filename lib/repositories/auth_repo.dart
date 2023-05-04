import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthRepo {
  final FirebaseAuth client;

  AuthRepo() : client = FirebaseAuth.instance;


  Future login({
    required String email,
    required String password,
  }) async {
    try {
      await client.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw _handleSignError(e);
    } catch (e) {
      rethrow;
    }
  }

  String _handleSignError(FirebaseAuthException e) {
    String message = e.code;
    switch (e.code) {
      case 'wrong-password':
        message = 'Mật khẩu không chính xác';
        break;
      case 'invalid-email':
        message = 'Địa chỉ Email không không hợp lệ';
        break;
      case 'user-disabled':
        message =
            'Tài khoản đã bị vô hiệu hóa, vui lòng liên hệ nhà phát triển để biết thêm thông tin chi tiết';
        break;
      case 'user-not-found':
        message =
            'Tài khoản không tồn tại. Vui lòng đăng ký để tiếp tục sử dụng ứng dụng';
        break;
      default:
    }
    return message;
  }
}
