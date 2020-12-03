import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/subjectslist.dart';
import 'package:flutter_app/widgets/mydrawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // var mdw = MediaQuery.of(context).size.width;
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.grey[50],
                appBar: AppBar(
                  
                  title: Text('المواد'),
                  centerTitle: true,
                ),
                drawer: MyDrawer(),
                body: ListView.builder(
                  itemCount: mobilelist.length,
                  itemBuilder: (context, i) {
                    return Mobilelist(
                        year: mobilelist[i]['year'],
                        section: mobilelist[i]['section'],
                        name: mobilelist[i]['name'],
                        page: mobilelist[i]['page']);
                  },
                ))));
  }

  var mobilelist = [
    {
      'name': 'الكيمياء التحليلية 2',
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "analystics2_page"   //route
    },
    {
      'name': 'الكيمياء العامة 1',
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "ch1_page"         //rote
    },
    {
      'name': 'الكيمياء العامة 2',
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "ch2_page"
    },
    {
      'name': 'English1',
      'year': ' الثانية',
      'section': 'الكيمياء',
      'page': "English1_page"
    },
    {
      'name': 'ِ English2',
      'year': '  الثانية',
      'section': 'الكيمياء',
      'page': "English2_page"
    },
    {
      'name': "English3",
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "English3_page"
    },
    {
      'name': 'English4',
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "English4_page"
    },
    {
      'name': 'الضوء الهندسي',
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "Light_page"
    },
    {
      'name': 'الجسم الصلب',
      'year': ' الثانية',
      'section': ' الكيمياء',
      'page': "Solid_page"
    },
  ];
}
