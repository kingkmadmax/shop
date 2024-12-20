import 'package:flutter/material.dart';
import 'package:shop/support_widgets.dart';

class ProductDetl extends StatefulWidget {
  const ProductDetl({super.key});

  @override
  State<ProductDetl> createState() => _ProductDetlState();
}

class _ProductDetlState extends State<ProductDetl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.only(top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 20.0),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(30)),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                      ),
                    ),
                  ),
                  Center(
                      child: Image.asset(
                    "images/1.png",
                    height: 300,
                  ))
                ]),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(left: 30.0, top: 30, right: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(70),
                          topRight: Radius.circular(50))),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "sweter",
                            style: Appwidget.FeildStyle(),
                          ),
                          Text("\$100", style: Appwidget.lightstyle()),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text("Detiles", style: Appwidget.FeildStyle()),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                          """this is one of the stylishe cloSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSthat you can by so what are you weting for coame and by it now  """),
                      SizedBox(
                        height: 150,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color: Color(0xFFfd6f3e),
                            borderRadius: BorderRadius.circular(10)),
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Text("Buy now", style: Appwidget.BuyNow())),
                      )
                    ],
                  ),
                ))
              ],
            )),
      ),
    );
  }
}
