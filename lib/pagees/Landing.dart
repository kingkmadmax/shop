import 'package:flutter/material.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 231),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align to the left
        children: [
          SizedBox(height: 100), // Adds some space above the image
          Image.asset(
            'images/front.jpg',
            width: 430.0, // Adjust width as needed
            fit: BoxFit.cover, // Keeps the aspect ratio
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "The Greatest\n Products in\n Ethiopia",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 20, // Adds space between the text and the button
          ),
          Expanded(
            // This widget expands to fill available space
            child: Align(
              alignment: Alignment
                  .bottomRight, // Aligns the button at the bottom right
              child: Container(
                padding: EdgeInsets.all(35),
                decoration:
                    BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                child: Text(
                  "Next  ",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
