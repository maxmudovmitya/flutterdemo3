import 'package:flutter/material.dart';

import '../widgets/get_emoji.dart';

class UniquekeyPage extends StatefulWidget {
  const UniquekeyPage({super.key});

  @override
  State<UniquekeyPage> createState() => _UniquekeyPageState();
}

class _UniquekeyPageState extends State<UniquekeyPage> {

  // List<Widget> emojis = [GetEmoji(emoji: "😎"), GetEmoji(emoji: "🤠")];

  List<Widget> emojis = [
    GetEmoji(key: UniqueKey(), emoji: "😎"),
    GetEmoji(key: UniqueKey(), emoji: "🤠")
  ];

  swapEmoji() {
    setState(() {
      emojis.insert(1, emojis.removeAt(0));
    });
  }

  @override
  void initState() {
    super.initState();
    print(UniqueKey());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Unique Key"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: emojis,
          ),
          MaterialButton(
            color: Colors.blue,
            onPressed: (){
              swapEmoji();
            },
            child: Text("Swap"),
          )
        ],
      ),
    );
  }
}
