import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ChallengeTemplateFirebaseUser {
  ChallengeTemplateFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ChallengeTemplateFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ChallengeTemplateFirebaseUser> challengeTemplateFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ChallengeTemplateFirebaseUser>(
      (user) {
        currentUser = ChallengeTemplateFirebaseUser(user);
        return currentUser!;
      },
    );
