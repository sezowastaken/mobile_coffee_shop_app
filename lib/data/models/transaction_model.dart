class TransactionModel {
  final String id;
  final int points;
  final DateTime createdAt;

  TransactionModel({
    required this.id,
    required this.points,
    required this.createdAt,
  });

  factory TransactionModel.fromMap(String id, Map<String, dynamic> data) {
    return TransactionModel(
      id: id,
      points: data['points'] ?? 0,
      createdAt: DateTime.tryParse(data['createdAt'] ?? '') ?? DateTime.now(),
    );
  }

  Map<String, dynamic> toMap() => {
        'points': points,
        'createdAt': createdAt.toIso8601String(),
      };
}
