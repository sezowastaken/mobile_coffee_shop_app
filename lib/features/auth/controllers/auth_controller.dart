import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthController extends StateNotifier<bool> {
  AuthController() : super(false);

  Future<void> signIn(String email, String password) async {
    // TODO: link with AuthRepository
    state = true;
  }
}

final authControllerProvider =
    StateNotifierProvider<AuthController, bool>((ref) => AuthController());
