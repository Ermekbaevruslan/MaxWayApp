import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maxwayy/home%20page/maxway1.dart';
import 'package:maxwayy/page1.dart';
import 'package:maxwayy/profil.page/maksi_populyarniy.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _counter =1;
  void ayirma(index){
      
     }

     void hisobla(){
      setState(() {
        _counter++;
      });
     }
     List son=List.generate(8, (index) => 1);
     List isTrue=List.generate(8, (index) => true);
        List son1=List.generate(8, (index) => 1);
     List isTrue1=List.generate(8, (index) => true);
  late bool Istrue =true;
  late bool dstrue =true;
  late bool strue =true;
  late bool sstrue =true;
  late bool astrue =true;
  late bool wstrue =true;
  late bool rstrue =true;
  late bool tstrue =true;
   late List<String> summa;
   late List rasm;
   late List imgList;
  @override
  void initState() {
    summa =[
     "35 000 сум",
     "30 000 сум",
     "30 000 сум",
     "30 000 сум"
      ];
    setState(() {
      
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
         backgroundColor: Colors.white,
         elevation: 0,
        title: Container(
          child: TextField(),
        ),
      ),
      body: Container(
        width: 500,
        
        child: ListView(
        scrollDirection: Axis.vertical,
          children :[ Container(
            child: Column(
              children: [
              Container(
                color: Colors.grey[300],
                child: Column(
                  children: [
                     SizedBox(height: 12,),
                     Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/MyHome1');
                      setState(() { });
                    },
                    child: Container(
                      width: 127,
                      height: 110,
                      decoration: BoxDecoration(
                       image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/10.jpeg")),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                     Navigator.pushNamed(context, '/MyHome2');
                     setState(() { });
                    },
                    child: Container(
                      width: 127,
                      height: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/11.jpeg")),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                   GestureDetector(
                    onTap: () {
                     Navigator.pushNamed(context, '/MyHome3');
                     setState(() { });
                    },
                    child: Container(
                      width: 127,
                      height: 110,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/12.jpeg")),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
               ),
               Padding(
                 padding: const EdgeInsets.all(15),
                 child: Container(
                  height: 40,
                   child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                         onTap: () {
                            strue = !strue;
                             setState(() {});
                           },
                        child: Container(
                          width: 95,
                          child: Center(child: Text("Макси бокс",style: TextStyle(color:  strue?Colors.black:Colors.white),)),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                           color: strue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                          ),  
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            dstrue = !dstrue;
                             setState(() {});
                           },
                          child: Container(
                            width: 95,
                            child: Center(child: Text("Лаваш",style: TextStyle(color:  dstrue?Colors.black:Colors.white),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: dstrue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                            ),  
                          ),
                        ),
                      ),
                     Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            sstrue = !sstrue;
                             setState(() {});
                           },
                          child: Container(
                            width: 95,
                            child: Center(child: Text("Клаб-сендвич",style: TextStyle(color:  sstrue?Colors.black:Colors.white),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: sstrue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                            ),  
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            astrue = !astrue;
                             setState(() {});
                           },
                          child: Container(
                            width: 95,
                            child: Center(child: Text("Шаурма",style: TextStyle(color:  astrue?Colors.black:Colors.white),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: astrue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                            ),  
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            wstrue = !wstrue;
                             setState(() {});
                           },
                          child: Container(
                            width: 95,
                            child: Center(child: Text("Донер кебаб",style: TextStyle(color:  wstrue?Colors.black:Colors.white),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: wstrue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                            ),  
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            rstrue = !rstrue;
                             setState(() {});
                           },
                          child: Container(
                            width: 95,
                            child: Center(child: Text("Бургери",style: TextStyle(color:  rstrue?Colors.black:Colors.white),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: rstrue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                            ),  
                          ),
                        ),
                      ),
                        Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: InkWell(
                          onTap: () {
                            tstrue = !tstrue;
                             setState(() {});
                           },
                          child: Container(
                            width: 95,
                            child: Center(child: Text("Хот-дог",style: TextStyle(color:  tstrue?Colors.black:Colors.white),)),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                             color: tstrue?Colors.white:Color.fromARGB(255, 113, 54, 162), 
                            ),  
                          ),
                        ),
                      ),
                    ],
                   ),
                 ),
               ),
                Container(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                     child: Text("Макси бокс",style: TextStyle(fontSize: 25),),
                  ),
                     Container(
                     width: 400,
                       child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        physics:NeverScrollableScrollPhysics() ,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                         
                       mainAxisExtent: 250,
                        crossAxisCount: 2
                                        
                       ),
                        itemBuilder:(context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            height: 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 250,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    InkWell(
                                      splashColor: Colors.grey,
                                      onTap: () => Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return Populyarniy();
                                      })),
                                      child: Container(
                                        height: 120,
                                        decoration: BoxDecoration(
                                         image: DecorationImage(
                                           image: AssetImage("assets/maksi1.jpeg"),
                                         ),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Макси Бокс           Популярный КЦ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                    onTap: () {
                                        Istrue = !Istrue;
                                        isTrue1[index]=!isTrue1[index];
                                      
                                        setState(() {});
                                      },
                                      child: isTrue1[index]? Container(
                                              height: 30,
                                              width: 170,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.grey[300],
                                              ),
                                              child: Container(
                                                height: 30,
                                                width: 170,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.grey[300],
                                                ),
                                                child: Center(
                                                  child: Text(summa[index],
                                                    style: TextStyle(fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.grey[300],
                                                   ),
                                                  child: IconButton(
                                                     onPressed:(){
                                                   
    
                                                             setState(() {  
                                                         son1[index]--;
                                                         if(son1[index]<1){
                                                          son1[index]=1;
                                                          Istrue =!Istrue;
                                                          isTrue1[index]=!isTrue1[index];
                                                         }
                                                       setState(() {
                                                         
                                                       });
                                                   _counter =1;
                                                              }
                                                            );

                                                      },
                                                      icon: Icon(
                                                        Icons.remove,
                                                      )),
                                                ),
                                                Text("${son1[index]}"),
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.grey[300],
                                                  ),
                                                  child: IconButton(
                                                      onPressed: (){
                                                       son1[index]++;
                                                       setState(() {
                                                         
                                                       });
                                                    },
                                                    icon: Icon(Icons.add),
                                                  ),
                                                ),
                                              ],
                                            ),
                                      
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                                    );}
                                         ),
                     ),
                
                  ],
                ),
               ),
               
             Container(
                child: Column(
                  children: [
                    Container(
                      width: 400,
                     child: Text("Лаваш",style: TextStyle(fontSize: 25),),
                  ),
                     Container(
                     width: 400,
                       child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 8,
                        physics:NeverScrollableScrollPhysics() ,
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                         
                       mainAxisExtent: 250,
                        crossAxisCount: 2
                                        
                       ),
                        itemBuilder:(context, index) {
                          return Container(
                            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            height: 260,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 250,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    InkWell(
                                      splashColor: Colors.grey,
                                      onTap: () => Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return MyWidget();
                                      })),
                                      child: Container(
                                        height: 120,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage("assets/15.jpeg"),
                                          ),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Lavash Kuriniy   Standart Cheese",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Istrue = !Istrue;
                                        isTrue[index]=!isTrue[index];
                                      
                                        setState(() {});
                                      },
                                      child: isTrue[index]? Container(
                                              height: 30,
                                              width: 170,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.grey[300],
                                              ),
                                              child: Container(
                                                height: 30,
                                                width: 170,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  color: Colors.grey[300],
                                                ),
                                                child: Center(
                                                 child: Text("20 000 сум",
                                                   style: TextStyle(fontSize: 18),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.grey[300],
                                                   ),
                                                  child: IconButton(
                                                      onPressed:(){
                                                   
    
                                                             setState(() {  
                                                         son[index]--;
                                                         if(son[index]<1){
                                                          son[index]=1;
                                                          Istrue =!Istrue;
                                                          isTrue[index]=!isTrue[index];
                                                         }
                                                       setState(() {
                                                         
                                                       });
                                                   _counter =1;
                                                              }
                                                            );

                                                      },
                                                      icon: Icon(
                                                        Icons.remove,
                                                      )),
                                                ),
                                                Text("${son[index]}"),
                                                Container(
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(10),
                                                    color: Colors.grey[300],
                                                  ),
                                                  child: IconButton(
                                                    onPressed: (){
                                                       son[index]++;
                                                       setState(() {
                                                         
                                                       });
                                                    },
                                                    icon: Icon(Icons.add),
                                                  ),
                                                ),
                                              ],
                                            ),
                                      
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                                    );}
                                         ),
                     ),
                
                  ],
                ),
               )
                  ],
                ),
              ),
              ],
            ),
          ),
          ]
        ),
      ),
    );
  }
}

