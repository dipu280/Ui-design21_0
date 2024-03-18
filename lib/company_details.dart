
import 'package:flutter/material.dart';
import 'package:ui21_0/home_appbar.dart';
import 'package:ui21_0/model/company_info.dart';

// ignore: must_be_immutable
class CompanyDetails extends StatefulWidget {
 CompanyInfo companyInfo;
 CompanyDetails(this.companyInfo);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(left: 20,right: 10),
      width: double.infinity,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
        topRight: Radius.circular(25)),
        color: Colors.green
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Divider(
          indent: 150,
          endIndent: 150,
          thickness: 4,
          height: 30,
          ),
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
                child: ClipOval(child: Image.asset(widget.companyInfo.logoUrl,fit: BoxFit.cover,)),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 18,vertical: 8),
              child: Text(widget.companyInfo.company,style: myStyle(20, Colors.white),))
            ],),
            Row(
              children: [
                Icon(Icons.bookmark_outline_outlined,color: Colors.white,),
                Icon(Icons.bookmark_outline_outlined,color: Colors.white),
              ],
            ),
          ],),
          Text("Product Design",style: myStyle(30, Colors.white),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text("🏛️ ${widget.companyInfo.location}",style: myStyle(16, Colors.white),),
            Text("🕐 ${widget.companyInfo.fullTime}",style: myStyle(16, Colors.white),),

          ],),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 10),
            child: Text("Requirments",style: myStyle(20, Colors.white),)),
            // Spread Operator(...)
            ...widget.companyInfo.req.map((e) => Container(
              child: Row(children: [
                Container(
                  margin: EdgeInsets.all(20),
                 height: 8,
                 width: 8,
                 decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white
                 ),
                ),
                Expanded(child: Text(e,style: myStyle(16, Colors.white),))
              ],),
            )).toList(),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
               color: Colors.white,
                  borderRadius: BorderRadius.circular(25)
                ),
                alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.symmetric(vertical: 12),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                child: Text("Apply Now",style: myStyle(20, const Color.fromARGB(255, 0, 0, 0)))),
            )

          ],)
          );

  }
}