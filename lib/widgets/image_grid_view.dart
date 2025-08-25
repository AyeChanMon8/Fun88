import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/data.dart';
import '../models/data_item.dart';
import 'star_triangle_overlay.dart';

class ImageGridView extends StatefulWidget {
  
  final int index;
  const ImageGridView({required this.index});

  @override
  State<ImageGridView> createState() => _ImageGridViewState();
}

class _ImageGridViewState extends State<ImageGridView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.index == 0) {
      return _buildImageGridView(popularDataList);
    }if (widget.index == 8) {
      return _buildImageGridView(playTechDataList);
    } else {
      return _buildImageGridView(popularDataList);
    }
  }

  Widget _buildImageGridView(List<DataItem> urls) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scrollbar(
        controller: _scrollController,
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          itemCount: urls.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // Adjust columns
            crossAxisSpacing: 6,
            mainAxisSpacing: 6,
          ),
          itemBuilder: (context, i) {
            return Stack(
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: StarTriangleOverlay(
        size: 40,
        image: CachedNetworkImage(
          imageUrl: urls[i].imageUrl,
          placeholder: (context, url) => SizedBox(
              width: 15,
              height: 15,
              child: CircularProgressIndicator(
                color: primaryColor,
              )),
          errorWidget: (context, url, error) => Icon(Icons.error),
          width: 150,
          height: 150,
          fit: BoxFit.cover,
        ),
      ),
    ),
    
    // Top-left positioned SVG
    urls[i].isHot? Positioned(
      top: 0,
      left: 0,
      child: Padding(
        padding: const EdgeInsets.all(6.0), // Optional padding
        child: SvgPicture.network(
          'https://www.fun88.mx/assets/hot-42c8673f.svg', // Replace with your SVG path
          width: 24,
          height: 24,
        ),
      ),
    ): Container(),
  ],
);
          },
        ),
      ),
    );
  }
}
