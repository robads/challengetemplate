import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBBaIhaHyiu83WM5IgoixZdP2cf6Fkwmjk",
            authDomain: "challenge-template.firebaseapp.com",
            projectId: "challenge-template",
            storageBucket: "challenge-template.appspot.com",
            messagingSenderId: "1042445679423",
            appId: "1:1042445679423:web:0697d48fd15fc4973f318a"));
  } else {
    await Firebase.initializeApp();
  }
}
