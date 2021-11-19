import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
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
Color colordrawericon = Colors.white;

class _CalculatorState extends State<Calculator> {
  light() {
    setState(() {
      print("Light");
      colorbut1 = Colors.grey.shade600;
      colorbut2 = Colors.blue;
      colorbut3 = Colors.blue.shade900;
      colortext = Colors.black;
      colorback = Colors.white;
      colordrawericon = Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: colorback,
        elevation: 0,
        iconTheme: IconThemeData(color: colortext),
      ),
      drawer: Drawer(
        child: Container(
          //child: Your widget,
          color: colorback,
          width: double.infinity,
          height: double.infinity,
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 100.0,
                  child: DrawerHeader(
                    margin: EdgeInsets.all(0.0),
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "Calculator",
                      style: TextStyle(
                          color: colortext,
                          fontSize: MediaQuery.of(context).size.width * 0.1),
                    ),
                  ),
                ),
                Text(
                  "Themes",
                  style: TextStyle(
                      color: colortext,
                      fontSize: MediaQuery.of(context).size.width * 0.05),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      colorbut1 = Colors.grey.shade600;
                      colorbut2 = Colors.grey.shade800;
                      colorbut3 = Colors.orange;
                      colortext = Colors.white;
                      colorback = Colors.black;
                      colordrawericon = Colors.white;
                    });
                  },
                  child: ListTile(
                    title: Text(
                      "Dark",
                      style: TextStyle(color: colortext),
                    ),
                    trailing: Wrap(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade800,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade600,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    light();
                  },
                  child: ListTile(
                    title: Text(
                      "Light",
                      style: TextStyle(color: colortext),
                    ),
                    trailing: Wrap(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                        )
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      colorbut1 = Colors.orange;
                      colorbut2 = Colors.blue.shade900;
                      colorbut3 = Colors.red;
                      colortext = Colors.blue.shade900;
                      colorback = Colors.white;
                      colordrawericon = Colors.blue.shade900;
                    });
                  },
                  child: ListTile(
                    title: Text(
                      "Colored",
                      style: TextStyle(color: colortext),
                    ),
                    trailing: Wrap(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    child: Text("Developed by SHAHZEB"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
                contentPadding: EdgeInsets.only(bottom: 20),
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
