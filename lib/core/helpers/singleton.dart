import 'package:fruit_hub/features/auth/data/repos_impl/auth_repo_impl.dart';

class Singleton {
  Singleton._();

  static final AuthRepoImpl authRepoImpl = AuthRepoImpl();
}
