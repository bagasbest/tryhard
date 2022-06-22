import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tryhard/Admin/laporan7A.dart';
import 'dart:io';

import 'package:tryhard/TL/laporan7TL.dart';

class Laporan6PageA extends StatefulWidget {
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

  Laporan6PageA({
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

class InitState extends State<Laporan6PageA> {
  File? _image;

  Future getImage(ImageSource src) async {
    var image = await ImagePicker().pickImage(source: src);

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 120,
              width: 500,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                    bottomRight: Radius.circular(100)),
                image: DecorationImage(
                    image: AssetImage("assets/images/walpaper3.jpg"),
                    fit: BoxFit.cover),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, bottom: 60),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 30, left: 10),
                              child: Text("LAPORAN",
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                      color: Colors.white,
                                      fontSize: 50)),
                            )
                          ]),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Align(
                alignment: Alignment.center,
                child: Text(
                  "HOOK/SCLAMP DI RUMAH PELANGGAN (TAMPAK JAUH)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 500,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, bottom: 20, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[Image.network(widget.hookLong)],
                  ),
                ),
              )),
          const SizedBox(
            height: 10,
          ),
          Container(
              margin: const EdgeInsets.only(left: 45, right: 20, top: 5),
              child: Column(
                children: const <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Penilaian",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 18,
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
              boxShadow: const [
                BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Color(0xffEEEEEE))
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              cursorColor: Colors.red,
              controller: TextEditingController(text: widget.nilaiHookLong),
              decoration: InputDecoration(
                hintText: "Masukkan Komentar Penilaian",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(80.0),
            child: GestureDetector(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'LANJUT',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Laporan7PageA(
                              name: widget.name,
                              myirSc: widget.myirSc,
                              dateWo: widget.dateWo,
                              uid: widget.uid,
                              jalurKeluarPsb: widget.jalurKeluarPsb,
                              odp: widget.odp,
                              redaman: widget.redaman,
                              pullstrap: widget.pullstrap,
                              hook: widget.hook,
                              hookLong: widget.hookLong,
                              jalurIkr: widget.jalurIkr,
                              roset: widget.roset,
                              jalurPatchcore: widget.jalurPatchcore,
                              redamanOut: widget.redamanOut,
                              teknisiDenganPelanggan:
                                  widget.teknisiDenganPelanggan,
                              rumahPelanggan: widget.rumahPelanggan,
                              panjangDc: widget.panjangDc,
                              customerName: widget.customerName,
                              customerAddress: widget.customerAddress,
                              feedback: widget.feedback,
                              rating: widget.rating,
                              nilaiPsb: widget.nilaiPsb,
                              nilaiOdp: widget.nilaiOdp,
                              nilaiRedaman: widget.nilaiRedaman,
                              nilaiPullstrap: widget.nilaiPullstrap,
                              nilaiHook: widget.nilaiHook,
                              nilaiHookLong: widget.nilaiHookLong,
                              nilaiJalurIkr: widget.nilaiJalurIkr,
                              nilaiRoset: widget.nilaiRoset,
                              nilaiJalurPatchcore: widget.nilaiJalurPatchcore,
                              nilaiRedamanOut: widget.nilaiRedamanOut,
                              nilaiTnP: widget.nilaiTnP,
                              nilaiRumahPelanggan: widget.nilaiRumahPelanggan,
                              tlPhone: widget.tlPhone,
                              tlName: widget.tlName,
                              tlDate: widget.tlDate,
                              tlFeedback: widget.tlFeedback,
                              tlId: widget.tlId,
                            )));
              },
            ),
          ),
        ],
      ),
    )));
  }
}
