// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryhard/Admin/homepageA.dart';
import 'package:tryhard/TL/homepageTL.dart';

class LaporanPenilaianA extends StatefulWidget {
  final String name;
  final String myirSc;
  final String dateWo;
  final String uid;
  final String jalurKeluarPsb;
  final String odp;
  final String redaman;
  final String pullstrap;
  final String hook;
  final String hookLong;
  final String jalurIkr;
  final String roset;
  final String jalurPatchcore;
  final String redamanOut;
  final String teknisiDenganPelanggan;
  final String rumahPelanggan;
  final String panjangDc;
  final String customerName;
  final String customerAddress;
  final String feedback;
  final String rating;
  final String nilaiPsb;
  final String nilaiOdp;
  final String nilaiRedaman;
  final String nilaiPullstrap;
  final String nilaiHook;
  final String nilaiHookLong;
  final String nilaiJalurIkr;
  final String nilaiRoset;
  final String nilaiJalurPatchcore;
  final String nilaiRedamanOut;
  final String nilaiTnP;
  final String nilaiRumahPelanggan;
  final String tlPhone;
  final String tlName;
  final String tlDate;
  final String tlFeedback;
  final String tlId;

  LaporanPenilaianA({
    required this.name,
    required this.myirSc,
    required this.dateWo,
    required this.uid,
    required this.jalurKeluarPsb,
    required this.odp,
    required this.redaman,
    required this.pullstrap,
    required this.hook,
    required this.hookLong,
    required this.jalurIkr,
    required this.roset,
    required this.jalurPatchcore,
    required this.redamanOut,
    required this.teknisiDenganPelanggan,
    required this.rumahPelanggan,
    required this.panjangDc,
    required this.customerName,
    required this.customerAddress,
    required this.feedback,
    required this.rating,
    required this.nilaiPsb,
    required this.nilaiOdp,
    required this.nilaiRedaman,
    required this.nilaiPullstrap,
    required this.nilaiHook,
    required this.nilaiHookLong,
    required this.nilaiJalurIkr,
    required this.nilaiRoset,
    required this.nilaiJalurPatchcore,
    required this.nilaiRedamanOut,
    required this.nilaiTnP,
    required this.nilaiRumahPelanggan,
    required this.tlPhone,
    required this.tlName,
    required this.tlDate,
    required this.tlFeedback,
    required this.tlId,
  });

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<LaporanPenilaianA> {
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
            height: 150,
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
                  Text("Laporan Penilaian Team Leader",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 40)),
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
            keyboardType: TextInputType.number,
            cursorColor: Colors.red,
            controller: TextEditingController(text: widget.tlPhone),
            decoration: InputDecoration(
              hintText: "Masukkan Nomor Telepon",
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
            obscureText: true,
            controller: TextEditingController(text: widget.tlName),
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Masukkan Nama Lengkap Pelanggan",
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
                    "Tanggal Penilaian",
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
            keyboardType: TextInputType.datetime,
            obscureText: true,
            controller: TextEditingController(text: widget.tlDate),
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Masukkan Tanggal Penilaian",
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
                    "Komentar / Saran",
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
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLength: 100,
            controller: TextEditingController(text: widget.tlFeedback),
            obscureText: true,
            cursorColor: Colors.red,
            decoration: InputDecoration(
              hintText: "Masukkan Komentar dari Pelanggan",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
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
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomePageA()));
          },
        ),
      ],
    )));
  }
}
