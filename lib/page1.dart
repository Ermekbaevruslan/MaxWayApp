import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
                 maxCrossAxisExtent: 100,
                childAspectRatio: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20
                 ), itemBuilder: (context, index){
                  return Container();
                 } ),
    );
  }
}