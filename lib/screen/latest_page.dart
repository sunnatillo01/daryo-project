import 'package:daryo_1_project/models/news.dart';
import 'package:flutter/material.dart';

class LatestPage extends StatelessWidget {
  const LatestPage  ({ Key? key }) : super(key: key);

  static List<News> news = [
    News(
      title: "Bahor mavsumida kerak bo'lgan vitamin va minerallar",
      content: "content",
      watchCount: '520',
      time: '12:34',
      date:'13 mart 2022',
      imgUrl: 'images/daryo.png'
    ),
     News(
      title: "Bahor mavsumida kerak bo'lgan vitamin va minerallar",
      content: "content",
      watchCount: '520',
      time: '12:34',
      date:'13 mart 2022',
      imgUrl: 'images/daryo.png'
    ),
     News(
      title: "Bahor mavsumida kerak bo'lgan vitamin va minerallar",
      content: "content",
      watchCount: '520',
      time: '12:34',
      date:'13 mart 2022',
      imgUrl: 'images/daryo.png'
    ),
     News(
      title: "Bahor mavsumida kerak bo'lgan vitamin va minerallar",
      content: "content",
      watchCount: '520',
      time: '12:34',
      date:'13 mart 2022',
      imgUrl: 'images/daryo.png'
    ),
     News(
      title: "Bahor mavsumida kerak bo'lgan vitamin va minerallar",
      content: "content",
      watchCount: '520',
      time: '12:34',
      date:'13 mart 2022',
      imgUrl: 'images/daryo.png'
    ),
     News(
      title: "Bahor mavsumida kerak bo'lgan vitamin va minerallar",
      content: "content",
      watchCount: '520',
      time: '12:34',
      date:'13 mart 2022',
      imgUrl: 'images/daryo.png'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration:const BoxDecoration(),
      child: ListView.builder(
        itemCount: news.length,
        itemBuilder:(BuildContext context, int index ){
        return newsItem(news[index]);
      },
      ),
      
    );
  }
}

Widget newsItem(News news ) {
  return Padding(
          padding:const EdgeInsets.symmetric(horizontal: 12.0,vertical: 4.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                const Text(
                  'Maslahatlar',style: TextStyle(
                    color: Colors.blue,fontWeight: FontWeight.bold,
                    ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                   Text('${news.time}| ${news.date}|',
                   style:const  TextStyle
                   (color: Colors.grey,
                   ),
                   ),
                    Icon(Icons.visibility_outlined,
                    color: Colors.blue[300],
                    ),
                    const  SizedBox(width: 4.0),
                    Text('const ${news.watchCount}'),
                  ],
                ),
                ],
              ), 
             const  SizedBox(width: 8.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      news.imgUrl,
                    width: 140.0,
                    ),
                   const  SizedBox(width: 12.0),
                    Expanded(
                     child: Text(
                       news.title,
                       style:const  TextStyle(
                         fontWeight: FontWeight.w500,
                         height: 1.2,
                         ),
                       
                       ),
                       ),   
                  ],
                ),
               const  Divider(thickness: 1.0),
            ],
          ),
          );
}