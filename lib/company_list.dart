import 'package:flutter/material.dart';
import 'package:ui21_0/company_item.dart';
import 'package:ui21_0/model/company_info.dart';

class CompanyList extends StatelessWidget {
final cInfo=CompanyInfo.generatedCompanyList();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder:
         (context,index)=>CompanyItem(cInfo[index]),

         separatorBuilder: (_,index)=>SizedBox(width: 8,),
          itemCount: cInfo.length),
      
    );
  }
}