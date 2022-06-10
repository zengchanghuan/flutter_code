import 'package:flutter/material.dart';
import './view/joke_view.dart';

class ProviderMvvmExample extends StatelessWidget {
  const ProviderMvvmExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const JokeView();
  }
}
