import 'package:flutter/material.dart';
import 'package:shop/support_widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        // width: MediaQuery.of(context).size.width, // Full screen width
        // height: MediaQuery.of(context).size.height, // Full screen height
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          // crossAxisAlignment: CrossAxisAlignment.center, // Center horizontally
          children: [
            Container(
              width: 500, // Set the desired width of the image
              height: 300, // Set the desired height of the image
              child: Image.asset(
                "images/login.jpg",
                fit: BoxFit.cover, // Adjust how the image is displayed
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Sign in",
                style: Appwidget.FeildStyle(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Pliesce enter the details below  to\n                     contnue.",
                style: Appwidget.lightstyle(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "Email",
                style: Appwidget.h3(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 126, 161),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "Email"),
                )),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                "pasword",
                style: Appwidget.h3(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                padding: EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 114, 126, 161),
                    borderRadius: BorderRadius.circular(20)),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: "password"),
                )),
            SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Forgat pasword  ",
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ],
            ),
            Container(
                width: 5,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ))
          ],
        ),
      ),
    );
  }
}
