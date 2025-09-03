import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../data/models/user_model.dart';

class ProfileController extends StateNotifier<UserModel?> {
  ProfileController() : super(null);

  void setUser(UserModel user) => state = user;
}

final profileControllerProvider = StateNotifierProvider<ProfileController,
    UserModel?>((ref) => ProfileController());
