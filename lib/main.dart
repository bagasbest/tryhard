import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tryhard/TL/homepageTL.dart';
import 'package:tryhard/teknisi/homepage.dart';
import 'package:tryhard/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Admin/homepageA.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SharedPreferences pref = await SharedPreferences.getInstance();

  String role = pref.getString('role') ?? '';
  if (role != '' && role == 'admin') {
    runApp(AdminApp());
  } else if (role != '' && role == 'team leader') {
    runApp(TeamLeaderApp());
  } else if (role != '' && role == 'teknisi') {
    runApp(Teknisi());
  } else {
    runApp(MyApp());
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserDashboard(),
    );
  }
}

class AdminApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageA(),
    );
  }
}

class TeamLeaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageTL(),
    );
  }
}

class Teknisi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
