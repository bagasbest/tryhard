import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryhard/homepage.dart';

import '../database/data.dart';
import 'homepage.dart';

class UbahProfilPage extends StatefulWidget {
  final String name;
  final String region;
  final String datel;
  final String witel;

  UbahProfilPage({
    required this.name,
    required this.region,
    required this.datel,
    required this.witel,
  });

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<UbahProfilPage> {
  final _nameController = TextEditingController();
  final _regionController = TextEditingController();
  final _datelController = TextEditingController();
  final _witelController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.name;
    _regionController.text = widget.region;
    _datelController.text = widget.datel;
    _witelController.text = widget.witel;

    setState(() {});
  }

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
            height: 120,
            width: 500,
            decoration: const BoxDecoration(
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
                  Text("PROFILE",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 53)),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
            margin: const EdgeInsets.only(left: 45, right: 20, top: 5),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nama Lengkap",
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
          margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE))
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            controller: _nameController,
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Masukkan Nama Lengkap",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            margin: const EdgeInsets.only(left: 45, right: 20, top: 5),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Regional",
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
          margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE))
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            controller: _regionController,
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Masukkan Regional",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            margin: const EdgeInsets.only(left: 45, right: 20, top: 5),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Witel",
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
          margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE))
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            cursorColor: Colors.red,
            controller: _witelController,
            decoration: InputDecoration(
              hintText: "Masukkan Witel",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
            margin: const EdgeInsets.only(left: 45, right: 20, top: 5),
            child: Column(
              children: const <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Datel",
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
          margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[200],
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              const BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: Color(0xffEEEEEE))
            ],
          ),
          alignment: Alignment.center,
          child: TextField(
            cursorColor: Colors.red,
            controller: _datelController,
            decoration: InputDecoration(
              hintText: "Masukkan Datel",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
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
                'SIMPAN',
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
            await Data.updateUserData(
              _nameController.text,
              _regionController.text,
              _datelController.text,
              _witelController.text,
              'teknisi',
            );

            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => const HomePage()),
                (Route<dynamic> route) => false);
          },
        ),
      ],
    )));
  }
}
