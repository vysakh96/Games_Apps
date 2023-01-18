import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'model_class.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 250),
                child: Text(
                  getQus(),
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.green,
              child: TextButton(
                onPressed: () {
                  check(true);
                },
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              width: double.maxFinite,
              color: Colors.red,
              child: TextButton(
                onPressed: () {
                  check(false);
                },
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Row(
              children: ico,
            ),
          ],
        ),
      ),
    );
  }

  List _question = [
    Quiz(qus: 'Car have 4 wheels', ans: true),
    Quiz(qus: 'Bike have 3 wheels', ans: false),
    Quiz(qus: 'Sky color is blue', ans: true),
    Quiz(qus: 'Human blood color is green', ans: false),
    Quiz(qus: 'Kerala is the state of America', ans: false),
    Quiz(qus: 'India is Asian country', ans: true),
    Quiz(qus: 'Malayalam is the mother tongue of kerala', ans: true),
    Quiz(qus: 'Lionel Messi is a cricket player', ans: false),
    Quiz(qus: '125 less than 25', ans: false),
    Quiz(qus: 'Cat have 4 legs', ans: true)
  ];

  List<Icon> ico = [];

  int count = 0;
  int _qusNo = 0;
  void nextQus() {
    if (_qusNo < _question.length) {
      _qusNo++;
    }
  }

  String getQus() {
    return _question[_qusNo].qus;
  }

  bool getAns() {
    return _question[_qusNo].ans;
  }

  bool isFinished() {
    if (_qusNo >= _question.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int reset() {
    _qusNo = 0;
    count = 0;
    return _qusNo;
  }

  void check(bool answer) {
    bool value = getAns();
    setState(() {
      if (isFinished() == true) {
        // print('Finished');
        if (count <= 5) {
          Alert(context: context, title: 'THE END', desc: 'You are Failed ')
              .show();
          reset();
          ico = [];
        } else {
          Alert(
                  context: context,
                  title: 'THE END',
                  desc: 'You are Passed with $count marks')
              .show();
          reset();
          ico = [];
        }
      } else {
        if (value == answer) {
          print(count);
          ico.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
          count++;
        } else {
          ico.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        nextQus();
      }
    });
  }
}
