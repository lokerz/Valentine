class ChoiceManager {
  // Private constructor
  ChoiceManager._privateConstructor();

  // Static instance of the class
  static final ChoiceManager _instance = ChoiceManager._privateConstructor();

  // Getter to access the instance
  factory ChoiceManager() {
    return _instance;
  }

  // Your singleton methods and properties go here
  String? secondChoice;
  String? thirdChoice;
  String? fourthChoice;
}
