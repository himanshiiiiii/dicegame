import 'package:flutter/material.dart';
import 'dart:math';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/dice.jpg'),
          fit:BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            // Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Sign In to Play',
                style: TextStyle(color: Colors.red,
                    fontFamily: 'Pacifico',
                    fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 35, right: 35),
                      child: Column(
                        children: [
                          TextField(
                            style: TextStyle(color: Colors.blueAccent),
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Mobile Number/Email",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(color: Colors.blueAccent),
                            obscureText: true,
                            decoration: InputDecoration(
                                fillColor: Colors.grey.shade100,
                                filled: true,
                                hintText: "Password",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 27,
                                    color:Colors.white,
                                    fontFamily: 'Pacifico',
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'register');
                                },
                                child: Text(
                                  'Do not have a account? Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      // decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontFamily: 'Pacifico',
                                      fontSize: 20),
                                ),
                                style: ButtonStyle(),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              // Row(
                              //   mainAxisAlignment:
                              //       MainAxisAlignment.spaceBetween,
                              //   children: [
                              //     TextButton(
                              //       onPressed: () {
                              //         Navigator.pushNamed(context, 'register');
                              //       },
                              //       child: Text(
                              //         'Forgot your password?',
                              //         textAlign: TextAlign.left,
                              //         style: TextStyle(
                              //             decoration: TextDecoration.underline,
                              //             color: Colors.white,
                              //             fontSize: 18),
                              //       ),
                              //       style: ButtonStyle(),
                              //     ),
                              //   ],
                              // ),
                              // Con

                              //   ],
                              //
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                        // height:300,
                        // width:300,
                        alignment:Alignment(-0.5,-2),
                        margin:EdgeInsets.fromLTRB(1,0,0,3),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context)=>Dice()
                                ),
                              );
                            },
                        child: Text(
                          'Tap To Roll Dice',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.red,
                            fontFamily: 'Pacifico',
                            fontSize: 20,
                          ),
                        )

                        )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Dice extends StatefulWidget {
  
  const Dice({Key? key}) : super(key: key);
  
  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  // var pl1=0;
  // var pl2=0;
  int score=0;
  var scoremax;
  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice Roll',
          style: TextStyle(
            fontSize: 30.0,
              fontFamily :'Pacifico',
          ),
        ),
      ),
      body:Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Expanded(
                flex: (1),
                child:TextButton(
                  child: Image.asset(
                    'assets/dice$leftDiceNumber.png',
                  ),
                  onPressed: () {
                    changeDiceFace();
                  },
                ),
              ),
            ),
            Text('SCORE'
                ' :$scoremax',
            style:TextStyle(
              fontSize: 30,
                  color: Colors.red,
                  fontFamily: 'Pacifico'
            ) ,
            ),
            SizedBox(height: 20.0,),
            Expanded(
              flex: (1),
              child:TextButton(
                child: Image.asset(
                  'assets/dice$rightDiceNumber.png',
                ),
                onPressed: () {
                  changeDiceFace();
                  if(leftDiceNumber==rightDiceNumber)
                  {
                    score++;
                   scoremax=score;
                  }
                  print(scoremax);
                },
              ),
            ),

          ],
        ),

      ) ,
    );
  }
}
