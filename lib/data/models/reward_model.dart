class RewardModel {
  final String id;
  final String title;
  final int cost;

  RewardModel({required this.id, required this.title, required this.cost});

  factory RewardModel.fromMap(String id, Map<String, dynamic> data) {
    return RewardModel(
      id: id,
      title: data['title'] ?? '',
      cost: data['cost'] ?? 0,
    );
  }

  Map<String, dynamic> toMap() => {
        'title': title,
        'cost': cost,
      };
}
