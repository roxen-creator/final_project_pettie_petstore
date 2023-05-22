import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


import 'package:pettie_petstore/src/features/core/models/category_model/category_model.dart';


import 'hero_carousel.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 1.5,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
      ),
      items: Category.catagories
          .map((category) => HeroCarouselCard(category: category))
          .toList(),
    );
  }
}


