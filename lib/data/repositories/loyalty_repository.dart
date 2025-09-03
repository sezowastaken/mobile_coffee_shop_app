import 'package:cloud_firestore/cloud_firestore.dart';

class LoyaltyRepository {
  LoyaltyRepository(this._db);

  final FirebaseFirestore _db;

  Stream<int> watchUserPoints(String uid) {
    // TODO: implement points stream
    throw UnimplementedError();
  }
}
