import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  bool USE_FIRESTORE_EMULATOR = false;

  testWidgets('main ...', (tester) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    if (USE_FIRESTORE_EMULATOR) {
      FirebaseFirestore.instance.settings = const Settings(
        host: 'localhost:8080',
        sslEnabled: false,
        persistenceEnabled: false,
      );
    }

    // TODO: Implement test
    final firestoreManager = FirebaseFirestore.instance;

    final CollectionReference refi = firestoreManager.collection('dizi-ayraci');
    print(1234);
    print(refi.id);
  });
}
