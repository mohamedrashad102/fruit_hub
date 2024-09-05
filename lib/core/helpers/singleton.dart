import '../services/auth_services.dart';
import '../services/database_services.dart';
import '../services/fire_auth_services.dart';
import '../services/firestore_services.dart';

class Singleton {
  Singleton._();

  static final AuthServices authRepoImpl = FireAuthServices();
  static final DatabaseServices firestoreServices = FirestoreServices();
}
