import 'package:flutter/material.dart';
import 'package:routingexample/navigatorObserver/customNavigatorObserver.dart';
import 'package:routingexample/routes/routes.dart';
import 'package:routingexample/screens/guestLoginScreen.dart';
import 'package:routingexample/screens/homeScreen.dart';
import 'package:routingexample/screens/loginScreen.dart';
import 'package:routingexample/screens/registerScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
//     bool isDarkTheme(BuildContext context) {
//   return MediaQuery.of(context).platformBrightness == Brightness.dark;
// }
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = MediaQuery.of(context).platformBrightness == Brightness.dark;


    return MaterialApp(

      initialRoute: '/',
      routes: {
        Routes.home:(context)=> const HomeScreen(),
        Routes.loginScreen:(context)=> const LoginScreen(),
        Routes.registerScreen:(context)=> const RegisterScreen(),
        Routes.guestLoginScreen:(context)=> const GuestLoginScreen(),
      },

      navigatorObservers: [CustomNavigatorObserver()],
      debugShowCheckedModeBanner: false,
      
      // home:  HomeScreen(),
    );
  }
}

