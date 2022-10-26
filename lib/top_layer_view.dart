import 'package:flutter/material.dart';

class TopLayerView extends StatefulWidget {
  var h,w;
   TopLayerView({Key? key,required this.h,required this.w}) : super(key: key);

  @override
  State<TopLayerView> createState() => _TopLayerViewState();
}

class _TopLayerViewState extends State<TopLayerView> {
  bool isPlaying = false;

  changeButton (){
    setState(() {
      isPlaying = !isPlaying;
    });
  }
  @override
  Widget build(BuildContext context) {
   double height = widget.h;
   double  width = widget.w;
    return Row(
      children: [
        Expanded(
          flex:  4172406132,
            child: Container(child: Text((width *0.4172406132).toString() ),)),
        Expanded(
            flex:  1655187736,
            child: Container(child: Column(
              children: [
                Expanded(
                    flex:  60504936883,
                    child: Container(child: Text((width *0.60504936883).toString() ),)),
                Expanded(
                    flex:  9311336083,
                    child: Container(child:
                    Center(
                      child: InkWell(
                          onTap: changeButton,
                          child: isPlaying?
                          Icon(Icons.pause,color: Colors.white,size: 40,):
                      Icon(Icons.play_arrow,color: Colors.white,size: 40,)

                      ),
                    ),)),
                Expanded(
                    flex:  30183727034,
                    child: Container(child: Text((width *0.30183727034).toString() ),)),
              ],

            ),)),
        Expanded(
            flex:  4172406132,
            child: Container(child: Text((width *0.4172406132).toString() ),)),
      ],
    );
  }
}
