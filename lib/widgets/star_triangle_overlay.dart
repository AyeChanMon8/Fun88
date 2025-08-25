import 'package:flutter/material.dart';

class StarTriangleOverlay extends StatelessWidget {
  final double size;
  final Widget image;

  const StarTriangleOverlay({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        image, // Your main image widget

        // Positioned widget to place triangle at top right
        Positioned(
          top: 0,
          right: 0,
          child: ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5), // Background color
                 // Optional: rounded corners
              ), // Triangle background color
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                  size: size * 0.5,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Custom clipper to create a right-angle triangle (half triangle)
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.moveTo(0, 0); // Top-left
    path.lineTo(size.width, 0); // Top-right
    path.lineTo(size.width, size.height); // Bottom-right
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
