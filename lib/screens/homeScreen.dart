import 'package:flutter/material.dart';
import 'package:routingexample/main.dart';
import 'package:routingexample/routes/routes.dart';
import 'package:routingexample/utils/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  // void initState() {
  // TODO: implement initState
  //   super.initState();
  //   isDarkTheme(context);
  // }

  // bool isDarkTheme(BuildContext context) {
  //   return MediaQuery.of(context).platformBrightness == Brightness.dark;
  // }

  @override
  Widget build(BuildContext context) {
    final isDarkTheme =
        MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDarkTheme
          ? const Color.fromARGB(255, 81, 81, 81)
          : const Color.fromARGB(255, 216, 216, 216),
      appBar: AppBar(
        title: Text(
          Strings.homeScreen,
          style: TextStyle(
              color: isDarkTheme
                  ? const Color.fromARGB(255, 223, 223, 223)
                  : const Color.fromARGB(255, 58, 58, 58)),
        ),
        backgroundColor: isDarkTheme
            ? const Color.fromARGB(255, 56, 56, 56)
            : const Color.fromARGB(255, 196, 196, 196),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(bottom: 100, top: 28, right: 28, left: 28),
          child: Card(
            elevation: 5,
            color: isDarkTheme
                ? const Color.fromARGB(255, 26, 37, 42)
                : const Color.fromARGB(255, 192, 218, 231),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                  child: Text(
                    Strings.homeScreen,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: isDarkTheme
                            ? const Color.fromARGB(255, 206, 206, 206)
                            : const Color.fromARGB(255, 88, 88, 88)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    Strings.descInfo,
                    style: TextStyle(
                        color: isDarkTheme
                            ? const Color.fromARGB(255, 238, 238, 238)
                            : const Color.fromARGB(255, 88, 88, 88)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: isDarkTheme
                            ? const Color.fromARGB(255, 66, 60, 63)
                            : const Color.fromARGB(255, 255, 234, 243)),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.loginScreen);
                    },
                    child: Text(
                      Strings.navigateToLoginScreen,
                      style: TextStyle(
                          color: isDarkTheme
                              ? const Color.fromARGB(255, 206, 206, 206)
                              : const Color.fromARGB(255, 88, 88, 88)),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: isDarkTheme
                            ? const Color.fromARGB(255, 66, 60, 63)
                            : const Color.fromARGB(255, 255, 234, 243)),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.registerScreen);
                    },
                    child:  Text(
                      Strings.navigateToRegisterScreen,
                      style: TextStyle(color: isDarkTheme
                              ? const Color.fromARGB(255, 206, 206, 206)
                              : const Color.fromARGB(255, 88, 88, 88)),
                    )),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: isDarkTheme
                            ? const Color.fromARGB(255, 66, 60, 63)
                            : const Color.fromARGB(255, 255, 234, 243)),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.guestLoginScreen);
                    },
                    child:  Text(
                      Strings.navigateToGuestLoginScreen,
                      style: TextStyle(color: isDarkTheme
                              ? const Color.fromARGB(255, 206, 206, 206)
                              : const Color.fromARGB(255, 88, 88, 88)),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
