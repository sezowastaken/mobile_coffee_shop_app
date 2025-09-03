import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../src/constants/app_sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(title: const Text('Giriş')),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.md),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passController,
              decoration: const InputDecoration(labelText: 'Şifre'),
              obscureText: true,
            ),
            const SizedBox(height: AppSizes.lg),
            ElevatedButton(
              onPressed: () => context.go('/points'),
              child: const Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
