import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Відновлення доступу")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.lock_reset, size: 60, color: Colors.orange),
            const SizedBox(height: 20),

            const Text(
              "Введіть ваш логін або E-mail, і ми надішлемо інструкції.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Логін або E-mail',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Інструкції надіслано!')),
                  );
                  Navigator.pop(context);
                },
                child: const Text('Скинути пароль'),
              ),
            ),
            const SizedBox(height: 10),

            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Повернутися до входу'),
            ),
          ],
        ),
      ),
    );
  }
}