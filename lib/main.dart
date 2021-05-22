import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dizi_ayiraci/blocs/dizi_bloc.dart';
import 'package:dizi_ayiraci/data/firebase_dizi_service.dart';
import 'package:dizi_ayiraci/models/dizi.dart';
import 'package:dizi_ayiraci/screens/dizi_list_screen.dart';
import 'package:dizi_ayiraci/screens/dizi_screen.dart';
import 'package:dizi_ayiraci/screens/fire_dizi_list_screen.dart';
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

    getTheHell() async {
      var response = await movrefi.get();
      print("response.data() " + response.data().toString());
    }

    print("refi.id " + refi.id);
    getTheHell();
    //});
    // diziBloc.printAll();

    // var got = FirebaseDiziService().getAll();
    // got.then((value) {
    //   value.forEach((dizi) {
    //     print("service ten " + dizi.diziAdi);
    //   });
    // });

    return MaterialApp(
      routes: {
        "/": (BuildContext context) => DizisListScreen(),
        "///": (BuildContext context) => FireDizisListScreen(),
        "//": (BuildContext context) => FireTest(),
        "/dizi": (BuildContext context) => DiziScreen()
      },
      initialRoute: "///",
    );
  }
}

class FireTest extends StatefulWidget {
  @override
  _FireTestState createState() => _FireTestState();
}

class _FireTestState extends State<FireTest> {
  final Future<FirebaseApp> _initF = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<DocumentSnapshot>(
          stream: movrefi.snapshots(),
          builder: (context, AsyncSnapshot asyncSnapshot) {
            // return Text('${asyncSnapshot.data.data()}');
            return Text(asyncSnapshot.data.data()["diziAdi"]);
          },
        ),
        // StreamBuilder<DocumentSnapshot>(
        // StreamBuilder(
        //   initialData: diziBloc.getAllFire(),
        //   stream: diziBloc.getStream,
        //   builder: (context, snapshot) {
        //     if (snapshot.hasData) {
        //       return Text(snapshot.data!["diziAdi"]);
        //     }
        //     return Text('${snapshot.data!.toString()}');
        //   },
        // ),
      ],
    );
  }

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
}

class ErrorWidgetBu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("ErrorWidgetBu");
  }
}

class MyAwesomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Text("MyAwesomeApp"),
      ],
    ));
  }
}

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Loading");
  }
}
