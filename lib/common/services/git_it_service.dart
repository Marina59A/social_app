import 'package:get_it/get_it.dart';
import 'package:social_app/common/services/firebase_auth_service.dart';
import 'package:social_app/features/authentication/data/repos/auth_repo_implementation.dart';
import 'package:social_app/features/authentication/domain/repos/auth_repo.dart';

final getIt = GetIt.instance;

void setupGitIt() {
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImplementation(
    firebaseAuthService: getIt<FirebaseAuthService>(),
  ));
}
