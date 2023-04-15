import 'package:dio/dio.dart';
import 'package:tugas_finite_state/model/foods_model.dart';

class FoodsAPI {
  Future<List<Foods>> getFoods() async {
    final response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods");

    List<Foods> food = (response.data as List)
        .map(
          (e) => Foods(id: e['id'], name: e['name']),
        )
        .toList();
    return food;
  }
}
