import 'package:flutter/material.dart';
import '../models/book_manager_model.dart';
import '../models/book_model.dart';
import '../widgets/book_item.dart';
import 'package:provider/provider.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    var bookModel = Provider.of<BookModel>(context);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("书籍列表"),
      ),
      body: ListView.builder(
        itemCount: bookModel.length,
        itemBuilder: (_, index) => BookItem(id: index + 1),
      ),
    );
  }
}




