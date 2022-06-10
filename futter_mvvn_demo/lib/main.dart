import 'package:flutter/material.dart';
import './provider_mvvm_example/view_model/joke_view_model.dart';
import 'package:provider/provider.dart';
import './provider_mvvm_example/provider_mvvm_example.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
      home: ProviderMvvMDemo(),
    );
  }
}

class ProviderMvvMDemo extends StatefulWidget {
  const ProviderMvvMDemo({Key? key}) : super(key: key);

  @override
  State<ProviderMvvMDemo> createState() => _ProviderMvvMDemoState();
}

class _ProviderMvvMDemoState extends State<ProviderMvvMDemo> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => JokeViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProviderMvvmExample(),
      ),
    );
  }
}

