import 'package:flutter/material.dart';
import 'package:magnolia/Setting/setting.dart';


import 'Custom/Color.dart';
import 'Screens/NavigationDrawer/bottomNavigation.dart';
import 'Screens/Presplash/presplash.dart';
import 'Screens/Registration/signin.dart';
import 'Screens/Registration/signup.dart';
import 'Screens/Splash/splash.dart';
import 'Screens/calendarScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magnolia',
      theme: ThemeData(

      ),
      home: SettingPage(),
      routes: {
        SignIn.route: (context) => SignIn(),
        SignUp.route: (context) => SignUp(),
        PreSplash.route: (context) => PreSplash(),
        Splash.route: (context) => Splash(),
        CustomBottomNavigationBar.route: (context) =>
            CustomBottomNavigationBar(),
      },
    );
  }
}
