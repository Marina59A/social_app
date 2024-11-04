import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:social_app/common/errors/exceptions.dart';
import 'package:social_app/common/errors/failures.dart';
import 'package:social_app/common/models/user_model.dart';
import 'package:social_app/common/services/firebase_auth_service.dart';
import 'package:social_app/features/authentication/domain/entites/user_entity.dart';
import 'package:social_app/features/authentication/domain/repos/auth_repo.dart';

class AuthRepoImplementation extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImplementation({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String name,
    String email,
    String password,
    String confirmPassword
  ) async {
    try {
      var user = await firebaseAuthService.createUserWithEmailAndPassword(
        email: email,
        password: password, confirmPassword: confirmPassword,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in firebaseAuthService.createUserWithEmailAndPassword:${e.toString()}');
      return left(
        ServerFailure(
          'An error occured. Please try again later.',
        ),
      );
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return right(
        UserModel.fromFirebaseUser(user),
      );
    } on CustomException catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in firebaseAuthService.signInWithEmailAndPassword:${e.toString()}');
      return left(
        ServerFailure(
          'An error occured. Please try again later.',
        ),
      );
    }
  }
}
