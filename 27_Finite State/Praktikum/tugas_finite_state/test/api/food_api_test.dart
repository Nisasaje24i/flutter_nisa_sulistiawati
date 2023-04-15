import 'package:test/test.dart';
import 'package:tugas_finite_state/api/foods_api.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:tugas_finite_state/model/foods_model.dart';

import 'food_api_test.mocks.dart';

@GenerateMocks([FoodsAPI])
void main() {
  group('FoodApi', () {
    FoodsAPI foodApi = MockFoodsAPI();
    test('get all foods returns data', () async {
      when(foodApi.getFoods()).thenAnswer(
        (_) async => <Foods>[Foods(id: 1, name: 'a')],
      );
      var fApi = FoodsAPI();
      var foods = await fApi.getFoods();
      expect(foods.isNotEmpty, true);
    });
  });
}