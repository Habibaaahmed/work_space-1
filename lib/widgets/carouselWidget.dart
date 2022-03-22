import 'package:flutter/material.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      // child: Carousel(
      //   boxFit: BoxFit.cover,
      //   images: [
      //     Image.network('https://www.propertyfinder.eg/blog/wp-content/uploads/2020/02/coworking.jpg'),
      //     Image.network('https://www.propertyfinder.eg/blog/wp-content/uploads/2020/02/coworking.jpg'),
      //     Image.network('https://www.propertyfinder.eg/blog/wp-content/uploads/2020/02/coworking.jpg'),
      //     Image.network('https://www.propertyfinder.eg/blog/wp-content/uploads/2020/02/coworking.jpg'),
          
      //   ],
        
      //   autoplay: true,
      //   animationCurve: Curves.fastOutSlowIn,
      //   animationDuration: Duration(milliseconds: 1000),
      //   dotSize: 6,
      //   indicatorBgPadding: 9,
      // ),
    );
  }
}