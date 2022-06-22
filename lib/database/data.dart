import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import '../Admin/loginA.dart';

class Data {
  static String name = '';
  static String region = '';
  static String witel = '';
  static String datel = '';

  static retrieveUserData(collectionName, uid) async {
    var collection =
        FirebaseFirestore.instance.collection(collectionName).doc(uid);
    var docSnapshot = await collection.get();

    if (docSnapshot.exists) {
      Map<String, dynamic>? data = docSnapshot.data();
      name = data!['name'];
      region = data['region'];
      witel = data['witel'];
      datel = data['datel'];
    }
  }

  static updateUserData(String name, String region, String datel, String witel,
      String collection) async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance.collection(collection).doc(uid).update(
          {"name": name, "region": region, "witel": witel, "datel": datel});
      toast("Sukses menyimpan profil, silahkan cek koneksi internet anda");
    } catch (error) {
      toast("Gagal menyimpan profil, silahkan cek koneksi internet anda");
    }
  }

  static uploadImage(File imageFile, String name) async {
    String filename = basename(imageFile.path);

    FirebaseStorage storage = FirebaseStorage.instance;
    final Reference reference = storage.ref().child('$name/$filename');
    await reference.putFile(File(imageFile.path));

    String downloadUrl = await reference.getDownloadURL();

    print(downloadUrl);
    if (downloadUrl != null) {
      return downloadUrl;
    } else {
      return null;
    }
  }

  static uploadReport(
    String userId,
    String name,
    String myirSc,
    String dateWo,
    String? jalurKeluarPsb,
    String? odp,
    String? redaman,
    String? pullstrap,
    String? hook,
    String? hookLong,
    String? jalurIkr,
    String? roset,
    String? jalurPatchcore,
    String? redamanOut,
    String? teknisiDenganPelanggan,
    String? rumahPelanggan,
    String panjangDc,
    String customerName,
    String customerAddress,
    String feedback,
    String rating,
  ) async {
    try {
      String uid = DateTime.now().millisecondsSinceEpoch.toString();
      await FirebaseFirestore.instance.collection('report').doc(uid).set({
        "userId": userId,
        "uid": uid,
        "name": name,
        "myirSc": myirSc,
        "dateWo": dateWo,
        "jalurKeluarPsb": jalurKeluarPsb,
        "odp": odp,
        "redaman": redaman,
        "pullstrap": pullstrap,
        "hook": hook,
        "hookLong": hookLong,
        "jalurIkr": jalurIkr,
        "roset": roset,
        "jalurPatchcore": jalurPatchcore,
        "redamanOut": redamanOut,
        "teknisiDenganPelanggan": teknisiDenganPelanggan,
        "rumahPelanggan": rumahPelanggan,
        "panjangDc": panjangDc,
        "customerName": customerName,
        "customerAddress": customerAddress,
        "feedback": feedback,
        "rating": rating,
        "nilaiPsb": '0',
        "nilaiOdp": '0',
        "nilaiRedaman": '0',
        "nilaiPullstrap": '0',
        "nilaiHook": '0',
        "nilaiHookLong": '0',
        "nilaiJalurIkr": '0',
        "nilaiRoset": '0',
        "nilaiJalurPatchcore": '0',
        "nilaiRedamanOut": '0',
        "nilaiTnP": '0',
        "nilaiRumahPelanggan": '0',
        "tlPhone": '',
        "tlName": '',
        "tlDate": '',
        "tlFeedback": '',
        "tlId": '',
      });
    } catch (error) {
      toast("Gagal melakukan pendaftaran, silahkan cek koneksi internet anda");
      return false;
    }
  }

  static uploadReportUpdate(
      String uid,
      String tlId,
      String nilaiPsb,
      String nilaiOdp,
      String nilaiRedaman,
      String nilaiPullstrap,
      String nilaiHook,
      String nilaiHookLong,
      String nilaiJalurIkr,
      String nilaiJalurPatchcore,
      String nilaiRedamanOut,
      String nilaiRoset,
      String nilaiRumahPelanggan,
      String nilaiTnP,
      String phone,
      String name,
      String date,
      String feedback) async {
    try {
      await FirebaseFirestore.instance.collection('report').doc(uid).update({
        "nilaiPsb": nilaiPsb,
        "nilaiOdp": nilaiOdp,
        "nilaiRedaman": nilaiRedaman,
        "nilaiPullstrap": nilaiPullstrap,
        "nilaiHook": nilaiHook,
        "nilaiHookLong": nilaiHookLong,
        "nilaiJalurIkr": nilaiJalurIkr,
        "nilaiRoset": nilaiRoset,
        "nilaiJalurPatchcore": nilaiJalurPatchcore,
        "nilaiRedamanOut": nilaiRedamanOut,
        "nilaiTnP": nilaiTnP,
        "nilaiRumahPelanggan": nilaiRumahPelanggan,
        "tlPhone": phone,
        "tlName": name,
        "tlDate": date,
        "tlFeedback": feedback,
        "tlId": tlId,
      });
    } catch (error) {
      toast("Gagal melakukan pendaftaran, silahkan cek koneksi internet anda");
      return false;
    }
  }
}
