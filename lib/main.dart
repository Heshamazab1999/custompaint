import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            CustomPaint(
              painter: RPSCustomPainter2(),
              size: Size(double.infinity, 260),
            ),
            CustomPaint(
              painter: RPSCustomPainter(),
              size: Size(double.infinity, 220),
            ),
          ],
        ),
      ),
    );
  }
}

class LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Offset.zero & size;
    Paint paint = Paint();
    Path path = Path();
    paint.shader = const LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color.fromARGB(255, 242, 101, 197),
        Color.fromARGB(255, 154, 76, 237),
      ],
    ).createShader(rect);
    path.lineTo(0, size.height - size.height / 8);
    path.conicTo(size.width / 1.2, size.height, size.width,
        size.height - size.height / 8, 9);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawShadow(path, const Color.fromARGB(255, 242, 101, 197), 4, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Shape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();
    Path path1 = Path();
    Paint paint1 = Paint();
    Path path3 = Path();
    Paint paint3 = Paint();
    Path path4 = Path();
    Paint paint4 = Paint();
    path.lineTo(0, 200);
    path.quadraticBezierTo(300, 550, 700, 0);
    paint.color = Colors.white70;
    canvas.drawPath(path, paint);
    path1.lineTo(0, 200);
    path1.quadraticBezierTo(300, 500, 650, 0);
    paint1.color = Colors.grey.shade500;
    canvas.drawPath(path1, paint1);
    path3.lineTo(0, 200);
    path3.quadraticBezierTo(300, 450, 600, 0);
    paint3.color = Colors.blueGrey.shade400;
    canvas.drawPath(path3, paint3);
    path4.lineTo(0, 200);
    path4.quadraticBezierTo(300, 350, 600, 0);
    paint4.color = Colors.blueGrey.shade600;
    canvas.drawPath(path4, paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.green[800]!;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.875,
        size.width * 0.5, size.height * 0.9167);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.9584,
        size.width * 1.0, size.height * 0.9167);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class CustomWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    path.moveTo(0, size.height * 0.84);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.77,
        size.width * 0.52, size.height * 0.84);
    path.quadraticBezierTo(
        size.width * 0.74, size.height * 0.92, size.width, size.height * 0.84);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    paint.color = Colors.blueAccent.withOpacity(0.70);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.0012500,size.height*0.0060000);
    path0.quadraticBezierTo(size.width*0.0003125,size.height*0.3780000,0,size.height*0.5020000);
    path0.cubicTo(size.width*0.2509375,size.height*0.1595000,size.width*0.4865625,size.height*0.4825000,size.width*0.4987500,size.height*0.5000000);
    path0.quadraticBezierTo(size.width*0.7359375,size.height*0.7780000,size.width*0.9975000,size.height*0.5000000);
    path0.lineTo(size.width*0.9975000,size.height*0.0040000);
    path0.lineTo(size.width*0.0012500,size.height*0.0060000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class RPSCustomPainter2 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint0 = Paint()
      ..color =  Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.0012500,size.height*0.0060000);
    path0.quadraticBezierTo(size.width*0.0003125,size.height*0.3780000,0,size.height*0.5020000);
    path0.cubicTo(size.width*0.2509375,size.height*0.189,size.width*0.4865625,size.height*0.4825000,size.width*0.4987500,size.height*0.5000000);
    path0.quadraticBezierTo(size.width*0.7359375,size.height*0.76,size.width*0.9975000,size.height*0.5000000);
    path0.lineTo(size.width*0.9975000,size.height*0.0040000);
    path0.lineTo(size.width*0.0012500,size.height*0.0060000);
    path0.close();

    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
