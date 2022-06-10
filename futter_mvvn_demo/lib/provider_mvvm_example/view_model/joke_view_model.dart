import 'package:flutter/material.dart';
import '../model/joke_model.dart';
//这个ViewModel主要负责把请求回来的数据进行处理，并通知View层更新数据
class JokeViewModel with ChangeNotifier {
  List<Joke>? _jokeList = [];

  late Joke _joke;

  bool loading = true;

  setJokeList(JokeModel jokeModel) {
    _jokeList = [];
    _jokeList = jokeModel.data;
    loading = false;
    notifyListeners();
  }

  setJoke(Joke joke) {
    _joke = joke;
  }

  List<Joke>? get jokeList => _jokeList;

  Joke get joke => _joke;
}
