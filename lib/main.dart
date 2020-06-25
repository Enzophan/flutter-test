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
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.grey,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            // DrawerHeader(
            //   child: Text("Drawer"),
            //   decoration: BoxDecoration(color: Colors.grey),
            // ),
            UserAccountsDrawerHeader(
              accountName: Text("Zinzo Phan"),
              accountEmail: Text("phannhan.dn@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://www.brandsvietnam.com/upload/news/480px/2018/17224_JonyIve.jpeg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Zinzo Phan"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Gmail"),
              subtitle: Text("phannhan.dn@gmail.com"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Mobile"),
              subtitle: Text("0909000999"),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    return scaffold;
  }
}
