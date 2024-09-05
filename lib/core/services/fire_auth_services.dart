import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../features/auth/data/models/user_model.dart';
import '../../features/auth/domain/entities/user_entity.dart';
import '../helpers/print.dart';
import '../models/failure_model.dart';
import 'auth_services.dart';

class FireAuthServices implements AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = UserModel.fromUser(credential.user!);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Print.error('The password provided is too weak.');
        return Left(Failure('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        Print.error('The account already exists for that email.');
        return Left(Failure('The account already exists for that email.'));
      }
      return Left(Failure(e.code));
    } catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = UserModel.fromUser(credential.user!);
      return Right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Print.error('No user found for that email.');
        return Left(Failure('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        Print.error('Wrong password provided for that user.');
        return Left(Failure('Wrong password provided for that user.'));
      }
      Print.error(e.code);
      return Left(Failure(e.code));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      final userCredential = await _auth.signInWithCredential(credential);
      final user = UserModel.fromUser(userCredential.user!);
      return Right(user);
    } on Exception catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);
      final userCredential =
          await _auth.signInWithCredential(facebookAuthCredential);
      final user = UserModel.fromUser(userCredential.user!);
      return Right(user);
    } catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteUser() async {
    try {
      if (_auth.currentUser != null) {
        await _auth.currentUser!.delete();
        return const Right(null);
      } else {
        return Left(Failure('User not found'));
      }
    } on Exception catch (e) {
      Print.error(e.toString());
      return Left(Failure(e.toString()));
    }
  }
}
