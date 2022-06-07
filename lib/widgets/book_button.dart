import 'package:flutter/material.dart';
import '../models/book_manager_model.dart';
import '../models/book_model.dart';
import 'package:provider/provider.dart';

class BookButton extends StatelessWidget {
  
  final Book book;
  
  const BookButton({
    Key? key,
    required this.book
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    var bookManagerModel = Provider.of<BookManagerModel>(context);
    
    return GestureDetector(
      onTap: bookManagerModel.books.contains(book)
          ?  () => bookManagerModel.removeFaves(book)
          :  () => bookManagerModel.addFaves(book),
      child: SizedBox(
        width: 100,
        height: 60,
        child: bookManagerModel.books.contains(book)
            ?  const Icon(Icons.star, color: Colors.red,)
            :  const Icon(Icons.star_border),
      ),
    );
  }
}
