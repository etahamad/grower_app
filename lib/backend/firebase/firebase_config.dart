import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOrLQsjDQxKjWBfWXkaeDSLaTlKZbpE0E",
            authDomain: "agri-adiutor.firebaseapp.com",
            projectId: "agri-adiutor",
            storageBucket: "agri-adiutor.appspot.com",
            messagingSenderId: "1044237359353",
            appId: "1:1044237359353:web:1c322fb96f939249a0ea28"));
  } else {
    await Firebase.initializeApp();
  }
}
