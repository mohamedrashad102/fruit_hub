import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../helpers/print.dart';
import '../models/failure_model.dart';

class AuthServices {
  static final FirebaseAuth auth = FirebaseAuth.instance;

  static Future<Either<Failure, User>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Right(credential.user!);
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
}
