import 'package:flutter/material.dart';
import 'package:routingexample/utils/strings.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isDarkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.loginScreen,
          style: TextStyle(
              color: isDarkTheme
                  ? const Color.fromARGB(255, 224, 224, 224)
                  : const Color.fromARGB(255, 52, 52, 52)),
        ),
        backgroundColor: isDarkTheme
            ? Color.fromARGB(255, 44, 44, 44)
            : const Color.fromARGB(255, 196, 196, 196),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: isDarkTheme
                          ? const Color.fromARGB(255, 226, 226, 226)
                          : const Color.fromARGB(255, 20, 20, 20),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: Strings.username,
                label: Text(Strings.username),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: isDarkTheme
                          ? const Color.fromARGB(255, 226, 226, 226)
                          : const Color.fromARGB(255, 20, 20, 20),
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
                    borderSide: BorderSide(
                      color: isDarkTheme
                          ? const Color.fromARGB(255, 226, 226, 226)
                          : const Color.fromARGB(255, 20, 20, 20),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: Strings.password,
                label: const Text(Strings.password),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: isDarkTheme
                          ? const Color.fromARGB(255, 226, 226, 226)
                          : const Color.fromARGB(255, 20, 20, 20),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: isDarkTheme ? Color.fromARGB(255, 65, 59, 40) : const Color.fromARGB(255, 225, 199, 122)),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  Strings.submit,
                  style: TextStyle(
                      color: isDarkTheme
                          ? const Color.fromARGB(255, 226, 226, 226)
                          : const Color.fromARGB(255, 46, 46, 46)),
                ))
          ],
        ),
      ),
    );
  }
}
