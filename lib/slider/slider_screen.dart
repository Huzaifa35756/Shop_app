// slider_screen.dart

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/images/c1.jpg'},
    {"id": 2, "image_path": 'assets/images/m1.jpeg'},
    {"id": 3, "image_path": 'assets/images/w3.jpeg'},
    {"id": 4, "image_path": 'assets/images/w4.jpeg'},
    {"id": 5, "image_path": 'assets/images/m2.jpg'},
  ];

  // Use CarouselSliderController from the carousel_slider package
  final CarouselSliderController carouselSliderController = CarouselSliderController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 250, // Constrain the height here
          child: CarouselSlider(
            items: imageList
                .map(
                  (item) => Image.asset(
                item['image_path'],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )
                .toList(),
            carouselController: carouselSliderController, // Use CarouselSliderController here
            options: CarouselOptions(
              scrollPhysics: const BouncingScrollPhysics(),
              autoPlay: true,
              aspectRatio: 2,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
        // The dots indicator below the carousel
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageList.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => carouselSliderController.animateToPage(entry.key),
              child: Container(
                width: currentIndex == entry.key ? 17 : 7,
                height: 7.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 3.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == entry.key
                      ? Colors.red
                      : Colors.teal,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
