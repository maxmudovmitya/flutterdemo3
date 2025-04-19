import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => CounterPageState();
}

class CounterPageState extends State<CounterPage> {


  late int count;

  @override
  void initState() {
    super.initState();
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(count.toString(), style: TextStyle(fontSize: 30),),
        MaterialButton(
          onPressed: (){
            setState(() {
              count++;
            });
          },
          child: Text("Add"),
        )
      ],
    );
  }
}
