import 'dart:convert';
import 'package:dio/dio.dart';
import '../model/joke_model.dart';
import '../view_model/joke_view_model.dart';

//网络请求用到第三方网路请求库Dio ^4.0.0，将请求回来的数据转换为模型，并更新ViewModel数据
class JokeService {
  static Future<void> getJokes(JokeViewModel jokeViewModel) async {
    var response = await Dio().get(
        "http://v.juhe.cn/joke/content/text.php?page=1&pagesize=20&key=03303e4d34effe095cf6a4257474cda9");
    if (response.statusCode == 200) {
      // 转换模型
      JokeModel jokeModel =
          jokeModelFromJson(json.encode(response.data["result"]));
      // 更新数据
      jokeViewModel.setJokeList(jokeModel);
    }
  }
}
