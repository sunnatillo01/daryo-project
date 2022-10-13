import 'package:daryo_1_project/drawer.dart';
import 'package:daryo_1_project/screen/latest_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const  Text('Daryo'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(child: Text("SO'NGI YANGILILAR"),),
               Tab(child: Text("ASOSIY YANGILILAR"),),
                Tab(child: Text("ENG KO'P"),),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
          const LatestPage(),
           Container(color: Colors.yellow,),
           Container(color: Colors.green,),
          ],
        ),
        drawer: const  MyDrawer(),
      ),
    );
  }
}

