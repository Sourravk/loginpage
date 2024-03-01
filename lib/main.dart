import 'package:flutter/material.dart';

void main() {
  runApp(const signin());
}

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: BackButton(),
          ),
          body: Column(
            children: [
              Row(
                children: [
                  Text(
                    "sign in",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Center(
                  child: Column(children: [
                SizedBox(
                  width: 10,
                  height: 100,
                ),
                Container(
                  width: 600,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)),
                        labelText: 'email address'),
                  ),
                ),
                Container(
                  width: 600,
                  height: 100,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      labelText: 'password',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: null,
                  style: TextButton.styleFrom(backgroundColor: Colors.red),
                  child: Text(
                    'login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  'or',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  onPressed: null,
                  style:
                      TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                  child: Text(
                    'facebook login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                )
              ])),
            ],
          )),
    );
  }
}
