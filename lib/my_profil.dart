

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
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Ruslan",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Text(
                  "+9989344545",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(
                  //   builder: (context) {
                  //     return const ProfilniTahrirlash();
                  //   },
                  // ));
                },
                icon: Icon(
                  Icons.edit,
                  color: Colors.purple,
                  size: 30,
                ))
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const Filiallar(),
                  //     ));
                },
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Icon(
                        CupertinoIcons.location,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Filiallar",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey[280],
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(


onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const Manzil(),
                  //     ));
                },
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Icon(
                        CupertinoIcons.location_solid,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Mening manzillarim",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey[280],
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const Sozlamalar(),
                  //     ));
                },
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Icon(
                        CupertinoIcons.settings,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sozlamalar",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey[280],
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => const Xizmatlar(),
                  //     ));
                },
                child: Row(
                  children: [
                    Container(
                      width: 45,


height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Icon(
                        CupertinoIcons.exclamationmark_square,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Xizmat haqida",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey[280],
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () => _dialogBuilder(context),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[300]),
                      child: Icon(
                        CupertinoIcons.square_arrow_right,
                        size: 30,
                        color: Colors.purpleAccent,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Chiqish",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 170,
                    ),
                    Icon(
                      CupertinoIcons.right_chevron,
                      color: Colors.grey[280],
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
      backgroundColor: Colors.grey[300],
    );
  }


Future<void> _dialogBuilder(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        title: Center(
          child: const Text(
            "Diqqat!",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        content: Text("        Profildan chiqishni xoxlaysizmi",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[500],
            )),
        actions: [
          ElevatedButton(
            style: TextButton.styleFrom(
              minimumSize: Size(140, 40),
              textStyle: Theme.of(context).textTheme.labelLarge,
              backgroundColor: Colors.grey[400],
            ),
            child: Text("Bekor qilish", style: TextStyle(color: Colors.black)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          ElevatedButton(
            style: TextButton.styleFrom(
                minimumSize: Size(140, 40),
                textStyle: Theme.of(context).textTheme.labelLarge,
                backgroundColor: Colors.purpleAccent),
            child: Text("Ha"),
            onPressed: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => HomePage(),
              //     ));
            },
          ),
        ],
      ),
    );
  }
}