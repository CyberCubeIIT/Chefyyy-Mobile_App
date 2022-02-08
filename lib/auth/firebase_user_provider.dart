import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ChefyyyOriginalFirebaseUser {
  ChefyyyOriginalFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

ChefyyyOriginalFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ChefyyyOriginalFirebaseUser> chefyyyOriginalFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ChefyyyOriginalFirebaseUser>(
            (user) => currentUser = ChefyyyOriginalFirebaseUser(user));
