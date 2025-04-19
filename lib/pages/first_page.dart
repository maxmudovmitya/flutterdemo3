import 'package:flutter/material.dart';
import 'package:flutterdemo3/pages/counter_page.dart';
import 'package:flutterdemo3/pages/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {


  late GlobalKey<CounterPageState> _counterState;
  late int count;

  Future _openSecondPage() async {
    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)  {
      return SecondPage(_counterState);
    }));
  }

  @override
  void initState() {
    super.initState();
    _counterState = GlobalKey();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            CounterPage(key: _counterState)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openSecondPage();
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}


