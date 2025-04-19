import 'package:flutter/material.dart';
import 'package:flutterdemo3/services/cache_service.dart';

import '../models/user_model.dart';

class CachePage extends StatefulWidget {
  const CachePage({super.key});

  @override
  State<CachePage> createState() => _CachePageState();
}

class _CachePageState extends State<CachePage> {

  String result = "no name";

  storeName(){
    String name = "Mirislom";
    CacheService.storeName(name);
  }

  loadName() async{
    String name = await CacheService.loadName();
    print(name);
    setState(() {
      result = name;
    });
  }

  storeUser() {
    User user = User(id: 100, username: "Mitya");
    CacheService.storeUser(user);
  }

  loadUser() async{
    User? user = await CacheService.loadUser();
    print(user!);
    setState(() {
      result = user.toMap().toString();
    });
  }

  storeUserList() {
    User user1 = User(id: 1000, username: "xurshidbek");
    User user2 = User(id: 1001, username: "begzodbek");
    List<User> list = [user1, user2];
    CacheService.storeUserList(list);
  }

  loadUserList()async{
    List<User>?list = await CacheService.loadUserList();
    print(list!.length.toString());
    setState(() {
      result = list.length.toString();
    });
  }


  @override
  void initState() {
    super.initState();
    storeUserList();
    loadUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Share Preferences"),
      ),
      body: Center(
        child: Text(result.toString(), style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
