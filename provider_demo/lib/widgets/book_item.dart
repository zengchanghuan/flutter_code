import 'package:flutter/material.dart';
import '../models/book_model.dart';
import '../widgets/book_button.dart';
import 'package:provider/provider.dart';

class BookItem extends StatelessWidget {
  final int id;

  const BookItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var bookModel = Provider.of<BookModel>(context);
    var book = bookModel.getById(id);

    return ListTile(
      leading: CircleAvatar(
        child: Text("${book.bookId}"),
      ),
      title: Text(
        book.bookName,
        style: const TextStyle(color: Colors.black87),
      ),
      trailing: BookButton(book: book),
    );
  }
}
