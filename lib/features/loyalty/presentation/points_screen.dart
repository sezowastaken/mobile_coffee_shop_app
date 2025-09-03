import 'package:flutter/material.dart';

import '../../../src/constants/app_sizes.dart';

class PointsScreen extends StatelessWidget {
  const PointsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Puanlarım')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('120'),
            const SizedBox(height: AppSizes.lg),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Ödül Kullan'),
            ),
          ],
        ),
      ),
    );
  }
}
