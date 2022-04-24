import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('商城首页'),
      ),
    );
  }
}
