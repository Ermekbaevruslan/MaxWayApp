import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxwayy/func.dart';
import 'package:maxwayy/my_home_page.dart';
import 'package:maxwayy/my_orders.dart';
import 'package:maxwayy/my_profil.dart';
import 'package:maxwayy/profil.page/maksi_populyarniy.dart';

import 'home page/maxway1.dart';
import 'home page/maxway2.dart';
import 'home page/maxway3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.routes,
    );
  }
}

class RouteGenerator{
 

  static Route<dynamic>? routes(RouteSettings settings){
    switch (settings.name) {
      case '/':
      return MaterialPageRoute(builder: ((context)=> HomePage()));
         case '/MyHome1':
      return MaterialPageRoute(builder: ((context)=> MyHome1()));
        case '/MyHome2':
      return MaterialPageRoute(builder: ((context)=> MyHome2()));
       case '/MyHome3':
      return MaterialPageRoute(builder: ((context)=> MyHome3()));
       case '/Populyarniy':
      return MaterialPageRoute(builder: ((context)=> Populyarniy()));
    }
    return null;
  }
}


class HomePage extends StatefulWidget {
   HomePage({this.name});
   String? name;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int activePage;
  late List pages;
  @override
  void initState(){
    pages =[
    MyHomePage(),
    MyOrders(),
    Profil()
    ];
    activePage = 0;
    setState(() {  });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
    body: pages[activePage],

    bottomNavigationBar: BottomNavigationBar(
      currentIndex: activePage,
      onTap: ((value) {
        activePage =value;
        setState(() { });
        debugPrint(value.toString());
      }),
      items: [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label:'Главная'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label:'Мои заказы'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp),label:'Личное'),
        
      ]),
      
    
    );
  }
}