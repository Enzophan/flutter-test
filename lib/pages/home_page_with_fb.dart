import 'package:flutter/material.dart';
import 'package:new_app1/pages/login_page.dart';
import 'package:new_app1/utils/constants.dart';
import 'package:new_app1/widgets/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePageFB extends StatelessWidget {
  Future fetchData() async {
    final url = "https://jsonplaceholder.typicode.com/photos";
    var res = await http.get(url);
    var data = jsonDecode(res.body);
    return data;
  }

  Widget build(BuildContext context) {
    var scaffold = Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("New Flutter"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Contants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
            },
          )
        ],
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Center(
                child: Text("Fetch something"),
              );
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasError) {
                return Center(
                  child: Text("Some error occured"),
                );
              }
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data[index]["title"]),
                    subtitle: Text("ID: ${snapshot.data[index]["id"]}"),
                    leading: Image.network(snapshot.data[index]["url"]),
                  );
                },
                itemCount: snapshot.data.length,
              );
          }
        },
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
    return scaffold;
  }
}
