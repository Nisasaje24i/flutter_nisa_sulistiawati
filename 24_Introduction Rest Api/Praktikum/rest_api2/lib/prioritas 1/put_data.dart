import 'package:dio/dio.dart';

void main() {
  editData();
}

Dio dio = new Dio();

String url = "https://jsonplaceholder.typicode.com/posts/1";

void editData() async {
  Map<String, dynamic> dataEdit = {
    "id": 1,
    "title": "foo",
    "body": "bar",
    "userId": 1,
  };
  try {
    Response response = await dio.put(url, data: dataEdit);
    print(response);
  } catch (e) {
    print("Error occurred: $e");
  }
}
