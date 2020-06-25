import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.pink),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      appBar: AppBar(
        title: Text("New Flutter"),
      ),
      body: Container(
        // child: Container(
        //   padding: const EdgeInsets.all(8),
        //   width: 100,
        //   height: 100,
        // clipBehavior: Clip.antiAlias,
        // alignment: Alignment.center,
        // decoration: BoxDecoration(
        //     color: Colors.red,
        //     // shape: BoxShape.circle,
        //     borderRadius: BorderRadius.circular(10),
        //     gradient: LinearGradient(colors: [Colors.pink, Colors.blue]),
        //     boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
        // child: Text(
        //   "I am a box",
        //   textAlign: TextAlign.center,
        //   style: TextStyle(
        //       fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,),
        // ),
        // ),

        height: 500,
        color: Colors.grey,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.green,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
    return scaffold;
  }
}
