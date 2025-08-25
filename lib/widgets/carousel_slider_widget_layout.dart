import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/data.dart';

class CarouselSliderWidgetLayout extends StatefulWidget {
  const CarouselSliderWidgetLayout({super.key});

  @override
  State<CarouselSliderWidgetLayout> createState() =>
      _CarouselSliderWidgetLayoutState();
}

class _CarouselSliderWidgetLayoutState
    extends State<CarouselSliderWidgetLayout> {
  final CarouselController _carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Proveedores de juego',
                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Container(
                      width: 50, // rectangle width
                      height: 30, // rectangle height
                      decoration: BoxDecoration(
                        color:
                            Color(0XFFf2f2f9), // background color of rectangle
                        borderRadius: BorderRadius.circular(
                            1), // rounded corners (optional)
                      ),
                      child: Center(
                        child: Container(
                          child: Text('MÁS',
                              style: TextStyle(fontSize: 12)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      _carouselController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 20, // rectangle width
                      height: 30, // rectangle height
                      decoration: BoxDecoration(
                        color:
                            Color(0XFFf2f2f9), // background color of rectangle
                        borderRadius: BorderRadius.circular(
                            1), // rounded corners (optional)
                      ),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTap: () {
                      _carouselController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 20, // rectangle width
                      height: 30, // rectangle height
                      decoration: BoxDecoration(
                        color:
                            Color(0XFFf2f2f9), // background color of rectangle
                        borderRadius: BorderRadius.circular(
                            1), // rounded corners (optional)
                      ),
                      child: Center(
                        child: Container(
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CarouselSlider.builder(
          itemCount: caroDataItem.length,
          carouselController: _carouselController,
          itemBuilder: (context, index, realIndex) {
            final item = caroDataItem[index];
            return Container(
              height: 150,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300], // Whole card fallback color
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Gray background behind image
                  Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: Color(0XFFf2f2fa), // Light gray background
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                    ),
                    child: Center(
                      child: Image.network(
                        item.imageUrl,
                        width: 90,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  // Black background behind text
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0XFFeaecf3),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0XFF000444),
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 5),
                        Text(
                          '${item.juegosCount} Juegos',
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.7),
                            fontSize: 11,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 150,
            autoPlay: true,
            enlargeCenterPage: false,
            viewportFraction: 0.3,
            autoPlayInterval: Duration(seconds: 3),
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
