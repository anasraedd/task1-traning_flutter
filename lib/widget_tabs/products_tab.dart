import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:traning_flutter/models/Product.dart';
import 'package:traning_flutter/screens/ProductDetailsScreen.dart';
import 'package:traning_flutter/widgets/product_widget.dart';

class ProductsTab extends StatefulWidget {
  final String category;

  ProductsTab({this.category = 'All'});

  @override
  State<ProductsTab> createState() => _ProductsTabState();
}

class _ProductsTabState extends State<ProductsTab> {
  List<Product> products = [
    Product(
        id: '1',
        name: 'PULSE 3D Wireless Headset 1',
        Description: 'PULSE 3D Wireless Headset',
        category: 'PS5',
        price: 180.95,
        images: [
          'https://storage.googleapis.com/learning---firebase-flutter.appspot.com/forProject/PS5HEADSETW.png?GoogleAccessId=service-436933549069@gcp-sa-firebasestorage.iam.gserviceaccount.com&Expires=1688805161&Signature=gxeEOWcfEeSgWeykaFvB5jI4gC5xsp0nCdiiE19Ac7/fnFi4kctIrf3STQdVGd8QoTuAFTqpWRylgCWPsTjNSOw/8KEsrZKFKDeiPw1pWe3KtlBFDuzr0XsK0XWp1ketAD99bW/Ivl2jgMc88SGksaCEWzcNteGo1XlA6JUtJOSZshiSwxJxCjUXZ%2BAvHoBuzUyT5ZK6BBEx91v4mCJXrrneQkvV4PeRGz5M9GIy%2B/yjWnp/3/IajUfmZrwhOPN4RDmSYBQJFm5MobEe7PGIPkO77a6dsS7kMHw88Jh2YuxwnI37hv%2BlvKmqjAWTfwk30JEenkMnfzlTDSPNrAvSbA%3D%3D'
        ],
        colors: [
          Colors.black,
          Colors.white,
          Colors.red
        ],
      discountPrice:179.95,

      numberView: 1500,
      numberFavorite: 212,
      rating: 4.5



    ),
    Product(
        id: '2',
        name: 'PULSE 3D Wireless Headset 2',
        Description: 'PULSE 3D Wireless Headset',
        category: 'PS5',
        price: 180.95,
        images: [
          'https://storage.googleapis.com/learning---firebase-flutter.appspot.com/forProject/PS5HEADSETW.png?GoogleAccessId=service-436933549069@gcp-sa-firebasestorage.iam.gserviceaccount.com&Expires=1688805161&Signature=gxeEOWcfEeSgWeykaFvB5jI4gC5xsp0nCdiiE19Ac7/fnFi4kctIrf3STQdVGd8QoTuAFTqpWRylgCWPsTjNSOw/8KEsrZKFKDeiPw1pWe3KtlBFDuzr0XsK0XWp1ketAD99bW/Ivl2jgMc88SGksaCEWzcNteGo1XlA6JUtJOSZshiSwxJxCjUXZ%2BAvHoBuzUyT5ZK6BBEx91v4mCJXrrneQkvV4PeRGz5M9GIy%2B/yjWnp/3/IajUfmZrwhOPN4RDmSYBQJFm5MobEe7PGIPkO77a6dsS7kMHw88Jh2YuxwnI37hv%2BlvKmqjAWTfwk30JEenkMnfzlTDSPNrAvSbA%3D%3D'
        ],
        colors: [
          Colors.black,
          Colors.white,
          Colors.blue
        ],
        discountPrice:179.95,

        numberView: 1500,
        numberFavorite: 212,
        rating: 4.5



    ),
    Product(
        id: '3',
        name: 'PULSE 3D Wireless Headset 3',
        Description: 'PULSE 3D Wireless Headset',
        category: 'PS5',
        price: 180.95,
        discountPrice: 179.95,
        images: [
          "https://alephindia.in/images/bis/WirelessHeadpho.png",
          "https://alephindia.in/images/bis/WirelessHeadpho.png",
          'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FPS5HEADSETW.png?alt=media&token=03db3f3d-339a-4339-ba94-60ecb81e516c',
          'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FPS5HEADSETW.png?alt=media&token=03db3f3d-339a-4339-ba94-60ecb81e516c'
        ],
        colors: [
          Colors.black,
          Colors.white,
          Colors.green
        ],


        numberView: 1500,
        numberFavorite: 212,
        rating: 4.5



    ),
  ];

  @override
  Widget build(BuildContext context) {
    return widget.category == 'All'
        ? Padding(
            padding:
                const EdgeInsetsDirectional.only(top: 20, start: 5, end: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFF454D5A),
                            borderRadius: BorderRadius.circular(14)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                'Search Products...',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              )),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF454D5A),
                          borderRadius: BorderRadius.circular(14)),
                      child: Center(
                          child: SvgPicture.asset(
                        'assets/icons/filters.svg',
                      )),
                    )
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsetsDirectional.only(end: 20),
                        child: GestureDetector(
                            onTap: () {
                              //  Navigator.pushNamed(context, '/product_details');
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailsScreen(
                                              product: products[index])));
                            },
                            child: ProductWidget()),
                      );
                    },
                    itemCount: products.length,
                  ),
                )
              ],
            ),
          )
        : Center(
            child: Text(
            widget.category,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ));
  }
}

class MyTabIndicator extends Decoration {
  final double minWidth;
  final double minHeight;

  MyTabIndicator({this.minWidth = 3, this.minHeight = 3});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _MyTabIndicatorPainter(this, onChanged);
  }
}

class _MyTabIndicatorPainter extends BoxPainter {
  final MyTabIndicator decoration;

  _MyTabIndicatorPainter(this.decoration, VoidCallback? onChanged)
      : super(onChanged);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final size = configuration.size;
    final circleRadius = max(
      decoration.minWidth > size!.width / 2
          ? size.width / 2
          : decoration.minWidth,
      decoration.minHeight > size.height / 2
          ? size.height / 2
          : decoration.minHeight,
    );
    final circleOffset =
        Offset(offset.dx + size.width / 8, size.height - circleRadius - 2);

    final paint = Paint()
      ..color = Colors.white // Replace with the desired indicator color
      ..style = PaintingStyle.fill;

    canvas.drawCircle(circleOffset, circleRadius, paint);
  }
}
