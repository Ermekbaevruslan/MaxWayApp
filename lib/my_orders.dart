import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'my_orders2.dart';

class Buyurtma extends StatefulWidget {
  const Buyurtma({super.key});

  @override
  State<Buyurtma> createState() => _BuyurtmaState();
}

class _BuyurtmaState extends State<Buyurtma> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Color(0xffffffff),
        //centerTitle: false,
        toolbarHeight: 120,
        title: const Padding(
          padding: EdgeInsets.only(bottom: 50, top: 68),
          child: Text(
            "Мои заказы",
            style: TextStyle(fontSize: 28, color: Color(0xff000000)),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size(400, 32),
          child: Padding(
            padding: const EdgeInsets.only(left: 13, bottom: 12, right: 19),
            child: Container(
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.91),
                color: Color(0xffEFEFF4),
              ),
              child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.96),
                    border: Border.all(width: 2, color: Color(0xffEFEFF4)),
                    // Creates border
                    color: Colors.white,
                  ),
                  tabs: const [
                    Text(
                      "Текущие заказы",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    Text(
                      "История заказов",
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ]),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Order(),
          Column(
            children: [
              Container(
                width: 400,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
                    child:  Image(image: AssetImage("assets/qa.png"))
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 