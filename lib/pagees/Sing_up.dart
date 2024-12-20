import 'package:flutter/material.dart';
import 'package:shop/pagees/login.dart';
import 'package:shop/support_widgets.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: SingleChildScrollView(
        child: Container(
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
                  "Sign Up",
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
                  "Name",
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
                        border: InputBorder.none, hintText: "User name"),
                  )),
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
              SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width / 2,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 31, 117, 18),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Sing up",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "dont have an accont?  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(),
                        ),
                      );
                    },
                    child: Text(
                      "Log in",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
