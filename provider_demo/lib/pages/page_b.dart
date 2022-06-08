import 'package:flutter/material.dart';
import '../models/book_model.dart';
import '../widgets/book_item.dart';
import '../models/book_manager_model.dart';
import 'package:provider/provider.dart';

class PageB extends StatelessWidget {
  const PageB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var bookManagerModel = Provider.of<BookManagerModel>(context);
    var bookCount = bookManagerModel.length;

    return Scaffold(
      appBar: AppBar(
        title: const Text("收藏列表"),
      ),
      body: ListView.builder(
        itemCount: bookCount,
        itemBuilder: (_, index) => BookItem(id: bookManagerModel.getByPosition(index).bookId),
      ),
    );
  }
}




