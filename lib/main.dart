import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/screens/dizi_list_screen.dart';
import 'package:dizi_ayiraci/screens/dizi_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

/// Requires that a Firestore emulator is running locally.
/// See https://firebase.flutter.dev/docs/firestore/usage#emulator-usage
bool USE_FIRESTORE_EMULATOR = false;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  if (USE_FIRESTORE_EMULATOR) {
    FirebaseFirestore.instance.settings = const Settings(
      host: 'localhost:8080',
      sslEnabled: false,
      persistenceEnabled: false,
    );
  }
  // runApp(FirestoreExampleApp());
  runApp(MyApp());
}

// /// The different ways that we can filter/sort movies.
// enum MovieQuery {
//   diziAdi,
//   fotoLink,
//   sezonSayisi,
//   sezons,
//   sciFi,
//   fantasy,
// }
final moviesRef =
    FirebaseFirestore.instance.collection('dizi-ayraci').withConverter<Dizi>(
          fromFirestore: (snapshots, _) => Dizi.fromJson(snapshots.data()!),
          toFirestore: (dizi, _) => dizi.toJson(),
        );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (BuildContext context) => DizisListScreen(),
        "/dizi": (BuildContext context) => DiziScreen()
      },
      initialRoute: "/",
    );
  }
}
