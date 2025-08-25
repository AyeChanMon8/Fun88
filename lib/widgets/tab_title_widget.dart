import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/data.dart';

class TabTitleWidget extends StatelessWidget {
  final String selectedUrl;
  final String unselectedUrl;
  final String name;
  final bool isSelected;
  final int index;
  final int notiCount;
  final bool isHot;

  const TabTitleWidget(
      {required this.selectedUrl,
      required this.unselectedUrl,
      required this.name,
      required this.isSelected,
      required this.index,
      required this.notiCount,
      required this.isHot});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        index == 0
            ? Expanded(
                child: Image.asset(
                  isSelected ? selectedUrl : unselectedUrl,
                  width: 23,
                  height: 23,
                  // fit: BoxFit.cover,
                ),
              )
            : (isSelected == false && isHot)
                ? Expanded(
                    child: Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: unselectedUrl,
                          placeholder: (context, url) => SizedBox(
                            width: 30,
                            height: 30,
                            child: Center(
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.0,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      primaryColor),
                                ),
                              ),
                            ),
                          ), // while loading
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error), // on error
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: SvgPicture.network(
                              'https://www.fun88.mx/assets/hot-42c8673f.svg',
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  )
                : isSelected && notiCount > 0
                    ? Expanded(
                        child: Stack(
                          children: [
                            CachedNetworkImage(
                              imageUrl:
                                  isSelected ? selectedUrl : unselectedUrl,
                              placeholder: (context, url) => SizedBox(
                                  width: 15,
                                  height: 15,
                                  child: CircularProgressIndicator(
                                    color: primaryColor,
                                  )), // while loading
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error), // on error
                              width: 50,
                              height: 50,
                              fit: BoxFit.scaleDown,
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 3, vertical: 1),
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Text(
                                  notiCount.toString(), // your number here
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : Expanded(
                        child: CachedNetworkImage(
                          imageUrl:
                              isSelected ? selectedUrl : unselectedUrl,
                          placeholder: (context, url) => SizedBox(
                              width: 15,
                              height: 15,
                              child: CircularProgressIndicator(
                                color: primaryColor,
                              )), // while loading
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error), // on error
                          width: 50,
                          height: 50,
                          fit: BoxFit.scaleDown,
                        ),
                      ),
        SizedBox(height: 5),
        Expanded(
          child: Text(
            name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? primaryColor : Color(0xFF888888),
            ),
          ),
        ),
      ],
    );
  }
}
