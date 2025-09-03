import 'package:cloud_firestore/cloud_firestore.dart';

class MenuRepository {
  MenuRepository(this._db);

  final FirebaseFirestore _db;

  Stream<List<Map<String, dynamic>>> watchMenu() {
    // TODO: implement menu stream
    throw UnimplementedError();
  }
}
