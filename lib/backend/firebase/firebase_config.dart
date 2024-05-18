import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAu8g1eMpmAgJrCvrESfvVwpGIUM-ndpAA",
            authDomain: "academia-9i8j2v.firebaseapp.com",
            projectId: "academia-9i8j2v",
            storageBucket: "academia-9i8j2v.appspot.com",
            messagingSenderId: "334756268627",
            appId: "1:334756268627:web:0940a7dc0c8bc241b854a6"));
  } else {
    await Firebase.initializeApp();
  }
}
