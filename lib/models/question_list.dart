import 'question_model.dart';

/// This class contains all compatibility questions for the dating app.
/// Questions are sorted by ID and compiled from the complete question bank.
/// Each question includes a weight (1-100) indicating its importance in matching.
class QuestionsData {
  static const List<Question> questions = [
    // Questions 1-10
    Question(
      id: 1,
      text: "How important is physical fitness in your daily life?",
      weight: 70,
      category: "Lifestyle",
    ),
    Question(
      id: 2,
      text: "How comfortable are you with public displays of affection?",
      weight: 65,
      category: "Intimacy",
    ),
    Question(
      id: 3,
      text:
          "How important is it for you to maintain your independence in a relationship?",
      weight: 85,
      category: "Personal Values",
    ),
    Question(
      id: 4,
      text: "How much do you value financial stability in a partner?",
      weight: 80,
      category: "Financial",
    ),
    Question(
      id: 5,
      text:
          "How often do you prefer to socialize with friends or attend social events?",
      weight: 75,
      category: "Lifestyle",
    ),
    Question(
      id: 6,
      text:
          "How important is it for you to discuss politics with your partner?",
      weight: 60,
      category: "Communication",
    ),
    Question(
      id: 7,
      text:
          "How comfortable are you with your partner maintaining close friendships with people of the opposite sex?",
      weight: 70,
      category: "Trust",
    ),
    Question(
      id: 8,
      text: "How important is it for you to travel and explore new places?",
      weight: 65,
      category: "Lifestyle",
    ),
    Question(
      id: 9,
      text: "How willing are you to compromise in a relationship?",
      weight: 90,
      category: "Relationship Skills",
    ),
    Question(
      id: 10,
      text:
          "How important is it for you to have a partner who shares your religious or spiritual beliefs?",
      weight: 85,
      category: "Personal Values",
    ),

    // Questions 11-20
    Question(
      id: 11,
      text: "How comfortable are you with expressing your emotions openly?",
      weight: 80,
      category: "Communication",
    ),
    Question(
      id: 12,
      text: "How important is intellectual stimulation in your relationships?",
      weight: 75,
      category: "Compatibility",
    ),
    Question(
      id: 13,
      text:
          "How much personal growth and self-improvement do you expect from yourself and your partner?",
      weight: 70,
      category: "Personal Growth",
    ),
    Question(
      id: 14,
      text:
          "How important is it for you to have a partner who shares your sense of humor?",
      weight: 75,
      category: "Compatibility",
    ),
    Question(
      id: 15,
      text:
          "How willing are you to adapt your lifestyle for a long-term relationship?",
      weight: 85,
      category: "Commitment",
    ),
    Question(
      id: 16,
      text: "How important is it for you to maintain a work-life balance?",
      weight: 80,
      category: "Lifestyle",
    ),
    Question(
      id: 17,
      text:
          "How comfortable are you with technology and social media use in a relationship?",
      weight: 60,
      category: "Modern Life",
    ),
    Question(
      id: 18,
      text:
          "How important is physical intimacy in maintaining a strong relationship for you?",
      weight: 85,
      category: "Intimacy",
    ),
    Question(
      id: 19,
      text:
          "How willing are you to engage in your partner's hobbies and interests?",
      weight: 70,
      category: "Relationship Skills",
    ),
    Question(
      id: 20,
      text:
          "How important is it for you to have alone time on a regular basis?",
      weight: 75,
      category: "Personal Space",
    ),

    // Questions 21-30
    Question(
      id: 21,
      text:
          "How comfortable are you with discussing and planning for the future?",
      weight: 85,
      category: "Communication",
    ),
    Question(
      id: 22,
      text:
          "How important is it for you to maintain close relationships with your family?",
      weight: 75,
      category: "Family",
    ),
    Question(
      id: 23,
      text: "How willing are you to relocate for a relationship?",
      weight: 65,
      category: "Commitment",
    ),
    Question(
      id: 24,
      text:
          "How important is it for your partner to be ambitious in their career?",
      weight: 70,
      category: "Career",
    ),
    Question(
      id: 25,
      text: "How comfortable are you with expressing disagreement or conflict?",
      weight: 80,
      category: "Communication",
    ),
    Question(
      id: 26,
      text:
          "How important is it for you to maintain separate friendships outside of your relationship?",
      weight: 75,
      category: "Independence",
    ),
    Question(
      id: 27,
      text:
          "How willing are you to compromise on lifestyle choices for your partner's health needs?",
      weight: 80,
      category: "Adaptability",
    ),
    Question(
      id: 28,
      text:
          "How important is it for you to share household responsibilities equally?",
      weight: 85,
      category: "Domestic Life",
    ),
    Question(
      id: 29,
      text:
          "How comfortable are you with discussing finances and making financial decisions together?",
      weight: 90,
      category: "Financial",
    ),
    Question(
      id: 30,
      text:
          "How important is it for you to continuously learn and try new things in life?",
      weight: 70,
      category: "Personal Growth",
    ),

    // Questions 31-40
    Question(
      id: 31,
      text: "How important is it for you to have children in the future?",
      weight: 95,
      category: "Family Planning",
    ),
    Question(
      id: 32,
      text: "How comfortable are you with debt or financial risk-taking?",
      weight: 85,
      category: "Financial",
    ),
    Question(
      id: 33,
      text:
          "How important is it for you to maintain a healthy lifestyle (diet, exercise, etc.)?",
      weight: 75,
      category: "Lifestyle",
    ),
    Question(
      id: 34,
      text: "How willing are you to seek relationship counseling if needed?",
      weight: 80,
      category: "Relationship Skills",
    ),
    Question(
      id: 35,
      text:
          "How important is it for you to have a partner who shares your political views?",
      weight: 70,
      category: "Compatibility",
    ),
    Question(
      id: 36,
      text: "How comfortable are you with long-distance relationships?",
      weight: 65,
      category: "Commitment",
    ),
    Question(
      id: 37,
      text:
          "How important is it for you to have a partner who is environmentally conscious?",
      weight: 60,
      category: "Personal Values",
    ),
    Question(
      id: 38,
      text:
          "How willing are you to compromise on where you live (urban vs. rural, etc.)?",
      weight: 75,
      category: "Lifestyle",
    ),
    Question(
      id: 39,
      text:
          "How important is physical attraction in a long-term relationship for you?",
      weight: 80,
      category: "Intimacy",
    ),
    Question(
      id: 40,
      text:
          "How comfortable are you with your partner having different dietary preferences (vegan, omnivore, etc.)?",
      weight: 65,
      category: "Lifestyle",
    ),

    // Questions 41-50
    Question(
      id: 41,
      text:
          "How important is it for you to have a partner who shares your views on gender roles?",
      weight: 85,
      category: "Personal Values",
    ),
    Question(
      id: 42,
      text:
          "How willing are you to support your partner's career ambitions, even if it means sacrificing your own?",
      weight: 80,
      category: "Relationship Skills",
    ),
    Question(
      id: 43,
      text: "How comfortable are you with public displays of affection?",
      weight: 70,
      category: "Intimacy",
    ),
    Question(
      id: 44,
      text:
          "How important is it for you to maintain individual hobbies and interests separate from your partner?",
      weight: 75,
      category: "Personal Values",
    ),
    Question(
      id: 45,
      text:
          "How willing are you to blend families if you or your partner have children from previous relationships?",
      weight: 90,
      category: "Family",
    ),
    Question(
      id: 46,
      text:
          "How comfortable are you with discussing and exploring sexuality with your partner?",
      weight: 80,
      category: "Intimacy",
    ),
    Question(
      id: 47,
      text:
          "How important is it for you to have a partner who is actively involved in community or volunteer work?",
      weight: 65,
      category: "Personal Values",
    ),
    Question(
      id: 48,
      text:
          "How willing are you to make sacrifices for your partner's happiness?",
      weight: 85,
      category: "Relationship Skills",
    ),
    Question(
      id: 49,
      text:
          "How comfortable are you with different communication styles (e.g., direct vs. indirect)?",
      weight: 75,
      category: "Communication",
    ),
    Question(
      id: 50,
      text:
          "How important is it for you to have shared decision-making in a relationship?",
      weight: 85,
      category: "Relationship Skills",
    ),
  ];

  /// Returns questions filtered by category
  static List<Question> getQuestionsByCategory(String category) {
    return questions.where((q) => q.category == category).toList();
  }

  /// Returns questions with weight above a certain threshold
  static List<Question> getHighPriorityQuestions(int minWeight) {
    return questions.where((q) => q.weight >= minWeight).toList();
  }

  /// Returns a subset of questions for initial matching
  static List<Question> getInitialQuestions() {
    // Return top 20 questions by weight
    return List.from(questions)
      ..sort((a, b) => b.weight.compareTo(a.weight))
      ..take(20);
  }
}
