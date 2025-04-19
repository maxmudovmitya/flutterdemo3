import 'package:flutter/material.dart';
import 'package:flutterdemo3/pages/counter_page.dart';

class SecondPage extends StatefulWidget {
  final GlobalKey<CounterPageState> counterKey;
  const SecondPage(this.counterKey);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Second Page"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [

            Text(
              widget.counterKey.currentState!.count.toString(),
              style: TextStyle(fontSize: 30),
            ),
            MaterialButton(
              onPressed: (){
                setState(() {
                  widget.counterKey.currentState!.count++;
                });

              },
              child: Text("Add"),
            )
          ],
        ),
      ),
    );

  }
}
