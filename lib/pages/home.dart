import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: size.width,
                height: 80,
                // color: Colors.indigo,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(size.width, 80),
                      painter: BNBCustomPaiter(),
                    ),
                    Center(
                        heightFactor: 0.8,
                        child: FloatingActionButton(
                            backgroundColor: Colors.amber,
                            child: Icon(Icons.home,size: 25),
                            elevation: 0.1,
                            onPressed: () {})),
                    Container(
                      width: size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(icon: Icon(Icons.notification_important,size: 30), onPressed: () {}),
                          IconButton(icon: Icon(Icons.settings,size: 30,), onPressed: () {}),
                          Container(
                            width: size.width * 0.20,
                          ),
                          IconButton(icon: Icon(Icons.person,size: 30), onPressed: () {}),
                          IconButton(icon: Icon(Icons.category,size: 30), onPressed: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class BNBCustomPaiter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.indigo
      ..style = PaintingStyle.fill;

    Path path = Path()..moveTo(0, 20);

    path.moveTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.24, size.height * 0.15,
        size.width * 0.31, size.height * 0.10);
    path.cubicTo(size.width * 0.37, size.height * 0.05, size.width * 0.41,
        size.height * 0.15, size.width * 0.41, size.height * 0.25);
    path.cubicTo(size.width * 0.41, size.height * 0.89, size.width * 0.59,
        size.height * 0.90, size.width * 0.59, size.height * 0.25);
    path.cubicTo(size.width * 0.59, size.height * 0.14, size.width * 0.62,
        size.height * 0.06, size.width * 0.69, size.height * 0.10);
    path.quadraticBezierTo(
        size.width * 0.76, size.height * 0.15, size.width, size.height * 0.25);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawShadow(path, Colors.blue, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

///////
///
///class RPSCustomPainter extends CustomPainter{

// @override
// void paint(Canvas canvas, Size size) {

// Paint paint_0 = new Paint()
//     ..color = Color.fromARGB(255, 33, 150, 243)
//     ..style = PaintingStyle.stroke
//     ..strokeWidth = 1.95;

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.50);
    path_0.quadraticBezierTo(size.width * 0.24, size.height * 0.27,
        size.width * 0.31, size.height * 0.20);
    path_0.cubicTo(size.width * 0.37, size.height * 0.14, size.width * 0.41,
        size.height * 0.16, size.width * 0.41, size.height * 0.25);
    path_0.cubicTo(size.width * 0.41, size.height * 0.75, size.width * 0.59,
        size.height * 0.75, size.width * 0.59, size.height * 0.25);
    path_0.cubicTo(size.width * 0.59, size.height * 0.16, size.width * 0.62,
        size.height * 0.14, size.width * 0.69, size.height * 0.20);
    path_0.quadraticBezierTo(
        size.width * 0.77, size.height * 0.26, size.width, size.height * 0.50);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);

    canvas.drawPath(path_0, paint_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//   Path path_0 = Path();
//   path_0.moveTo(0,size.height*0.25);
//   path_0.quadraticBezierTo(size.width*0.24,size.height*0.15,size.width*0.31,size.height*0.10);
//   path_0.cubicTo(size.width*0.37,size.height*0.05,size.width*0.37,size.height*0.15,size.width*0.38,size.height*0.25);
//   path_0.cubicTo(size.width*0.37,size.height*0.90,size.width*0.62,size.height*0.91,size.width*0.63,size.height*0.25);
//   path_0.cubicTo(size.width*0.63,size.height*0.16,size.width*0.62,size.height*0.06,size.width*0.69,size.height*0.10);
//   path_0.quadraticBezierTo(size.width*0.76,size.height*0.15,size.width,size.height*0.25);
//   path_0.lineTo(size.width,size.height);
//   path_0.lineTo(0,size.height);
//   path_0.lineTo(0,size.height*0.25);

//   canvas.drawPath(path_0, paint_0);

// }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return true;
//   }

// }
