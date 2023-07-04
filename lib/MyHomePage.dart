// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'ScoreCalculation.dart';
import 'package:lottie/lottie.dart';
// import 'package:just_audio/just_audio.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final x = TextEditingController();
  final y = TextEditingController();
  ScoreCalculation scoreCalculation = ScoreCalculation();
  late int xx;
  late int yy;
   
  FloatingActionButton1() {
    return FloatingActionButton(
      onPressed: () {
        showDialogforfloatingActionButton();
      },
      child: Icon(Icons.settings,
          color: Color.fromRGBO(240, 240, 240, 1), size: 40),
      backgroundColor: Color.fromRGBO(244, 80, 80, 1),
    );
  }

  showDialogforfloatingActionButton() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Color.fromRGBO(60, 72, 107, 0.8),
            title: Lottie.asset(
              'assets/110715-settings.json',
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scoreCalculation.clearAll();
                      Navigator.pop(context);
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    "قيم جديد",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(244, 80, 80, 1)),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(249, 217, 73, 1),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scoreCalculation.Stepback();
                      Navigator.pop(context);
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    "تراجع",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(244, 80, 80, 1)),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(249, 217, 73, 1),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    "الغاء",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(244, 80, 80, 1)),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(249, 217, 73, 1),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                ),
              ],
            ));
      },
    );
  }

  Future<dynamic> showDialog1(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Color.fromRGBO(60, 72, 107, 0.9),
            title: Lottie.asset('assets/134682-confetti.json',
                width: 2000, height: 200),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(" كفو فزتو عليهمم",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        " لهم ${scoreCalculation.yyyr[scoreCalculation.yyy.length - 1]}",
                        style: TextStyle(fontSize: 25)),
                    Text(
                        " لكم ${scoreCalculation.xxxr[scoreCalculation.xxx.length - 1]}",
                        style: TextStyle(fontSize: 25)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scoreCalculation.clearAll();
                      Navigator.pop(context);
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    "قيم جديد",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(244, 80, 80, 1)),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(249, 217, 73, 1),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                )
              ],
            ));
      },
    );
  }

  Future<dynamic> showDialog2(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            backgroundColor: Color.fromRGBO(60, 72, 107, 0.9),
            title: Lottie.asset('assets/95603-reject-1.json',
                width: 2000, height: 200),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(" للاسف فازو عليكم",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 45)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                        " لهم ${scoreCalculation.yyyr[scoreCalculation.yyy.length - 1]}",
                        style: TextStyle(fontSize: 25)),
                    Text(
                        " لكم ${scoreCalculation.xxxr[scoreCalculation.xxx.length - 1]}",
                        style: TextStyle(fontSize: 25)),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      scoreCalculation.clearAll();
                      Navigator.pop(context);
                    });
                  },
                  // ignore: sort_child_properties_last
                  child: Text(
                    "قيم جديد",
                    style: TextStyle(
                        fontSize: 30, color: Color.fromRGBO(244, 80, 80, 1)),
                  ),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Color.fromRGBO(249, 217, 73, 1),
                      shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                      padding: EdgeInsets.symmetric(horizontal: 40)),
                )
              ],
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    // final player = AudioPlayer();
    // player.setAsset('assets/1.mp3');

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(240, 240, 240, 1),
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenheight * 0.45,
              padding: EdgeInsets.fromLTRB(40, 50, 40, 10),
              decoration: BoxDecoration(color: Color.fromRGBO(60, 72, 107, 1)),
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "لنا",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromRGBO(240, 240, 240, 1)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: screenWidth * 0.30,
                            child: TextField(
                              controller: x,
                              cursorColor: Color.fromRGBO(249, 217, 73, 1),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                  fontSize: 30),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color.fromRGBO(244, 80, 80, 1),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(249, 217, 73, 1),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "لهم",
                            style: TextStyle(
                                fontSize: 40,
                                color: Color.fromRGBO(240, 240, 240, 1)),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: screenWidth * 0.30,
                            child: TextFormField(
                              controller: y,
                              cursorColor: Color.fromRGBO(249, 217, 73, 1),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromRGBO(240, 240, 240, 1),
                                  fontSize: 30),
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                    borderSide: BorderSide(
                                      width: 2,
                                      color: Color.fromRGBO(244, 80, 80, 1),
                                    )),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 3,
                                      color: Color.fromRGBO(249, 217, 73, 1),
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0))),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (x.text == "") {
                            x.text = "0";
                          }
                          ;
                          if (y.text == "") {
                            y.text = "0";
                          }
                          ;

                          scoreCalculation.AddToList(
                              int.parse(x.text), int.parse(y.text));
                          scoreCalculation.GetScoreForx();
                          scoreCalculation.GetScoreFory();
                          x.clear();
                          y.clear();
                          if (scoreCalculation
                                      .xxxr[scoreCalculation.xxx.length - 1] >=
                                  152 &&
                              scoreCalculation
                                      .xxxr[scoreCalculation.xxx.length - 1] >
                                  scoreCalculation
                                      .yyyr[scoreCalculation.xxx.length - 1]) {
                            // player.play();
                            showDialog1(context);
                          }
                          if (scoreCalculation
                                      .yyyr[scoreCalculation.xxx.length - 1] >=
                                  152 &&
                              scoreCalculation
                                      .yyyr[scoreCalculation.xxx.length - 1] >
                                  scoreCalculation
                                      .xxxr[scoreCalculation.xxx.length - 1]) {
                            // player.play();
                            showDialog2(context);
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Color.fromRGBO(249, 217, 73, 1),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Color.fromRGBO(240, 240, 240, 1),
                          padding: EdgeInsets.symmetric(horizontal: 40)),
                      child: Text(
                        "سجل",
                        style: TextStyle(
                            fontSize: screenWidth * (0.09),
                            color: Color.fromRGBO(244, 80, 80, 1)),
                      )),
                ]),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 15),
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(60, 72, 107, 1),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 20.0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: scoreCalculation.xxx.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Text(
                                  "${scoreCalculation.xxx[index]}",
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Color.fromRGBO(240, 240, 240, 1)),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  height: 2,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 80, 80, 1),
                                  ),
                                ),
                                Text(
                                  "${scoreCalculation.xxxr[index]}",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(240, 240, 240, 1),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      height: 500,
                      width: 3,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(249, 217, 73, 1),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        itemCount: scoreCalculation.yyy.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              children: [
                                Text("${scoreCalculation.yyy[index]}",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color:
                                            Color.fromRGBO(240, 240, 240, 1))),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 5),
                                  height: 2,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 80, 80, 1),
                                  ),
                                ),
                                Text(
                                  "${scoreCalculation.yyyr[index]}",
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Color.fromRGBO(240, 240, 240, 1),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton1(),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      ),
    );
  }
}
