import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

String results = "";
Color colorbut1 = Colors.grey.shade600;
Color colorbut2 = Colors.grey.shade800;
Color colorbut3 = Colors.orange;
Color colortext = Colors.white;
Color colorback = Colors.black;

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorback,
      ),
      drawer: Drawer(),
      backgroundColor: colorback,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextField(
            textAlign: TextAlign.end,
            enabled: false,
            controller: TextEditingController(text: results),
            style: TextStyle(fontSize: 40.0, height: 1.0, color: colortext),
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                fillColor: Colors.transparent,
                filled: true),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    results = results + "7";
                    print(results);
                  });
                },
                child: Text(
                  "7",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: colorbut1,
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                      MediaQuery.of(context).size.width * 0.25),
                  shape: CircleBorder(),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "8";
                      print(results);
                    });
                  },
                  child: Text(
                    "8",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "9";
                      print(results);
                    });
                  },
                  child: Text(
                    "9",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var str1 = "";

                      if (results != "") {
                        str1 = results.substring(
                            results.length - 1, results.length);
                        print("working1");
                      }
                      print(str1);
                      if ((str1 == '+' ||
                              str1 == '-' ||
                              str1 == 'x' ||
                              str1 == '÷') &&
                          results != "") {
                        results =
                            results.substring(0, results.length - 1) + "÷";
                      } else {
                        print(str1);
                        results = results + "÷";
                        print(results);
                      }
                    });
                  },
                  child: Text(
                    "÷",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut2,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "4";
                      print(results);
                    });
                  },
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "5";
                      print(results);
                    });
                  },
                  child: Text(
                    "5",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "6";
                      print(results);
                    });
                  },
                  child: Text(
                    "6",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var str1 = "";

                      if (results != "") {
                        str1 = results.substring(
                            results.length - 1, results.length);
                        print("working1");
                      }
                      print(str1);
                      if ((str1 == '+' ||
                              str1 == '-' ||
                              str1 == 'x' ||
                              str1 == '÷') &&
                          results != "") {
                        results =
                            results.substring(0, results.length - 1) + "x";
                      } else {
                        print(str1);
                        results = results + "x";
                        print(results);
                      }
                    });
                  },
                  child: Text(
                    "x",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut2,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "1";
                      print(results);
                    });
                  },
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "2";
                      print(results);
                    });
                  },
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "3";
                      print(results);
                    });
                  },
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var str1 = "";

                      if (results != "") {
                        str1 = results.substring(
                            results.length - 1, results.length);
                        print("working1");
                      }
                      print(str1);
                      if ((str1 == '+' ||
                              str1 == '-' ||
                              str1 == 'x' ||
                              str1 == '÷') &&
                          results != "") {
                        results =
                            results.substring(0, results.length - 1) + "-";
                      } else {
                        print(str1);
                        results = results + "-";
                        print(results);
                      }
                    });
                  },
                  child: Text(
                    "−",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut2,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + ".";
                      print(results);
                    });
                  },
                  child: Text(
                    ".",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "0";
                      print(results);
                    });
                  },
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = results + "00";
                      print(results);
                    });
                  },
                  child: Text(
                    "00",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut1,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      var str1 = "";

                      if (results != "") {
                        str1 = results.substring(
                            results.length - 1, results.length);
                        print("working1");
                      }
                      print(str1);
                      if ((str1 == '+' ||
                              str1 == '-' ||
                              str1 == 'x' ||
                              str1 == '÷') &&
                          results != "") {
                        results =
                            results.substring(0, results.length - 1) + "+";
                      } else {
                        print(str1);
                        results = results + "+";
                        print(results);
                      }
                    });
                  },
                  child: Text(
                    "+",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut2,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        results = results.replaceAll("x", "*");
                        results = results.replaceAll("÷", "/");
                        // results = results.replaceAll("−", "-");
                        print(results);
                        results = results.interpret().toString();
                        // print("${}");
                      });
                    },
                    child: Text(
                      "=",
                      style: TextStyle(fontSize: 40),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: colorbut3,
                      minimumSize: Size(
                          MediaQuery.of(context).size.width * 0.25,
                          MediaQuery.of(context).size.width * 0.25),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    )),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      results = '';
                      print(results);
                    });
                  },
                  child: Text(
                    "AC",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut2,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  )),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (results.length > 0) {
                        results = results.substring(0, results.length - 1);
                        print(results);
                      }
                    });
                  },
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 40),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: colorbut2,
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.25,
                        MediaQuery.of(context).size.width * 0.25),
                    shape: CircleBorder(),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
