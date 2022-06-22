import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryhard/database/data.dart';
import 'package:tryhard/homepage.dart';

import '../Admin/loginA.dart';
import 'homepage.dart';

class ReviewPage extends StatefulWidget {
  final String name;
  final String myirSc;
  final String dateWo;
  final File jalurKeluarPsb;
  final File odp;
  final File redaman;
  final File pullstrap;
  final File hook;
  final File hookLong;
  final File jalurIkr;
  final File roset;
  final File jalurPatchcore;
  final File redamanOut;
  final File teknisiDenganPelanggan;
  final File rumahPelanggan;
  final String panjangDc;

  ReviewPage({
    required this.name,
    required this.myirSc,
    required this.dateWo,
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
  });

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<ReviewPage> {
  double? _ratingValue;

  final _customerName = TextEditingController();
  final _customeraddress = TextEditingController();
  final _feedBack = TextEditingController();
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
                  Text("MOHON ISI ULASAN",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50)),
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
                    "MYIR / SC (Diisi Teknisi)",
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
            controller: TextEditingController(text: widget.myirSc),
            decoration: InputDecoration(
              hintText: "Masukkan MYIR /SC",
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
            cursorColor: Colors.red,
            controller: _customerName,
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
                    "Alamat Rumah",
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
            controller: _customeraddress,
            decoration: InputDecoration(
              hintText: "Masukkan Alamat Rumah Pelanggan",
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        RatingBar(
            initialRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: Colors.orange),
                half: const Icon(
                  Icons.star_border,
                  color: Colors.orange,
                ),
                empty: const Icon(
                  Icons.star_outline,
                  color: Colors.orange,
                )),
            onRatingUpdate: (value) {
              setState(() {
                _ratingValue = value;
              });
            }),
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
            maxLines: null,
            controller: _feedBack,
            cursorColor: Colors.red,
            decoration: const InputDecoration(
              hintText: "Masukkan Komentar dari Pelanggan",
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
          onTap: () async {
            if (_customerName.text.isNotEmpty &&
                _customeraddress.text.isNotEmpty &&
                _feedBack.text.isNotEmpty &&
                _ratingValue != null) {
              setState(() {
                _visible = true;
              });

              ///upload

              String? jalurKeluarPsb = await Data.uploadImage(
                  widget.jalurKeluarPsb, 'jalurKeluarPsb');
              String? odp = await Data.uploadImage(widget.odp, 'odp');
              String? redaman =
                  await Data.uploadImage(widget.redaman, 'redaman');
              String? pullstrap =
                  await Data.uploadImage(widget.pullstrap, 'pullstrap');
              String? hook = await Data.uploadImage(widget.hook, 'hook');
              String? hookLong =
                  await Data.uploadImage(widget.hookLong, 'hookLong');
              String? jalurIkr =
                  await Data.uploadImage(widget.jalurIkr, 'jalurIkr');
              String? roset = await Data.uploadImage(widget.roset, 'roset');
              String? jalurPatchcore = await Data.uploadImage(
                  widget.jalurPatchcore, 'jalurPatchcore');
              String? redamanOut =
                  await Data.uploadImage(widget.redamanOut, 'redamanOut');
              String? teknisiDenganPelanggan = await Data.uploadImage(
                  widget.teknisiDenganPelanggan, 'teknisiDenganPelanggan');
              String? rumahPelanggan = await Data.uploadImage(
                  widget.rumahPelanggan, 'rumahPelanggan');

              String userId = FirebaseAuth.instance.currentUser!.uid;
              Data.uploadReport(
                  userId,
                  widget.name,
                  widget.myirSc,
                  widget.dateWo,
                  jalurKeluarPsb,
                  odp,
                  redaman,
                  pullstrap,
                  hook,
                  hookLong,
                  jalurIkr,
                  roset,
                  jalurPatchcore,
                  redamanOut,
                  teknisiDenganPelanggan,
                  rumahPelanggan,
                  widget.panjangDc,
                  _customerName.text,
                  _customeraddress.text,
                  _feedBack.text,
                  _ratingValue.toString());

              setState(() {
                _visible = false;
              });

              _showSuccessUpload();
            } else {
              toast('Semua kolom wajib diisi');
            }
          },
        ),
      ],
    )));
  }

  _showSuccessUpload() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          backgroundColor: Colors.red,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Center(
                child: Text(
                  'Sukses Membuat Laporan',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: const Divider(
                  color: Colors.white,
                  height: 3,
                  thickness: 3,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Anda berhasil membuat laporan, selanjutnya team leader akan menilai laporan anda',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Container(
                  width: 250,
                  height: 50,
                  child: const Center(
                    child: Text(
                      "OKE",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ],
          ),
          elevation: 10,
        );
      },
    );
  }
}
