import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MaterialApp(
    home: Onboarding2(), // Changed screen name here
    debugShowCheckedModeBanner: false,
  ));
}

class Onboarding2 extends StatelessWidget {
  // Changed class name here
  const Onboarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 40),

            // Animated Circular Progress Indicator
            const Center(
              child: CustomCircularProgressIndicator(),
            ),

            const SizedBox(height: 50),

            // Title Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'See real-time occupancy levels',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue, // Title color
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Description Text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Unimo shows live updates for the library, medical center, and canteens, helping you plan your visit.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Pagination Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildDot(isActive: false),
                _buildDot(isActive: true),
                _buildDot(isActive: false),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Pagination Dot Builder
  Widget _buildDot({required bool isActive}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: isActive ? 10 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.blue[100],
        shape: BoxShape.circle,
      ),
    );
  }
}

// Custom Animated Circular Progress Indicator
class CustomCircularProgressIndicator extends StatefulWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  _CustomCircularProgressIndicatorState createState() =>
      _CustomCircularProgressIndicatorState();
}

class _CustomCircularProgressIndicatorState
    extends State<CustomCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: false);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: CircularProgressPainter(_controller.value),
          size: const Size(150, 150),
        );
      },
    );
  }
}

class CircularProgressPainter extends CustomPainter {
  final double progress;
  CircularProgressPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    Paint progressPaint = Paint()
      ..color = Colors.greenAccent
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint handPaint = Paint()
      ..color = Colors.greenAccent
      ..strokeWidth = 8
      ..strokeCap = StrokeCap.round;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2;

    canvas.drawCircle(center, radius, backgroundPaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      0, // Start from right
      progress * 2 * pi,
      false,
      progressPaint,
    );

    // Draw the clock hand
    double angle = progress * 2 * pi;
    Offset handEnd = Offset(
      center.dx + radius * cos(angle),
      center.dy + radius * sin(angle),
    );
    canvas.drawLine(center, handEnd, handPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
