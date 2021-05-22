import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/screens/dizi_list_screen.dart';
import 'package:dizi_ayiraci/screens/dizi_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

/// Requires that a Firestore emulator is running locally.
/// See https://firebase.flutter.dev/docs/firestore/usage#emulator-usage
bool USE_FIRESTORE_EMULATOR = false;
final firestoreManager = FirebaseFirestore.instance;

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
// final moviesRef =
//     FirebaseFirestore.instance.collection('dizi-ayraci').withConverter<Dizi>(
//           fromFirestore: (snapshots, _) => Dizi.fromJson(snapshots.data()!),
//           toFirestore: (dizi, _) => dizi.toJson(),
//         );

final CollectionReference refi = firestoreManager.collection('dizi-ayraci');
final movrefi = refi.doc("bEaBU6L7RrohlNTftTvA");

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // print("moviesRef " + moviesRef.toString());  //çalışıyor
    // print("moviesRef.id " + moviesRef.id); //çalışıyor
    // print("doc " + moviesRef.doc("bEaBU6L7RrohlNTftTvA").toString());//çalışıyor

    //  refi.getDocuments().then((qS){qS.documents.forEach((element){
    //    print(element);
    //  })});
    // print("doc " +
    //     moviesRef.doc("bEaBU6L7RrohlNTftTvA").snapshots()[0].toString());
    // print("docAfter " + moviesRef.doc("bEaBU6L7RrohlNTftTvA").get("dizi-adi"));

    // refi.getDocuments().then((qS) {
    //   qS.documents.forEach((doc) {
    //     print(doc.data);
    //   });
    // });

    // refi.doc().get().then((qS) {
    //   qS.data()!.toString();
    //   // .forEach((doc) {
    //   //   print(doc.data);
    //   // });
    getTheHell() async {
      var response = await movrefi.get();
      print(response.data());
    }

    print(refi.id);
    getTheHell();
    //});

    return MaterialApp(
      routes: {
        "/": (BuildContext context) => DizisListScreen(),
        // "//": (BuildContext context) => FireTest(),
        "/dizi": (BuildContext context) => DiziScreen()
      },
      initialRoute: "/",
    );
  }
}

// class FireTest extends StatefulWidget {
//   @override
//   _FireTestState createState() => _FireTestState();
// }

// class _FireTestState extends State<FireTest> {
//   final Future<FirebaseApp> _initF = Firebase.initializeApp();

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initF,
//       builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
//         if (snapshot.hasError) {
//           print("has error bu");
//           return ErrorWidgetBu();
//         }
//         if (snapshot.connectionState == ConnectionState.done) {
//           print("conState done bu ");
//           print("snapshot.data " + snapshot.data.d);
//           // print("snapshot.data lengt " + snapshot.data.size.toString()); // bu kod çalışmaz
//           return MyAwesomeApp();
//         }
//         return Loading();
//       },
//     );
//   }
// }

// class ErrorWidgetBu extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("ErrorWidgetBu");
//   }
// }

// class MyAwesomeApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         Text("MyAwesomeApp"),
//       ],
//     ));
//   }
// }

// class Loading extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Text("Loading");
//   }
// }
