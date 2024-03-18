import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40,left: 25,right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("welcome Home",style: myStyle(20, Colors.black),),
            Text("Annie Bryant ",style: myStyle(30, Colors.black),),

          ],),
          Row(children: [
            Container(
              transform: Matrix4.rotationZ(50),
              padding: EdgeInsets.only(right: 8),
              child: Stack(
                children: [
                  Icon(Icons.notifications,color: Colors.grey,size: 30,),
                  Positioned(
                    right: 0,
                    child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red
                    ),
                  ))
                ],
              ),
            ),
          Container(
           
            child: ClipOval(child: Image.asset("images/d1.jpg",fit: BoxFit.cover,width: 40,),))


                     
          ],)
        ],
      ),
    );
  }
}

myStyle(double size,Color color,[FontWeight? fw]){
  return TextStyle(fontSize: size,color:color,fontWeight: fw);
}
// myStyle(double size, Color color, [FontWeight? fontWeight]) {
//   return TextStyle(fontSize: size, color: color, fontWeight: fontWeight);
// }


// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
