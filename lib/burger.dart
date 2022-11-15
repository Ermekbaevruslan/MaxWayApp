import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyBurger extends StatefulWidget {
  const MyBurger({Key? key}) : super(key: key);

  @override
  State<MyBurger> createState() => _MyBurgerState();
}

class _MyBurgerState extends State<MyBurger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,iconTheme: IconThemeData(color: Colors.black),
        title: Center(child: Text("Акции",style: TextStyle(color: Colors.black))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/myburger.png"))
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 270, 12),
              child: Container(
                child: Text("Рамазан-сет",style: TextStyle(fontSize: 17),),
              ),
            ),
            Container(
              child: Text("Сочное донар-блюдо, финики и минеральная вода-вкусный и ситный набор для Ифтара! "
                           "Акция действует во всех филиалах и на заказы с доставкой",style: TextStyle(fontSize: 15),),
            ),
          ],
        ),
      ),
    );
  }
}