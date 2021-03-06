import 'package:flutter/material.dart';
import './pages/page_a.dart';
import './pages/page_b.dart';

class ChangeNotifierProxyProviderExample extends StatefulWidget {
  const ChangeNotifierProxyProviderExample({Key? key}) : super(key: key);

  @override
  State<ChangeNotifierProxyProviderExample> createState() => _ChangeNotifierProxyProviderExampleState();
}

class _ChangeNotifierProxyProviderExampleState extends State<ChangeNotifierProxyProviderExample> {


  var _selectedIndex = 0;
  final _pages = [const PageA(), const PageB()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "书籍列表"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "收藏"
          )
        ],
      ),
    );
  }
}

