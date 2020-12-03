import 'package:flutter/material.dart';

class Mobilelist extends StatelessWidget {
  final name;
  final year;
  final section;
  final page;

  Mobilelist({this.year, this.section, this.name, this.page});
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.of(context).size.width;
    return SafeArea(
      child: InkWell(
        child: Container(padding: EdgeInsets.all(2),
            height: 110,
            width: mdw,
            child: Container(color: Colors.white,
                child: Row(children: [
              // Expanded(
              //   flex: 1,
              //   child: Image.asset(
              //     'photos/products/samsung/s9.jpg',
              //     fit: BoxFit.fill,
              //   ),
              // ),
              //Expanded 2
              Expanded(
                flex: 2,
                child: Container(margin: EdgeInsets.all(8),
                    alignment: Alignment.topRight,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Row(
                              children: [
                                Text(
                                  "السنة: ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  year,
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            )),
                            Row(
                              children: [
                                Text(
                                  "القسم:  ",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Text(
                                  section,
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )),
              )
              //end expanded 2
            ]))),
        onTap: () {
          Navigator.of(context).pushNamed(page);
        },
      ),
    );
  }
}
