import 'package:flutter_riverpod/flutter_riverpod.dart';

class MenuController extends StateNotifier<List<Map<String, dynamic>>> {
  MenuController() : super(const []);

  void setMenu(List<Map<String, dynamic>> items) => state = items;
}

final menuControllerProvider = StateNotifierProvider<MenuController,
    List<Map<String, dynamic>>>((ref) => MenuController());
