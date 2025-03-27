import 'package:firebase_auth/firebase_auth.dart';
import 'package:todo_list_providers/app/repositories/user/user_repository.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepositoryImpl implements UserRepository {
  final FirebaseAuth _firebaseAuth;

  UserRepositoryImpl({required FirebaseAuth firebaseAuth})
    : _firebaseAuth = firebaseAuth;

  @override
  Future<User?> register(String email, String password) async {
    try {
      final credencial = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credencial.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw FirebaseAuthException(
          code: e.code,
          message: 'The password provided is too weak.',
        );
      } else if (e.code == 'email-already-in-use') {
        throw FirebaseAuthException(
          code: e.code,
          message: 'The account already exists for that email.',
        );
      } else {
        throw FirebaseAuthException(code: e.code, message: 'Error: $e');
      }
    }
  }

  @override
  Future<User?> login(String email, String password) async {
    try {
      final credencial = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      return credencial.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw FirebaseAuthException(
          code: e.code,
          message: 'No user found for that email.',
        );
      } else if (e.code == 'wrong-password') {
        throw FirebaseAuthException(
          code: e.code,
          message: 'Wrong password provided for that user.',
        );
      } else {
        throw FirebaseAuthException(code: e.code, message: 'Error: $e');
      }
    }
  }

  @override
  Future<void> forgotPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<User?> googleLogin() async {
    final googleSignIn = GoogleSignIn();
    final googleUser = await googleSignIn.signIn();

    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      final fireCredential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
        accessToken: googleAuth.accessToken,
      );
      var userCredential = await _firebaseAuth.signInWithCredential(
        fireCredential,
      );
      return userCredential.user;
    }

    return null;
  }

  @override
  Future<void> logout() async {
    await GoogleSignIn().signOut();
    await _firebaseAuth.signOut();
  }

  @override
  Future<void> updateDisplayName(String name) async {
    final user = _firebaseAuth.currentUser;
    if (user != null) {
      await user.updateDisplayName(name);
      user.reload();
    }
  }
}
