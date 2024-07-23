import 'package:flutter/material.dart';
import 'package:routingexample/utils/strings.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => RegisterScreenState();
}

class RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.registerScreen),
        backgroundColor: const Color.fromARGB(255, 196, 196, 196),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: Strings.name,
                label: const Text(Strings.name),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: Strings.username,
                label: const Text(Strings.username),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: Strings.password,
                label: const Text(Strings.password),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  Strings.register,
                  style: TextStyle(),
                ))
          ],
        ),
      ),
    );
  }
}
