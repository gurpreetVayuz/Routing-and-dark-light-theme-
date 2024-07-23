import 'package:flutter/material.dart';
import 'package:routingexample/routes/routes.dart';
import 'package:routingexample/utils/strings.dart';

class GuestLoginScreen extends StatefulWidget {
  const GuestLoginScreen({super.key});

  @override
  State<GuestLoginScreen> createState() => GuestLoginState();
}

class GuestLoginState extends State<GuestLoginScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isDarkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Strings.guestScreen,
          style: TextStyle(
              color: isDarkTheme
                  ? const Color.fromARGB(255, 223, 223, 223)
                  : const Color.fromARGB(255, 38, 38, 38)),
        ),
        backgroundColor: isDarkTheme
            ? Color.fromARGB(255, 41, 39, 35)
            : Color.fromARGB(255, 219, 228, 164),
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
                hintText: Strings.guestName,
                label: const Text(Strings.guestName),
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
                    backgroundColor: isDarkTheme ? const Color.fromARGB(255, 47, 41, 25) : Color.fromARGB(255, 237, 209, 126)),
                onPressed: () {
                  Navigator.popAndPushNamed(context, Routes.home);
                },
                child:  Text(
                  Strings.register,
                  style: TextStyle(color: isDarkTheme? const Color.fromARGB(255, 230, 214, 166):const Color.fromARGB(255, 45, 41, 29)),
                ))
          ],
        ),
      ),
    );
  }
}
