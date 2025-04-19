// import 'package:flutter/material.dart';
//
// import '../services/cache_service2.dart';
//
// class CachePage2 extends StatefulWidget {
//   const CachePage2({super.key});
//
//   @override
//   State<CachePage2> createState() => _CachePage2State();
// }
//
// class _CachePage2State extends State<CachePage2> {
//
//   String result = "no name";
//
//   storeName(){
//     String name = "Mirislom";
//     CacheService2.storeName(name);
//   }
//
//   loadName() async{
//     String name = await CacheService2.loadName();
//     print(name);
//     setState(() {
//       result = name;
//     });
//   }
//
//
//   @override
//   void initState() {
//     super.initState();
//     storeName();
//     loadName();
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("Share Preferences"),
//       ),
//       body: Center(
//         child: Text(result.toString(), style: TextStyle(fontSize: 30),),
//       ),
//     );
//   }
// }
