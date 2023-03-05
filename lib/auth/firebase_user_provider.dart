import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AgriAdiutorFirebaseUser {
  AgriAdiutorFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AgriAdiutorFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AgriAdiutorFirebaseUser> agriAdiutorFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AgriAdiutorFirebaseUser>(
      (user) {
        currentUser = AgriAdiutorFirebaseUser(user);
        return currentUser!;
      },
    );
