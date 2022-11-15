import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:maxwayy/burger.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key}) : super(key: key);
  @override
  State<MyHomePage2> createState() => _MyHomePage2State();
}

class _MyHomePage2State extends State<MyHomePage2> {
  int _counter = 1;
  void ayirma(index) {}
  void hisobla() {
    setState(() {
      _counter++;
    });
  }

  List son = List.generate(4, (index) => 1);
  List isTrue = List.generate(4, (index) => true);
  List son1 = List.generate(4, (index) => 1);
  List isTrue1 = List.generate(4, (index) => true);
  List<bool> onTrue = List.generate(5, (index) => true);
  bool Istrue = true;
  late List<String> str;
  late List image;
  late List<String> str2;
  @override
  void initState() {
    str2 = [
      "Сендвич",
      "Сендвич",
      "Клаб-сендвич",
      "Холодный сендвич",
    ];
    image = [
      "assets/re1.png",
      "assets/re2.png",
      "assets/re3.png",
      "assets/re4.png",
    ];
    str = ["Бургеры", "Сендвич", "Лаваш", "Картошки", "Соусы"];
    super.initState();
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFDFDF),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
        elevation: 0,
        backgroundColor: Color(0xffFFFFFF),
        title: Container(
          child: TextField(),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(6, 12, 0, 12),
              child: Container(
                height: 50,
                color: Color(0xffDFDFDF),
                child: ListView.builder(
                  itemCount: str.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(6),
                      child: InkWell(
                        onTap: () {
                          onTrue[index] = !onTrue[index];
                          setState(() {});
                        },
                        child: Container(
                          child: Center(
                              child: Text(
                            str[index],
                            style: TextStyle(color: onTrue[index] ?Colors.black:Colors.white, fontSize: 20),
                          )),
                          width: 95,
                          height: 36,
                          decoration: BoxDecoration(
                            color: onTrue[index]
                                ? Colors.white
                                : Color(0xff51267D),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          })),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
              child: Text(
                "Рекомендуем",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 1, (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Container2(image: image),
              ),
            );
          })),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 8, 0, 0),
              child: Text(
                "Бургеры",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 230,
            ),
            delegate:
                SliverChildBuilderDelegate(childCount: 4, (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 230,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/MyBurger2');
                              setState(() {});
                            },
                            child: Container(
                              height: 124,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 217, 215, 215),
                                image: DecorationImage(
                                  image: AssetImage("assets/burger.png"),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 70, 0),
                            child: Text(
                              "Макс Бургер",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Istrue = !Istrue;
                              isTrue1[index] = !isTrue1[index];
                              setState(() {});
                            },
                            child: isTrue1[index]
                                ? Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 8, 8),
                                    child: Container(
                                      height: 40,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            Color.fromARGB(255, 217, 215, 215),
                                      ),
                                      child: Container(
                                        height: 40,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Color.fromARGB(
                                              255, 217, 215, 215),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "25 000 сум ",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 40,
                                          width: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Color.fromARGB(
                                                255, 217, 215, 215),
                                          ),
                                          child: IconButton(
                                              onPressed: () {
                                                SnackBar(
                                                    content: Container(
                                                  color: Colors.black,
                                                ));
                                                setState(() {
                                                  son1[index]--;
                                                  if (son1[index] < 1) {
                                                    son1[index] = 1;
                                                    Istrue = !Istrue;
                                                    isTrue1[index] =
                                                        !isTrue1[index];
                                                  }
                                                  setState(() {});
                                                  _counter = 1;
                                                });
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
                                            color: Color.fromARGB(
                                                255, 217, 215, 215),
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              son1[index]++;
                                              setState(() {});
                                            },
                                            icon: Icon(Icons.add),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Сендвич",
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 230),
            delegate:
                SliverChildBuilderDelegate(childCount: 4, (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                height: 230,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 230,
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
                              onTap: () {
                                Navigator.pushNamed(context, '/MyBurger');
                                setState(() {});
                              },
                              child: Container(
                                height: 120,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/sendvich.png"),
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            Text(
                              "${str2[index]}",
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
                                isTrue[index] = !isTrue[index];

                                setState(() {});
                              },
                              child: isTrue1[index]
                                  ? Container(
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
                                          child: Text(
                                            "25 000 сум",
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
                                              onPressed: () {
                                                setState(() {
                                                  son[index]--;
                                                  if (son[index] < 1) {
                                                    son[index] = 1;
                                                    Istrue = !Istrue;
                                                    isTrue[index] =
                                                        !isTrue[index];
                                                  }
                                                  setState(() {});
                                                  _counter = 1;
                                                });
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
                                            onPressed: () {
                                              son[index]++;
                                              setState(() {});
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
              );
            }),
          ),
        ],
      ),
    );
  }
}

class Container2 extends StatelessWidget {
  const Container2({
    Key? key,
    required this.image,
  }) : super(key: key);

  final List image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Color(0xffDFDFDF),
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(6),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/MyBurger");
              },
              child: Container(
                width: 120,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("${image[index]}")),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
