class UserModel {
  final String id;
  final String email;
  final int points;

  UserModel({required this.id, required this.email, this.points = 0});

  factory UserModel.fromMap(String id, Map<String, dynamic> data) {
    return UserModel(
      id: id,
      email: data['email'] ?? '',
      points: data['points'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() => {
        'email': email,
        'points': points,
      };
}
