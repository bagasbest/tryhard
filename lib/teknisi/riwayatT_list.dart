import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tryhard/TL/laporan1TL.dart';

import '../Admin/laporan1A.dart';

class RiwayatTList extends StatelessWidget {
  final List<DocumentSnapshot> document;
  final String role;

  RiwayatTList({required this.role, required this.document});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: document.length,
      itemBuilder: (BuildContext context, int i) {
        String date = document[i]['dateWo'].toString();
        String myirSc = document[i]['myirSc'].toString();
        String uid = document[i]['uid'].toString();
        String name = document[i]['name'].toString();
        String jalurKeluarPsb = document[i]['jalurKeluarPsb'].toString();
        String odp = document[i]['odp'].toString();
        String redaman = document[i]['redaman'].toString();
        String pullstrap = document[i]['pullstrap'].toString();
        String hook = document[i]['hook'].toString();
        String hookLong = document[i]['hookLong'].toString();
        String jalurIkr = document[i]['jalurIkr'].toString();
        String roset = document[i]['roset'].toString();
        String jalurPatchcore = document[i]['jalurPatchcore'].toString();
        String redamanOut = document[i]['redamanOut'].toString();
        String teknisiDenganPelanggan =
            document[i]['teknisiDenganPelanggan'].toString();
        String rumahPelanggan = document[i]['rumahPelanggan'].toString();
        String panjangDc = document[i]['panjangDc'].toString();
        String customerName = document[i]['customerName'].toString();
        String customerAddress = document[i]['customerAddress'].toString();
        String feedback = document[i]['feedback'].toString();
        String rating = document[i]['rating'].toString();
        String nilaiPsb = document[i]['nilaiPsb'].toString();
        String nilaiOdp = document[i]['nilaiOdp'].toString();
        String nilaiRedaman = document[i]['nilaiRedaman'].toString();
        String nilaiPullstrap = document[i]['nilaiPullstrap'].toString();
        String nilaiHook = document[i]['nilaiHook'].toString();
        String nilaiHookLong = document[i]['nilaiHookLong'].toString();
        String nilaiJalurIkr = document[i]['nilaiJalurIkr'].toString();
        String nilaiRoset = document[i]['nilaiRoset'].toString();
        String nilaiJalurPatchcore =
            document[i]['nilaiJalurPatchcore'].toString();
        String nilaiRedamanOut = document[i]['nilaiRedamanOut'].toString();
        String nilaiTnP = document[i]['nilaiTnP'].toString();
        String nilaiRumahPelanggan =
            document[i]['nilaiRumahPelanggan'].toString();
        String tlPhone = document[i]['tlPhone'].toString();
        String tlName = document[i]['tlName'].toString();
        String tlDate = document[i]['tlDate'].toString();
        String tlFeedback = document[i]['tlFeedback'].toString();
        String tlId = document[i]['tlId'].toString();

        return InkWell(
          onTap: () {
            if (role == 'team leader') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LaporanPageTL(
                            name: name,
                            myirSc: myirSc,
                            dateWo: date,
                            uid: uid,
                            jalurKeluarPsb: jalurKeluarPsb,
                            odp: odp,
                            redaman: redaman,
                            pullstrap: pullstrap,
                            hook: hook,
                            hookLong: hookLong,
                            jalurIkr: jalurIkr,
                            roset: roset,
                            jalurPatchcore: jalurPatchcore,
                            redamanOut: redamanOut,
                            teknisiDenganPelanggan: teknisiDenganPelanggan,
                            rumahPelanggan: rumahPelanggan,
                            panjangDc: panjangDc,
                            customerName: customerName,
                            customerAddress: customerAddress,
                            feedback: feedback,
                            rating: rating,
                            nilaiPsb: nilaiPsb,
                            nilaiOdp: nilaiOdp,
                            nilaiRedaman: nilaiRedaman,
                            nilaiPullstrap: nilaiPullstrap,
                            nilaiHook: nilaiHook,
                            nilaiHookLong: nilaiHookLong,
                            nilaiJalurIkr: nilaiJalurIkr,
                            nilaiRoset: nilaiRoset,
                            nilaiJalurPatchcore: nilaiJalurPatchcore,
                            nilaiRedamanOut: nilaiRedamanOut,
                            nilaiTnP: nilaiTnP,
                            nilaiRumahPelanggan: nilaiRumahPelanggan,
                            tlPhone: tlPhone,
                            tlName: tlName,
                            tlDate: tlDate,
                            tlFeedback: tlFeedback,
                            tlId: tlId,
                          )));
            } else if (role == 'admin') {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LaporanPageA(
                            name: name,
                            myirSc: myirSc,
                            dateWo: date,
                            uid: uid,
                            jalurKeluarPsb: jalurKeluarPsb,
                            odp: odp,
                            redaman: redaman,
                            pullstrap: pullstrap,
                            hook: hook,
                            hookLong: hookLong,
                            jalurIkr: jalurIkr,
                            roset: roset,
                            jalurPatchcore: jalurPatchcore,
                            redamanOut: redamanOut,
                            teknisiDenganPelanggan: teknisiDenganPelanggan,
                            rumahPelanggan: rumahPelanggan,
                            panjangDc: panjangDc,
                            customerName: customerName,
                            customerAddress: customerAddress,
                            feedback: feedback,
                            rating: rating,
                            nilaiPsb: nilaiPsb,
                            nilaiOdp: nilaiOdp,
                            nilaiRedaman: nilaiRedaman,
                            nilaiPullstrap: nilaiPullstrap,
                            nilaiHook: nilaiHook,
                            nilaiHookLong: nilaiHookLong,
                            nilaiJalurIkr: nilaiJalurIkr,
                            nilaiRoset: nilaiRoset,
                            nilaiJalurPatchcore: nilaiJalurPatchcore,
                            nilaiRedamanOut: nilaiRedamanOut,
                            nilaiTnP: nilaiTnP,
                            nilaiRumahPelanggan: nilaiRumahPelanggan,
                            tlPhone: tlPhone,
                            tlName: tlName,
                            tlDate: tlDate,
                            tlFeedback: tlFeedback,
                            tlId: tlId,
                          )));
            }
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              height: 100,
              color: Colors.white,
              child: Stack(children: <Widget>[
                Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Text(
                                          date,
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.normal,
                                              fontStyle: FontStyle.italic,
                                              color: Colors.red,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "MYIR/SC: $myirSc",
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontStyle: FontStyle.normal,
                                              color: Colors.red,
                                              fontSize: 20),
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          ],
                        ))),
              ]),
            ),
          ),
        );
      },
    );
  }
}
