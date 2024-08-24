import '../services/data_base_services.dart';
import '../services/firestore_services.dart';
import '../../features/auth/data/repos_impl/auth_repo_impl.dart';

class Singleton {
  Singleton._();

  static final AuthRepoImpl authRepoImpl = AuthRepoImpl();
  static final DataBaseServices firestoreServices = FirestoreServices();
}
