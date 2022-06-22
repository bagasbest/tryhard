import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tryhard/Admin/loginA.dart';

class Authentication {
  static login(phone, password, collectionName) async {
    /// Cek apakah ada no hp yang diinputkan pengguna ketika klik login
    var collection = FirebaseFirestore.instance.collection(collectionName);
    var docSnapshot = await collection
        .where("phone", isEqualTo: phone)
        .where("password", isEqualTo: password)
        .limit(1)
        .get();
    if (docSnapshot.size > 0) {
      Map<String, dynamic>? data = docSnapshot.docs.first.data();
      var email = data['email'];

      /// CEK APAKAH NO.HANDPHONE DAN PASSWORD SUDAH TERDAFTAR / BELUM
      bool shouldNavigate = await _signInHandler(
        email,
        password,
      );

      if (shouldNavigate) {
        /// MASUK KE HOMEPAGE JIKA SUKSES LOGIN
        return true;
      } else {
        toast(
            'Terdapat kendala ketika ingin login. Silahkan periksa kembali email & password, serta koneksi internet anda');
        return false;
      }
    } else {
      toast('Maaf, Nomor Handphone atau Kata sandi anda tidak terdaftar');
      return false;
    }
  }

  static _signInHandler(String email, String password) async {
    try {
      (await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email, password: password))
          .user;

      return true;
    } catch (error) {
      toast(
          'Terdapat kendala ketika ingin login. Silahkan periksa kembali email & password, serta koneksi internet anda');
      return false;
    }
  }

//////////// registrer
  static signIn(
    String phone,
    String password,
    String name,
    String email,
    String collection,
  ) async {
    bool shouldNavigate = await _registerHandler(email, password);

    if (shouldNavigate) {
      await _registeringUserToDatabase(
        name,
        email,
        phone,
        password,
        collection,
      );
      return true;
    } else {
      return false;
    }
  }

  static _registerHandler(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return true;
    } catch (error) {
      toast(
          'Gagal melakukan pendaftaran, silahkan periksa kembali data diri anda dan koneksi internet anda');
      return false;
    }
  }

  static _registeringUserToDatabase(
    String name,
    String email,
    String phone,
    String password,
    String collection,
  ) async {
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance.collection(collection).doc(uid).set({
        "uid": uid,
        "name": name,
        "email": email,
        "phone": phone,
        "password": password,
        "region": '-',
        "witel": '-',
        "datel": '-',
      });
    } catch (error) {
      toast("Gagal melakukan pendaftaran, silahkan cek koneksi internet anda");
      return false;
    }
  }
}
