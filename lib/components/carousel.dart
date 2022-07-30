import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carrosel extends StatelessWidget {
  const Carrosel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(3),
              height: 200,
              child: CarouselSlider(
   items: [
    Image.network('https://http2.mlstatic.com/D_NQ_741905-MLA50821495166_072022-OO.webp'),
    Image.network('https://http2.mlstatic.com/D_NQ_945878-MLA50929777507_072022-OO.webp'),
    Image.network('https://http2.mlstatic.com/D_NQ_762493-MLA50923806616_072022-OO.webp')
   ],
   options: CarouselOptions(
      height: 800,
      aspectRatio: 16/9,
      viewportFraction: 0.8,
      initialPage: 0,
      enableInfiniteScroll: true,
      reverse: false,
      autoPlay: true,
      autoPlayInterval: Duration(seconds: 3),
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      autoPlayCurve: Curves.fastOutSlowIn,
      enlargeCenterPage: true,
      //onPageChanged: callbackFunction,
      scrollDirection: Axis.horizontal,
   )
 )
            );
  }
}