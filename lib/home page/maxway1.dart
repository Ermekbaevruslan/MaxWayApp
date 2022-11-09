import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome1 extends StatefulWidget {
   MyHome1({this.name});
   String? name;
  @override
  State<MyHome1> createState() => _MyHome1State();
}

class _MyHome1State extends State<MyHome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 234, 212, 212),
      appBar: AppBar(
        title: Center(child: Text("Акции")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Container(
          width: 500,
          height: 216,
          decoration: BoxDecoration(
             color: Colors.white,
            borderRadius: BorderRadius.circular(15)
          ),
          child: Column(
            children: [
              Container(
               width: 500,
               height: 140,
               decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/10.jpeg")),
               ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Container(
                  width: 400,
                  child: Text("Максим бокс",style: TextStyle(fontSize: 20),),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 10),
                 child: Container(
                  width: 400,
                  child: Text("Максим бокс"),
              ),
               )
            ],
          ),
        ),
      ),
    );
  }
}