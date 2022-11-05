import 'package:flutter/material.dart';

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
          image: AssetImage('assets/digiphoto.png'),
          alignment: AlignmentDirectional.topCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(),
            Container(
              padding: EdgeInsets.only(left: 35, top: 130),
              child: Text(
                'Sign In to your Account',
                style: TextStyle(color: Colors.white, fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                hintText: "Mobile Number/Adhaar",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style: TextStyle(),
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
                                    fontSize: 27, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
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
                                      decoration: TextDecoration.underline,
                                      color: Colors.white,
                                      fontSize: 15),
                                ),
                                style: ButtonStyle(),
                              ),
                              SizedBox(
                                height: 40,
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
                              // )
                            ],
                          ),
                        ],
                      ),
                    ),Container(height:300,width:300,alignment:Alignment(0,-5),margin:EdgeInsets.fromLTRB(1,0,0,10),child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Security Pin',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.purple,
                            fontSize: 15,
                          ),
                        ))),
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
