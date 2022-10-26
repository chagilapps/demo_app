import 'package:demo_app/top_layer_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Home(),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_rounded),label: "demo"),
          BottomNavigationBarItem(icon: Icon(Icons.save ),label: "demo"),
        ],),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    var imageH = w*1.777604977;
    return Container(
      // height,
      child: Stack(children: [
        Container(color: Color(0xFF091025),),
        Center(child: Image.asset("assets/bg.png",width: w,height: imageH,)),
        Center(child: Container(height: imageH,width: w,child: TopLayerView(h: imageH,w: w,))),
        Center(child: Text("h: ${MediaQuery.of(context).size.height.toString()}",style: TextStyle(color: Colors.amberAccent,fontSize: 50),),),


      ]),
    );
  }
}

