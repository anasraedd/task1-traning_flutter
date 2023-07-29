import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:traning_flutter/models/Product.dart';
import 'package:traning_flutter/my_flutter_app_icons.dart';
import 'package:traning_flutter/utils/my_behavior.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProductDetailsScreen extends StatefulWidget {
  Product product;

  ProductDetailsScreen({required this.product});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen>
    with SingleTickerProviderStateMixin {
  List<String> images = [
    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FPS5HEADSETW.png?alt=media&token=03db3f3d-339a-4339-ba94-60ecb81e516c',
    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FPS5HEADSETW.png?alt=media&token=03db3f3d-339a-4339-ba94-60ecb81e516c',
    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FPS5HEADSETW.png?alt=media&token=03db3f3d-339a-4339-ba94-60ecb81e516c',
    'https://firebasestorage.googleapis.com/v0/b/learning---firebase-flutter.appspot.com/o/forProject%2FPS5HEADSETW.png?alt=media&token=03db3f3d-339a-4339-ba94-60ecb81e516c'
  ];
  final controller = PageController(
    viewportFraction: 1,
    keepPage: true,
  );

  late TabController _tabController;

  @override
  void initState() {
    super.initState();

    //_tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // _animationController.dispose();
    // _controller.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF333742),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF333742),
        title: Text(
          widget.product.category,
          style: GoogleFonts.poppins(fontSize: 15.sp, color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ))
        ],
      ),

      body: Column(
        children: [
          // SizedBox(height: 17.6.h,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'PULSE 3D Wireless Headset ',
              style: GoogleFonts.poppins(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),

          // SizedBox(height: 42.h,),
          Expanded(
            child: Stack(
              children: [
                Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsetsDirectional.only(top: 40.h),
                  // padding:  EdgeInsets.only(top:120.h),
                  decoration: BoxDecoration(
                      color: Color(0xFF454D5A),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25.r),
                          topLeft: Radius.circular(25.r))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF454D5A),
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(25.r),
                                            topLeft: Radius.circular(25.r))),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        //mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .only(
                                                          top: 21.h,
                                                          start: 17.5.w),
                                                  child: SizedBox(
                                                    width: 30.w,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
// mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        GestureDetector(
                                                            onTap: () {},
                                                            child: Icon(
                                                              MyFlutterApp.eye,
                                                              color: Colors.grey
                                                                  .shade500,
                                                              size: 15,
                                                            )),
                                                        SizedBox(
                                                          height: 14.h,
                                                        ),
                                                        SizedBox(
                                                          width: 30.w,
                                                          child: Text(
                                                            numberView(widget
                                                                .product
                                                                .numberView),
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        13.sp,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade500),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 32.h,
                                                        ),
                                                        Icon(
                                                          MyFlutterApp
                                                              .heart__1_,
                                                          color: Colors
                                                              .grey.shade500,
                                                          size: 24,
                                                        ),
                                                        SizedBox(
                                                          height: 14.h,
                                                        ),
                                                        SizedBox(
                                                          width: 30.w,
                                                          child: Text(
                                                            widget.product
                                                                .numberFavorite
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        13.sp,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade500),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 32.h,
                                                        ),
                                                        SizedBox(
                                                            height: 24,
                                                            width: 24,
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/icons/car_purshase_fill.svg',
                                                              color: Colors.grey
                                                                  .shade500,
                                                            )),
                                                        // Icon(MyFlutterApp.group_11567, color: Colors.white, size: 24,),
                                                        SizedBox(
                                                          height: 14.h,
                                                        ),
                                                        SizedBox(
                                                          width: 30.w,
                                                          child: Text(
                                                            widget.product
                                                                .numberFavorite
                                                                .toString(),
                                                            style: GoogleFonts
                                                                .poppins(
                                                                    fontSize:
                                                                        13.sp,
                                                                    color: Colors
                                                                        .grey
                                                                        .shade500),
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        top: 21.5.h, end: 12.w),
                                                child: Container(
                                                  width: 57.w,
                                                  height: 28.5.h,
                                                  decoration: BoxDecoration(
                                                      color: Color(0xFF333742),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.r)),
                                                  child: Padding(
                                                    padding: EdgeInsets.all(5),
                                                    child: Row(
                                                      children: [
                                                        Text(
                                                          widget.product.rating
                                                              .toString(),
                                                          style: GoogleFonts
                                                              .poppins(
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 5.w,
                                                        ),
                                                        Icon(
                                                          MyFlutterApp
                                                              .iconfinder___star_favorite_featured_famous_super_3844428,
                                                          color:
                                                              Color(0xFFFDD14B),
                                                          size: 18,
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                              // Expanded(
                                              //   child:
                                              // )
                                            ],
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                top: 32.h,
                                                start: 13.5.w,
                                                end: 13.5.w),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        '\$ ${widget.product.price}',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 14.sp,
                                                                color: Colors
                                                                    .white),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                      //   SizedBox(height: ,)
                                                      Text(
                                                        '\$ ${widget.product.discountPrice}',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                fontSize: 33.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700,
                                                                color: Colors
                                                                    .white),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                    width: 53.w,
                                                    height: 29.h,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF343743),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10.r)),
                                                    child: Center(
                                                      child: Text(
                                                        '%24',
                                                        style:
                                                            GoogleFonts.poppins(
                                                                color: Color(
                                                                    0xFF6AED8A),
                                                                fontSize: 14.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                      ),
                                                    )),
                                                // SizedBox(width: ,)
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                top: 30.h,
                                                start: 12.w,
                                                end: 12.w),
                                            child: Row(
                                              children: [
                                                Icon(
                                                    MyFlutterApp.delivery_truck,
                                                    color: Colors.white),
                                                SizedBox(
                                                  width: 20.w,
                                                ),
                                                Text(
                                                    'Prices incl. VAT. plus shipping costs',
                                                    style: GoogleFonts.poppins(
                                                        fontSize: 13.sp,
                                                        color: Colors
                                                            .grey.shade500))
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                top: 9.h,
                                                start: 12.w,
                                                end: 12.w),
                                            child: Text(
                                                'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor, Aenean massa.',
                                                style: GoogleFonts.poppins(
                                                    fontSize: 13.sp,
                                                    color:
                                                        Colors.grey.shade500)),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                top: 9.h,
                                                start: 12.w,
                                                end: 12.w),
                                            child: Text(
                                              'Choose Color',
                                              style: GoogleFonts.poppins(
                                                  fontSize: 16.sp,
                                                  color: Colors.white),
                                              textAlign: TextAlign.start,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.only(
                                                top: 9.h,
                                                start: 12.w,
                                                end: 12.w),
                                            child: SizedBox(
                                              height: 25.h,
                                              child: ListView.builder(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  itemCount: widget
                                                      .product.colors.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return Container(
                                                      margin:
                                                          EdgeInsetsDirectional
                                                              .only(end: 10.w),
                                                      height: 25.w,
                                                      width: 25.w,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.r),
                                                          color: widget.product
                                                              .colors[index],
                                                          border: Border.all(
                                                              color: Colors
                                                                  .white)),
                                                    );
                                                  }),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20.h,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(

                                margin: EdgeInsets.symmetric(vertical: 50.h),
                                child: SmoothPageIndicator(
                                  controller: controller,
                                  count: images.length,
                                  effect: ExpandingDotsEffect(
                                    dotHeight: 8.w,
                                    dotWidth: 8.w,
                                    dotColor: Colors.black38,
                                    spacing: 5.w,
                                    activeDotColor: Colors.white,
                                  ),
                                  onDotClicked: (index) {
                                    controller.animateToPage(index,
                                        duration:
                                            const Duration(milliseconds: 500),
                                        curve: Curves.ease);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Column(
                      //       children: [
                      //         Text(widget.product.discountPrice.toString(), style: GoogleFonts.poppins(color: Colors.white),)
                      //       ],
                      //     )
                      //   ],
                      // )
                      Container(
                        // margin: EdgeInsetsDirectional.only(top: 500.h),
                        height: 96.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          color: Color(0xFF333742),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 22.w,
                            ),
                            Container(
                                height: 50.w,
                                width: 55.w,
                                decoration: BoxDecoration(
                                    color: Color(0xFF454D5A),
                                    borderRadius: BorderRadius.circular(13.r)),
                                child: Icon(
                                  Icons.favorite_border_rounded,
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                                child: Container(
                              margin: EdgeInsetsDirectional.only(
                                  top: 24.h, bottom: 24.h, end: 22.w),
                              //  padding: EdgeInsetsDirectional.all(20.w),

                              decoration: BoxDecoration(
                                  color: Color(0xFF454D5A),
                                  borderRadius: BorderRadius.circular(13.r)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                      child: Icon(
                                    MyFlutterApp.group_12540,
                                    color: Colors.white,
                                  )),
                                  SizedBox(
                                    width: 18.w,
                                  ),
                                  Center(
                                    child: Text(
                                      'ADD TO CART',
                                      style: GoogleFonts.poppins(
                                          fontSize: 14.sp, color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsetsDirectional.only(bottom: 350.h),
                    width: 240.w,
                    height: 300.w,
                    child: Stack(
                      children: [
                        ScrollConfiguration(
                          behavior: MyBehavior(),
                          child: PageView.builder(
                            scrollDirection: Axis.horizontal,
                            pageSnapping: true,
                            controller: controller,
                            itemCount: images.length,
                            itemBuilder: (_, index) {
                              return CachedNetworkImage(
                                imageUrl: images[index],
                                fit: BoxFit.cover,
                                placeholder: (context, url) =>
                                    SpinKitFadingCircle(
                                  color: Colors.blue,
                                ),
                              );
                            },
                          ),
                        ),

                        // Padding(
                        //   padding: EdgeInsets.only(top: 40.h, right: 30.w, left: 30.w),
                        //   child: Container(
                        //     height: 30.h,
                        //     child: Row(
                        //       children: [
                        //         Expanded(
                        //           child:
                        //           Container(
                        //               alignment: AlignmentDirectional.topStart,
                        //               child:
                        //               Transform.flip(child: Icon(MyFlutterApp.back, color: Colors.white, size: 30, ),flipX: context.locale.languageCode == 'ar', )
                        //
                        //             // Image(
                        //             //   image: AssetImage("assets/icons/back.png"),
                        //             //   height: 30.h,
                        //             //   width: 30.h,
                        //             // ),
                        //           ),
                        //         ),
                        //         // Container(
                        //         //     margin: EdgeInsets.symmetric(horizontal: 10.w),
                        //         //     child: Icon(MyFlutterApp.circle_share, color: Colors.white,size: 30,)
                        //         // ),
                        //         // Container(
                        //         //
                        //         //     child:  Icon(MyFlutterApp.circle_heart_outlined, color: Colors.white,size: 30,)
                        //         // ),
                        //
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar:    Container(
      //   // margin: EdgeInsetsDirectional.only(top: 500.h),
      //   height: 96.h,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //         topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      //     color: Color(0xFF333742),
      //   ),
      //   child: Row(
      //     children: [
      //       SizedBox(width: 22.w,),
      //       Container(
      //
      //         height: 50.w,
      //         width: 55.w,
      //         decoration: BoxDecoration(
      //           color: Color(0xFF454D5A),
      //           borderRadius: BorderRadius.circular(13.r)
      //         ),
      //         child: Icon(Icons.favorite_border_rounded, color: Colors.white,)
      //       ),
      //       SizedBox(width: 5.w,),
      //       Expanded(
      //           child: Container(
      //             margin: EdgeInsetsDirectional.only(top: 24.h, bottom: 24.h, end: 22.w),
      //           //  padding: EdgeInsetsDirectional.all(20.w),
      //
      //             decoration: BoxDecoration(
      //                 color: Color(0xFF454D5A),
      //                 borderRadius: BorderRadius.circular(13.r)
      //             ),
      //             child: Row(
      //               crossAxisAlignment: CrossAxisAlignment.stretch,
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: [
      //                 Center(child: Icon(MyFlutterApp.group_12540, color: Colors.white,)),
      //                 SizedBox(width: 18.w,),
      //                 Center(
      //                   child: Text('ADD TO CART', style: GoogleFonts.poppins(
      //                     fontSize: 14.sp,
      //                     color: Colors.white
      //                   ),),
      //                 ),
      //
      //               ],
      //             ),
      //           )),
      //
      //     ],
      //   ),
      // ) ,
    );
  }

  String numberView(int numberView) {
    String result = '';
    if (numberView >= 1000 && numberView <= 1500) {
      result = '1 k';
    } else if (numberView >= 1500 && numberView <= 200) {
      result = '1.5 k';
    }
    return result;
  }
}
