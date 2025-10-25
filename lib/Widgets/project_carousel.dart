import 'package:jibrantalib/Constants/dimensions.dart';
import 'package:carousel_slider/carousel_slider.dart' as slider;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProjectCarousel extends StatefulWidget {
  final double width;
  final double height;
  final List<String> assetImages;
  final bool isWeb;
  const ProjectCarousel(
      {super.key,
      required this.width,
      required this.height,
      required this.assetImages,
      required this.isWeb});

  @override
  State<ProjectCarousel> createState() => _ProjectCarouselState();
}

class _ProjectCarouselState extends State<ProjectCarousel> {
  slider.CarouselSliderController buttonCarouselController =
      slider.CarouselSliderController();
  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    w = w - 450;
    return SizedBox(
      height: widget.height,
      width: widget.width,
      child: Get.width <= 500
          ? _carousel(
              width: widget.width,
              height: widget.height,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _sideButton(
                  onTap: () {
                    buttonCarouselController.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                ),
                _carousel(
                  width: widget.isWeb ? w : w,
                  height: widget.height,
                ),
                _sideButton(
                  onTap: () {
                    buttonCarouselController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.linear);
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ),
              ],
            ),
    );
  }

  Widget _carousel({required double width, required double height}) {
    double viewportFraction = 1.0;
    if (widget.isWeb == false) {
      if (Get.width > mobileWidth) {
        viewportFraction = 0.22;
      }
    }
    return SizedBox(
      width: width,
      // margin: EdgeInsets.symmetric(vertical: Get.width > 500 ? 8 : 0, horizontal: Get.width > 500 &&  widget.isWeb == false ? 150 : 0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            const SizedBox(
              height: 8,
            ),
            Flexible(
              child: slider.CarouselSlider.builder(
                itemCount: widget.assetImages.length,
                carouselController: buttonCarouselController,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  width: widget.isWeb
                      ? width
                      : Get.width <= mobileWidth
                          ? 300
                          : 250,
                  height: height,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(widget.assetImages[itemIndex]),
                          fit: BoxFit.fill)),
                ),
                options: slider.CarouselOptions(
                  autoPlay: true,
                  reverse: true,
                  height: height,
                  viewportFraction: viewportFraction,
                  onPageChanged: (i, x) {
                    setState(() {
                      _currentPageIndex = i;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AnimatedSmoothIndicator(
              activeIndex: _currentPageIndex,
              count: widget.assetImages.length,
              effect: JumpingDotEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  dotColor: Colors.grey.shade200,
                  activeDotColor: Theme.of(context).primaryColor),
            ),
            const SizedBox(
              height: 6,
            ),
          ],
        ),
      ),
    );
  }

  Widget _sideButton({required Function() onTap, required Widget icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: CircleAvatar(
          radius: 30,
          child: icon,
        ),
      ),
    );
  }
}
