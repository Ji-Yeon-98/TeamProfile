import 'package:flutter/material.dart';

class Profile {
  Profile({
    required this.content,
    required this.value,
  });

  String content;
  String value;
}

class ProfileService extends ChangeNotifier {
  var plists = {
    'name': '추지연',
    'birth': '1998.12.28',
    'mbti': 'ISFP',
  };

  updateProfile({required String content, required String value}) {
    plists[content] = value;
    notifyListeners();
  }
}
