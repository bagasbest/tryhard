import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/rendering.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tryhard/Admin/loginA.dart';
import 'package:tryhard/database/authentication.dart';

import 'homepage.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        Center(
          child: Container(
            height: 170,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80)),
              image: DecorationImage(
                  image: AssetImage("assets/images/walpaper3.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text("LOG IN TEKNISI",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 53)),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Container(
            margin: EdgeInsets.only(left: 45, right: 20, top: 5),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nomor Telepon",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 5),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE))
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            keyboardType: TextInputType.number,
            cursorColor: Colors.red,
            controller: _phoneController,
            decoration: InputDecoration(
              hintText: "Masukkan Nomor Telepon",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
            margin: EdgeInsets.only(left: 45, right: 20, top: 5),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 5),
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE))
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            controller: _passwordController,
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Masukkan Password",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),

        /// LOADING INDIKATOR
        Visibility(
          visible: _visible,
          child: const SpinKitRipple(
            color: Colors.red,
          ),
        ),

        const SizedBox(
          height: 40,
        ),
        GestureDetector(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'MASUK',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.red),
          ),
          onTap: () async {
            if (_phoneController.text.isNotEmpty &&
                _passwordController.text.isNotEmpty) {
              setState(() {
                _visible = true;
              });
              bool isLoginSuccess = await Authentication.login(
                _phoneController.text,
                _passwordController.text,
                'teknisi',
              );

              setState(() {
                _visible = false;
              });

              if (isLoginSuccess) {
                SharedPreferences pref = await SharedPreferences.getInstance();
                await pref.setString('role', 'teknisi');

                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              }
            } else {
              toast('No.Handphone & Kata Sandi tidak boleh kosong');
            }
          },
        ),
      ],
    )));
  }
}
