import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Реєстрація")),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.app_registration, size: 60, color: Colors.green),
              const SizedBox(height: 20),

              const TextField(
                decoration: InputDecoration(labelText: "Ім'я користувача"),
              ),
              const SizedBox(height: 16),

              const TextField(
                decoration: InputDecoration(labelText: 'Логін'),
              ),
              const SizedBox(height: 16),

              const TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'Пароль'),
              ),
              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Реєстрація успішна!')),
                    );
                    Navigator.pop(context);
                  },
                  child: const Text('Зареєструватися'),
                ),
              ),
              const SizedBox(height: 10),

              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Вже є акаунт? Увійти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}