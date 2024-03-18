
import 'package:flutter/material.dart';
import 'package:ui21_0/home_appbar.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
//final List<String>tagList=["All","Popular","Featured"];
final tagList=<String> ["All","⚡ Popular","⭐ Featured"];
var selected=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      height: 60,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>InkWell(
          onTap: (){
            setState(() {
              selected=index;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: selected==index?Colors.amber:Colors.lightBlue),
              borderRadius: BorderRadius.circular(25),
              color: selected==index? Color.fromARGB(255, 76, 137, 175):Colors.amber,
              
            ),
            child: Center(child: Text(tagList[index],style: myStyle(16,  selected==index?Colors.amber:Colors.lightBlue),)),
          ),
        ),
       separatorBuilder: (_,index)=>SizedBox(width: 10,),
        itemCount: tagList.length),
    );
  }
}