import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../constants/data.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key});

  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  final List<String> imageUrls = [
    'https://f1m9.blob.core.windows.net/f1m9/banner/Untitled design.webp',
    'https://f1m9.blob.core.windows.net/f1m9/banner/1800x900_3_1x.webp',
    'https://f1m9.blob.core.windows.net/f1m9/banner/1800x900_1_1x.webp',
    'https://f1m9.blob.core.windows.net/f1m9/banner/Casino-Inicio-BONO-25-Mobile.webp',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.95,
              autoPlayInterval: Duration(seconds: 3),
            ),
            items: imageUrls.map((url) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return Center(child: CircularProgressIndicator(color: primaryColor));
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return Center(child: Text('Image Load Error'));
                      },
                    ),
                  );
                },
              );
            }).toList(),
          );
  }
}