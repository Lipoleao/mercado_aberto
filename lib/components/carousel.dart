import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carrosel extends StatelessWidget {
  const Carrosel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.all(3),
              height: 280,
              child: CarouselSlider(
   items: [
    Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR-IIQY4cUnh1XmZ7XXFXKM0oYK5HwSXUQ2Q&usqp=CAU'),
    Image.network('data:image/jpeg;base64,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'),
    Image.network('https://images-americanas.b2w.io/produtos/29302228/imagens/jogo-de-panelas-tramontina-turim-antiaderente-vermelha-10-pecas/29302226_1_large.jpg')
   ],
   options: CarouselOptions(
      height: 400,
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