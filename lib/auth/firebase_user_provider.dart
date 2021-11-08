import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class OhranaTruda2FirebaseUser {
  OhranaTruda2FirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

OhranaTruda2FirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<OhranaTruda2FirebaseUser> ohranaTruda2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<OhranaTruda2FirebaseUser>(
            (user) => currentUser = OhranaTruda2FirebaseUser(user));
