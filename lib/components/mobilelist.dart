import 'package:flutter/material.dart';
import 'package:flutter_app/components/animateroute.dart';
import 'package:flutter_app/components/applocalizations.dart';

class Mobilelist extends StatelessWidget {
  final name;
  final camera;
  final cpu;
  final bettary;
  final memmory;
  final price;
  Mobilelist(
      {this.price,
      this.bettary,
      this.camera,
      this.cpu,
      this.memmory,
      this.name});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          height: 160,
          width: 100,
          child: Card(
              child: Row(children: [
            Expanded(
              flex: 1,
              child: Image.asset(
                'photos/products/samsung/s9.jpg',
                fit: BoxFit.fill,
              ),
            ),
            //Expanded 2
            Expanded(
              flex: 2,
              child: Container(
                  alignment: Alignment.topRight,
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Text(
                                AppLocalizations.of(context)
                                    .translate("Camera: "),
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                camera,
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          )),
                          Row(
                            children: [
                              Text(
                                "processor: ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                cpu,
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Row(
                            children: [
                              Text(
                                "battery: ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                bettary,
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          )),
                          Row(
                            children: [
                              Text(
                                "memmory: ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                memmory,
                                style: TextStyle(color: Colors.blue),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              price,
                              style: TextStyle(
                                  color: Colors.deepOrange[500], fontSize: 23),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            )
            //end expanded 2
          ]))),
      onTap: () {
        // Navigator.of(context).push(SlideTop(page: MobileDetails()));
      },
    );
  }
}
