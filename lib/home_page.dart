import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // use this controller to get what the user typed
  final _textController_1 = TextEditingController();
  final _textController_2 = TextEditingController();
  var userQuestion_1 = '';
  var userQuestion_2 = '';
  String userAnswer = '';

  final List<String> buttons = [
    '+',
    '-',
    "x",
    '÷',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('calculator')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        controller: _textController_1,
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          setState(() {
                            userQuestion_1 = _textController_1.text;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 10),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        controller: _textController_2,
                        keyboardType: TextInputType.number,
                        onChanged: (text) {
                          setState(() {
                            userQuestion_2 = _textController_2.text;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.greenAccent,
                    child: Text(
                      ('結果：$userAnswer'),
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 60,
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        userAnswer = userQuestion_1 + userQuestion_2;
                      });
                    },
                    color: Colors.blue,
                    child: Text(
                      buttons[0],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      buttons[1],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      buttons[2],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 60,
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    child: Text(
                      buttons[3],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
