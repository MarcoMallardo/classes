import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//context.go('/home')

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const String correctEmail = 'Marco@gmail.com';
  static const String correctPassword = 'Marco123';
  TextEditingController nameInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                controller: nameInput,
                decoration: InputDecoration(
                  hintText: 'Ingrese su nombre',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                controller: emailInput,
                decoration: InputDecoration(
                  hintText: 'Ingrese su correo',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.alternate_email),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: TextField(
                controller: passwordInput,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Ingrese su contraseña',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.password),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Builder(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: () { 
                      String name = nameInput.text;
                      String email = emailInput.text;
                      String pass = passwordInput.text;
                      String message;

                      if (email.isEmpty || pass.isEmpty) {
                        message = 'Ingrese su mail y contraseña';
                      } else if (email != correctEmail || pass != correctPassword) {
                        message = 'Correo o contraseña incorrectos';
                      } else if (name.isEmpty) {
                        message = 'Ingrese su nombre';
                      } else {
                        message = 'Inicio de sesión exitoso';
                        context.go('/home', extra: name);
                      }

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(message)),
                      );
                    },
                    child: Text('Confirmar'),
                  );
                },
              ),
            ),
          ],
        ),
    );
  }
}