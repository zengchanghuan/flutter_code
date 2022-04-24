import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home:Home()

));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tristan'),
        centerTitle: true,
        backgroundColor: Colors.red[10],
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Text('hello'),
              Text('world'),
            ],
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            color: Colors.cyan,
            child: Text('one'),
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.cyan,
            child: Text('two'),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: Text('three'),
          ),
          Container(
            padding: EdgeInsets.all(40.0),
            color: Colors.cyan,
            child: Text('four'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

