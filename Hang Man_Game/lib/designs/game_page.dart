import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HangMan extends StatefulWidget {
  const HangMan({Key? key}) : super(key: key);

  @override
  State<HangMan> createState() => _HangManState();
}

class _HangManState extends State<HangMan> {
  bool _isVisibleHead = false;
  bool _isVisibleBody = false;
  bool _isVisibleHeadRh = false;
  bool _isVisibleLh = false;
  bool _isVisibleRl = false;
  bool _isVisibleLl = false;
  bool _isVisibleLetterF = false;
  bool _isVisibleLetterL = false;
  bool _isVisibleLetterU = false;
  bool _isVisibleLetterT = false;
  bool _isVisibleLetterE = false;
  bool _isVisibleLetterR = false;
  int count = 0;
  int flag = 0;
  void displayLetter(String letters) {
    setState(() {
      if (count == 5) {
        Alert(
          context: context,
          title: "GAME OVER",
          desc: "You are lost",
          image: Container(
              height: 20, width: 20, child: Image.asset("images/close.png")),
        ).show();
        reset();
      } else if (flag == 5) {
        Alert(
          context: context,
          title: "GAME OVER",
          desc: "You are won",
          image: Container(
              height: 35, width: 35, child: Image.asset('images/winner.png')),
        ).show();
        reset();
      } else {
        if (letters == 'F') {
          _isVisibleLetterF = true;
          flag++;
        } else if (letters == 'L') {
          _isVisibleLetterL = true;
          flag++;
        } else if (letters == 'U') {
          _isVisibleLetterU = true;
          flag++;
        } else if (letters == 'T') {
          _isVisibleLetterT = true;
          flag++;
        } else if (letters == 'E') {
          _isVisibleLetterE = true;
          flag++;
        } else if (letters == 'R') {
          _isVisibleLetterR = true;
          flag++;
        } else {
          count++;
          if (count == 1) {
            _isVisibleHead = true;
          } else if (count == 2) {
            _isVisibleBody = true;
          } else if (count == 3) {
            _isVisibleHeadRh = true;
          } else if (count == 4) {
            _isVisibleLh = true;
          } else if (count == 5) {
            _isVisibleRl = true;
          } else if (count == 6) {
            _isVisibleLl = true;
          }
        }
      }
    });
  }

  void reset() {
    _isVisibleHead = false;
    _isVisibleBody = false;
    _isVisibleHeadRh = false;
    _isVisibleLh = false;
    _isVisibleRl = false;
    _isVisibleLl = false;
    _isVisibleLetterF = false;
    _isVisibleLetterL = false;
    _isVisibleLetterU = false;
    _isVisibleLetterT = false;
    _isVisibleLetterE = false;
    _isVisibleLetterR = false;
    flag = 0;
    count = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Stack(
                children: [
                  Image.asset('images/hang.png'),
                  Visibility(
                      visible: _isVisibleHead,
                      child: Image.asset('images/head.png')),
                  Visibility(
                      visible: _isVisibleBody,
                      child: Image.asset('images/body.png')),
                  // Visibility(visible: _isVisible,
                  //     child: Image.asset('images/body.png')),
                  Visibility(
                      visible: _isVisibleHeadRh,
                      child: Image.asset('images/right hand.png')),
                  Visibility(
                      visible: _isVisibleLh,
                      child: Image.asset('images/left hand.png')),
                  Visibility(
                      visible: _isVisibleLl,
                      child: Image.asset('images/left leg.png')),
                  Visibility(
                      visible: _isVisibleRl,
                      child: Image.asset('images/right leg.png')),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterF,
                                child: Text(
                                  'F',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterL,
                                child: Text(
                                  'L',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterU,
                                child: Text(
                                  'U',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterT,
                                child: Text(
                                  'T',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterT,
                                child: Text(
                                  'T',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterE,
                                child: Text(
                                  'E',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: Container(
                        height: 38,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Visibility(
                                visible: _isVisibleLetterR,
                                child: Text(
                                  'R',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )))),
                  ),
                ],
              ),
              Row(
                children: [
                  displayButton('A'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('B'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('C'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('D'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('E'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('F'),
                ],
              ),
              Row(
                children: [
                  displayButton('G'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('H'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('I'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('J'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('K'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('L'),
                ],
              ),
              Row(
                children: [
                  displayButton('M'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('N'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('O'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('P'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('Q'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('R'),
                ],
              ),
              Row(
                children: [
                  displayButton('S'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('T'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('U'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('V'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('W'),
                  SizedBox(
                    width: 5,
                  ),
                  displayButton('X'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 115, right: 110),
                child: Row(
                  children: [
                    displayButton('Y'),
                    SizedBox(
                      width: 5,
                    ),
                    displayButton('Z'),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  displayButton(String letter) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          // compare(letter);
          displayLetter(letter);
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
        child: Text(
          letter,
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
      ),
    );
  }
}
