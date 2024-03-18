
import 'package:flutter/material.dart';
import 'package:ui21_0/widget/company_details.dart';
import 'package:ui21_0/widget/home_appbar.dart';
import 'package:ui21_0/model/company_info.dart';

// ignore: must_be_immutable
class CompanyItem extends StatelessWidget {
CompanyInfo cInfo;
CompanyItem(this.cInfo);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
          backgroundColor: Colors.transparent,
          isScrollControlled: true,
          context: context,
           builder: (context)=>CompanyDetails(cInfo));
      },
      child: Container(
        margin: EdgeInsets.only(left: 10,top: 10),
        width: 260,
       
       
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Row(children: [
            
              Container(
                padding: EdgeInsets.all(2),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(25)
                ),
                child: ClipOval(child: Image.asset(cInfo.logoUrl,fit: BoxFit.cover,)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: Text(cInfo.company,style: myStyle(20, Colors.blue),))
            ],),
            Icon(Icons.bookmark_outline_outlined)
          ],),
    
          Text(cInfo.titel,style: myStyle(18, Colors.blue)),
          Expanded(
            child: Row(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6,vertical: 8),
                child: Icon(Icons.location_on_outlined)),
                      Text(
                        overflow: TextOverflow.ellipsis,
                        cInfo.location,style: myStyle(14, Colors.blue)),
          
            ],),
          )
    
    
    
    
        ],),
    
        
      ),
    );
  }
}