import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../mock_data.dart';
import '../home.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    Key? key,
  }) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.8,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            onPageChanged: (index) => setState(
              () {
                _currentPage = index;
              },
            ),
            itemCount: demoBigImages.length,
            itemBuilder: (context, index) => ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                demoBigImages[index],
              ),
            ),
          ),
          Positioned(
            bottom: 12.sm,
            right: 12.sm,
            child: Row(
              children: [
                ...List.generate(
                  demoBigImages.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(left: 12.sm / 2),
                    child: IndicatorDot(
                      isActive: index == _currentPage,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
