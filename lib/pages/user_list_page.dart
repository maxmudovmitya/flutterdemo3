import 'package:flutter/material.dart';
import 'package:flutterdemo3/pages/useradd_page.dart';
import 'package:flutterdemo3/services/cache_service.dart';

import '../models/user_model.dart';

class UserListPage extends StatefulWidget {
  const UserListPage({super.key});

  @override
  State<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends State<UserListPage> {

  List<User> items = [];


  _openUserAddPage() async{
    var result = await Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return UseraddPage();
    }));

    if(result){
    _loadUsersFromDB();
      //load user list from DB
    }
  }

  _loadUsersFromDB()async{
    List<User>? user = await CacheService.loadNewUsers();
    if(user == null) user = [];

    setState(() {
      items = user!;
    });

  }

  @override
  void initState() {
    super.initState();
    //load user list from DB
    _loadUsersFromDB();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("User List"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _itemOfUser(items[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _openUserAddPage();
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }

 Widget _itemOfUser(User user){
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(user.username!, style: TextStyle(fontSize:20 ),),
              Text(user.id.toString(), style: TextStyle(fontSize:20 ),),

            ],
          ),
          SizedBox(height: 20),
          Divider(),
        ],
      ),
    );

 }


}
