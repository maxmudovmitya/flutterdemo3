import 'package:flutter/material.dart';

class ValuekeyPage extends StatefulWidget {
  const ValuekeyPage({super.key});

  @override
  State<ValuekeyPage> createState() => _ValuekeyPageState();
}

class _ValuekeyPageState extends State<ValuekeyPage> {

  bool showFavouriteFramework = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Value Key"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            if(showFavouriteFramework)
              TextField(
                key: ValueKey("fraemwork"),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Favorite Fraemwork"),
              ),
            TextField(
              key: ValueKey("language"),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Favorite Language"
              ),
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  showFavouriteFramework = false;
                });
              },
              child: Text("Remove Favourite Fraemwork"),

            )
          ],
        ),
      ),
    );
  }
}
