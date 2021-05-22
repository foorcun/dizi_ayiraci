import 'package:cloud_firestore/cloud_firestore.dart';

final firestoreManager = FirebaseFirestore.instance;

final CollectionReference rootCollectionRef =
    firestoreManager.collection('dizi-ayraci');
final diziDocumentRef = rootCollectionRef.doc("bEaBU6L7RrohlNTftTvA");
