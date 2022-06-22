import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:tryhard/teknisi/reviewT.dart';

import '../Admin/loginA.dart';

class Laporan12Page extends StatefulWidget {
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

  Laporan12Page({
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
  });

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<Laporan12Page> {
  File? _image;
  final _panjangDc = TextEditingController();

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
                            const Padding(
                              padding: EdgeInsets.only(left: 20, bottom: 60),
                              child: const Icon(
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
          const SizedBox(
            height: 20,
          ),
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "RUMAH PELANGGAN TAMPAK DEPAN",
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
                      offset: const Offset(0, 3), // changes position of shadow
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
                    children: <Widget>[
                      // ignore: unnecessary_null_comparison
                      _image == null
                          ? IconButton(
                              icon: const Icon(Icons.add_a_photo),
                              onPressed: () {
                                //getImage();
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return SimpleDialog(
                                        title: const Text("Camera/Galery"),
                                        children: <Widget>[
                                          SimpleDialogOption(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                              getImage(ImageSource.gallery);
                                            },
                                            child:
                                                const Text("Pick From Gallery"),
                                          ),
                                          SimpleDialogOption(
                                            onPressed: () async {
                                              Navigator.pop(context);
                                              getImage(ImageSource.camera);
                                            },
                                            child:
                                                const Text("Pick From Camera"),
                                          )
                                        ],
                                      );
                                    });
                              },
                            )
                          : Image.file(_image!)
                    ],
                  ),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              margin: const EdgeInsets.only(left: 30, right: 20, top: 5),
              child: Column(
                children: <Widget>[
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "PANJANG PENGGUNAAN DC DARI ODP KE RUMAH PELANGGAN",
                      style: const TextStyle(
                        color: Colors.black,
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
              boxShadow: [
                const BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: const Color(0xffEEEEEE))
              ],
            ),
            alignment: Alignment.center,
            child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.red,
              controller: _panjangDc,
              decoration: const InputDecoration(
                hintText: "Masukkan Panjangnya",
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
            ),
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
                if (_image != null && _panjangDc.text.isNotEmpty) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ReviewPage(
                                name: widget.name,
                                myirSc: widget.myirSc,
                                dateWo: widget.dateWo,
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
                                rumahPelanggan: _image!,
                                panjangDc: _panjangDc.text,
                              )));
                } else {
                  toast('Semua kolom wajib diisi');
                }
              },
            ),
          ),
        ],
      ),
    )));
  }
}
