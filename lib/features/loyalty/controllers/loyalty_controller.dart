import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoyaltyController extends StateNotifier<int> {
  LoyaltyController() : super(0);

  void setPoints(int value) => state = value;
}

final loyaltyControllerProvider =
    StateNotifierProvider<LoyaltyController, int>((ref) => LoyaltyController());
