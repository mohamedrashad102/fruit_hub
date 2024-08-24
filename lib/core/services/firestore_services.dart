import 'package:cloud_firestore/cloud_firestore.dart';
import '../helpers/print.dart';
import '../utils/app_keys.dart';

import '../../features/auth/domain/entities/user_entity.dart';
import 'data_base_services.dart';

class FirestoreServices implements DataBaseServices {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<void> saveUserData(UserEntity user) async {
    try {
      await _firestore.collection(AppKeys.users).doc(user.id).set(user.toMap());
    } on Exception catch (e) {
      Print.error(e.toString());
    }
  }
}
