import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maxwayy/burger.dart';
import 'package:maxwayy/burger2.dart';
import 'package:maxwayy/my_home_page.dart';
import 'package:maxwayy/my_orders.dart';
import 'package:maxwayy/my_profil.dart';
import 'package:maxwayy/profil.page/edit_profile.dart';
import 'package:maxwayy/profil.page/maksi_populyarniy.dart';

import 'my_home_page.dart';

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
      case '/Profil':
      return MaterialPageRoute(builder: ((context)=> Profil()));
       case '/MyBurger':
      return MaterialPageRoute(builder: ((context)=> MyBurger()));
          case '/MyBurger2':
      return MaterialPageRoute(builder: ((context)=> MyBurger2()));
      case '/EditProfil':
      return MaterialPageRoute(builder: ((context)=> EditProfil()));
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
    MyHomePage2(),
    Buyurtma(),
    Profil(),
    ];
    activePage = 0;
    setState(() {  });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
    body: pages[activePage],
 
    bottomNavigationBar: BottomNavigationBar(
      fixedColor: Color(0xff51267D),
      currentIndex: activePage,
      onTap: ((value) {
        activePage =value;
        setState(() { });
           }),
      items: [
        BottomNavigationBarItem(
          activeIcon: Image(image: AssetImage("assets/active_home.png",)),
          icon: Image(image: AssetImage("assets/Home.png")),label: "Главная",),
        BottomNavigationBarItem(
          activeIcon: Image(image: AssetImage("assets/active_buy.png",)),
          icon: Image(image: AssetImage("assets/buy.png")),label: "Мои заказы" ),
        BottomNavigationBarItem(
          activeIcon: Image(image: AssetImage("assets/active_profile.png",)),
          icon: Image(image: AssetImage("assets/Profile.jpg")),label: "Личное" ),
        ]),
      
    
    );
  }
}
