import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

main() {
  runApp(MaterialApp(
      title: "My first App",
      home: Container(
        child: HomePage(),
      ),
      theme: ThemeData(primarySwatch: Colors.amber)));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Change Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("First App"),
      ),
      drawer: Drawer(
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
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/background.jpeg",
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    height: 200),
                SizedBox(height: 20),
                Text(myText),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter name of the image",
                          labelText: "Name")),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
