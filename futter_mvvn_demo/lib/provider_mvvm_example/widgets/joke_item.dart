import 'package:flutter/material.dart';
import '../model/joke_model.dart';
import '../view_model/joke_view_model.dart';

class JokeItem extends StatelessWidget {

  const JokeItem({
    Key? key,
    this.jokeViewModel
  }) : super(key: key);

  final JokeViewModel? jokeViewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
        bottom: 10
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(jokeViewModel?.joke?.content ?? "",
            style: const TextStyle(
              color: Colors.black87,
              letterSpacing: 1.3,
              wordSpacing: 2
            ),
          ),
          const SizedBox(height: 5,),
          Text(jokeViewModel?.joke?.updatetime ?? "--")
        ],
      ),
    );
  }
}
