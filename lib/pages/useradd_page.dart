import 'package:flutter/material.dart';
import 'package:flutterdemo3/services/cache_service.dart';

import '../models/user_model.dart';

class UseraddPage extends StatefulWidget {
  const UseraddPage({super.key});

  @override
  State<UseraddPage> createState() => _UseraddPageState();
}

class _UseraddPageState extends State<UseraddPage> {

  TextEditingController userIdController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  _saveUserToDB(){

    String userId = userIdController.text.toString().trim();
    String userName = userNameController.text.toString().trim();


    User user = User(id: int.parse(userId), username: userName);
    CacheService.storeNewUser(user);

    Navigator.of(context).pop(true);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add User"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: userIdController,
              decoration: InputDecoration(
                hintText: "Enter user id",
              ),
            ),
            TextField(
              controller: userNameController,
              decoration: InputDecoration(
                hintText: "Enter username",
              ),
            ),
            MaterialButton(
              onPressed: (){
                _saveUserToDB();
              },
              color: Colors.blue,
              child: Text("Add"),

            ),
          ],
        ),
      ),
    );
  }
}
