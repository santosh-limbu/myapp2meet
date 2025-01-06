
class Question {
  final int id;
  final String text;
  final int weight;
  final String category;

  const Question({
    required this.id,
    required this.text,
    required this.weight,
    required this.category,
  });

  // Add a fromJson constructor for future API integration
  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'] as int,
      text: json['text'] as String,
      weight: json['weight'] as int,
      category: json['category'] as String,
    );
  }

  // Add a toJson method for future data persistence
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'weight': weight,
      'category': category,
    };
  }
}
