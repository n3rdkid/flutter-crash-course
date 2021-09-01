import "package:flutter/material.dart";

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
        // DrawerHeader(
        //   child: Text(
        //     "Drawer Menu",
        //     style: TextStyle(fontSize: 16, color: Colors.white),
        //   ),
        //   decoration: BoxDecoration(color: Colors.blue),
        // ),
        UserAccountsDrawerHeader(
            accountName: Text("Saurav Adhikari"),
            accountEmail: Text("sauravads123@gmail.com"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1630181897844-7fb328dc7b77?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"))),
        ListTile(
          leading: Icon(Icons.person),
          title: Text("Account"),
          subtitle: Text("Category"),
          trailing: Icon(Icons.edit),
        ),
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text("Notifications"),
          subtitle: Text("Category One"),
          trailing: Icon(Icons.edit),
        )
      ],
    ));
  }
}
