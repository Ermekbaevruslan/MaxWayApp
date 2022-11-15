

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
         backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 252,
                      height: 32,
                      child: Text(
                        "Алишер Тохиров",
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ),
                    ),
                    SizedBox(width:90 ,),
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/EditProfil');
                         setState(() { });
                      },
                      child: Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/Edit Square.png"))
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 4,),
                Container(
                  child: Text(
                    "+998 99 859 91 70",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff818C99),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: 390,
              height: 64,
              decoration: BoxDecoration(
                 color: Color(0xffFFFFFF),
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffDFDFDF),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(image: AssetImage("assets/Location.png"))
                      ),
                    ),
                  ),
                  Container(
                    width: 187,
                    height: 20,
                    child: Text("Филиали",style: TextStyle(color: Color(0xff000000),fontSize: 20),)),
                  SizedBox(width: 100,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffCCCCCC),size: 17,)
                ],
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              width: 390,
              height: 64,
              decoration: BoxDecoration(
                 color: Color(0xffFFFFFF),
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffDFDFDF),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(image: AssetImage("assets/Setting.png"))
                      ),
                    ),
                  ),
                  Container(
                    width: 187,
                    height: 20,
                    child: Text("Настройки",style: TextStyle(color: Color(0xff000000),fontSize: 20),)),
                  SizedBox(width: 100,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffCCCCCC),size: 17,)
                ],
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              width: 390,
              height: 64,
              decoration: BoxDecoration(
                 color: Color(0xffFFFFFF),
                 borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xffDFDFDF),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(image: AssetImage("assets/Info Square.png"))
                      ),
                    ),
                  ),
                  Container(
                    width: 187,
                    height: 20,
                    child: Text("О сервисе",style: TextStyle(color: Color(0xff000000),fontSize: 20),)),
                  SizedBox(width: 100,),
                  Icon(Icons.arrow_forward_ios_rounded,color: Color(0xffCCCCCC),size: 17,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}