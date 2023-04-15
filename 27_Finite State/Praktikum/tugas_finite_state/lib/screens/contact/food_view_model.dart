
import 'package:flutter/material.dart';
import 'package:tugas_finite_state/model/foods_model.dart';

import '../../api/foods_api.dart';

enum FoodsViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  FoodsViewState _state = FoodsViewState.none;
  FoodsViewState get state => _state;

  List<Foods> _food = [];
  List<Foods> get food => _food;

  changeState(FoodsViewState f) {
    _state = f;
    notifyListeners();
  }

  getAllFoods() async {
    changeState(FoodsViewState.loading);

    try {
      var fApi = FoodsAPI();
      final f = await fApi.getFoods();
      _food = f;
      notifyListeners();
      changeState(FoodsViewState.none);
    } catch (e) {
      changeState(FoodsViewState.error);
    }
  }
}
