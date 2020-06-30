import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
      );
  }
}
