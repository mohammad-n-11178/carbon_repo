import 'package:Carbon/quiz.dart';
import 'package:Carbon/quiz_app.dart';
import 'package:flutter/material.dart';

class Analystics2 extends StatefulWidget {
  @override
  _Analystics2State createState() => _Analystics2State();
}

class _Analystics2State extends State<Analystics2> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text("الكيمياء التحليلية 2"),
            centerTitle: true,
          ),
          body: Scrollbar(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 8),
              children: [
                // for (int index = 1; index < 10; index++)
                ListTile(
                  onTap: () {},
                  title: Text("فصل اول  2020/2019"),
                  leading: ExcludeSemantics(
                    child: CircleAvatar(
                      child: Icon(Icons.bookmark_border),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  title: Text("000"),
                  leading: ExcludeSemantics(
                    child: CircleAvatar(
                      child: Icon(Icons.bookmark_border),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushNamed("Quiz_app");
                  },
                  title: Text("000"),
                  leading: ExcludeSemantics(
                    child: CircleAvatar(
                      child: Icon(Icons.bookmark_border),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
