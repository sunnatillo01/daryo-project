import 'package:flutter/material.dart';
class MyDrawerBody extends StatefulWidget {
  const MyDrawerBody({ Key? key }) : super(key: key);

  @override
  State<MyDrawerBody> createState() => _MyDrawerBodyState();
}

class _MyDrawerBodyState extends State<MyDrawerBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          category("So'ngi yangililar"),
           category("Mahalliy"),
           category("Dunyo"),
           category("Texnologiyalar"),
         const   Divider(thickness: 1.0),
           Padding(padding: const EdgeInsets.only(top: 16.0), child: category("Tanlangan xabarlar",Colors.green),),
           const   Divider(thickness: 1.0),
            category("Ma'daniyat"),
             category("Avto"),
              category("Sport"),
               category("Fotp"),
                category("Lifestyle"),
                 category("Kategoriyalar"),
                  category("Afisha"),

        ],
        
      ),
    );
  }
  Widget category(String title,[Color givenColor = Colors.black]){
    return  Container(
      height: 40.0,
            margin: const EdgeInsets.only(left: 18.0),
            child:  Text(
              title,
            style: TextStyle(color: givenColor,fontSize: 16.0,fontWeight:FontWeight.w500),
            ),
          );
  }
}