import 'package:fruit_hub/core/services/data_base_services.dart';
import 'package:fruit_hub/core/services/firestore_services.dart';
import 'package:fruit_hub/features/auth/data/repos_impl/auth_repo_impl.dart';

class Singleton {
  Singleton._();

  static final AuthRepoImpl authRepoImpl = AuthRepoImpl();
  static final DataBaseServices firestoreServices = FirestoreServices();
}
