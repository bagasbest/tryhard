import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryhard/Admin/loginA.dart';
import 'package:tryhard/Admin/regisA.dart';
import 'package:tryhard/TL/loginTL.dart';
import 'package:tryhard/TL/regisTL.dart';

class LogRegA extends StatefulWidget {
  const LogRegA({Key? key}) : super(key: key);

  @override
  State<LogRegA> createState() => _TheBegining();
}

class _TheBegining extends State<LogRegA> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: <Widget>[
          Image(
            image: const AssetImage("assets/images/walpaper.png"),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
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
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginA()));
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          'DAFTAR',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 30),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegisterPageA()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
