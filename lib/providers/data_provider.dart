import 'package:flutter/material.dart';

import '../apis/langwhale_api.dart';
import '../models/langwhale_model.dart';

class DataProvider extends ChangeNotifier {
  final LangwhaleService _langwhaleService = LangwhaleService();

  bool _isFirst = true;
  bool get isFirst => _isFirst;

  void isFirstFalse() {
    _isFirst = false;
    notifyListeners();
  }

  void isFirstTrue() {
    _isFirst = true;
    notifyListeners();
  }

  late Future<List<Langwhale>> _data;

  Future<List<Langwhale>> get data => _data;

  void getData({required String query}) {
    _data = _langwhaleService.getData(query: query);
  }
}
