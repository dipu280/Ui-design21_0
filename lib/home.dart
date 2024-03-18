
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui21_0/company_list.dart';
import 'package:ui21_0/home_appbar.dart';
import 'package:ui21_0/search_bar.dart';
import 'package:ui21_0/tag_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Row(
          children: [
              Expanded(child: Container(),flex: 2,),
          Expanded(child: Container(color: Color.fromARGB(255, 216, 215, 216),),flex: 1,),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              
              HomeAppBar(),
              Searchbar(),
              TagList(),
              CompanyList()
            
          
            ],
          ),
        )
        ],
      )
    );
  }
}