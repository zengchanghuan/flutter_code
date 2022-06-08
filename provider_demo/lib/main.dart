import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/book_model.dart';
import 'models/book_manager_model.dart';
import 'change_notifier_proxy_provider_example.dart';
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
      home: const ProviderDemo(),
    );
  }
}

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({Key? key}) : super(key: key);

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      //对定义的数据初始化
      providers: [
        Provider(create: (_) => BookModel()),
        ChangeNotifierProxyProvider<BookModel, BookManagerModel>(
          create: (_) => BookManagerModel(BookModel()),
          update: (_, bookModel, bookManagerModel) => BookManagerModel(bookModel),
        )
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ChangeNotifierProxyProviderExample(),
      ),
    );

  }
}
