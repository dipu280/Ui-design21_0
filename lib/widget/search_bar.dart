import 'package:flutter/material.dart';
import 'package:ui21_0/widget/home_appbar.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 350,
      height: 280,
      padding: EdgeInsets.only(top: 20,left: 10,right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage("images/d23.jpg"),fit: BoxFit.cover)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text("Fast Search ",style: myStyle(30, Colors.white),),
        Text("You can search quickly for \nthe job you want",style: myStyle(20, Colors.white),),
        SizedBox(height: 10,),
        SearchBar(
          
        leading: Icon(Icons.search,size: 30,),
        hintText: "Search",

        )
      ],),
    );
  }
}