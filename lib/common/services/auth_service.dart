import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:preview/repositories/auth_repo.dart';

class AuthService extends GetxService {
  final AuthRepo _repo;

  final Rx<User?> _rxUser;

  User? get user => _rxUser.value;

  AuthService()
      : _repo = AuthRepo(),
        _rxUser = Rx(null) {
    _repo.client.userChanges().listen(
      (value) {
        if (value == null) {
          /// Should Logout
        } else {
          _rxUser.value = value;
        }
      },
    );
  }
}
