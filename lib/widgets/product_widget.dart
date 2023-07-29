import 'package:flutter/material.dart';
class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 430,
        width: 284,
        decoration: BoxDecoration(
          color: Color(0xFF454D5A),
          borderRadius: BorderRadius.circular(34),
        ),
        child:  Padding(
          padding: EdgeInsetsDirectional.only(
            top: 28,
            start: 15.5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 30),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                          'Sony',
                          style: TextStyle(
                              fontSize: 13, color: Colors.white),
                        )),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Playstation 5',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
              SizedBox(
                height: 15.5,
              ),
              Image.asset('assets/images/product.png', height: 240, width: 216,),

              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Align(

                      child: Column(

                        children: [
                          Container(
                            height: 23.5,
                            width: 23.5,

                            decoration: BoxDecoration(
                              color: Color(0xFF333742),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          SizedBox(height: 9,),

                          Container(
                            height: 23.5,
                            width: 23.5,

                            decoration: BoxDecoration(
                              color:Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),

                        ],
                      ),
                      alignment: AlignmentDirectional.bottomStart,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: Container(
                        margin: EdgeInsetsDirectional.only(end: 8),
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Color(0xFF707070),
                            borderRadius: BorderRadius.circular(12)


                        ),

                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Text('\$ 890.00', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),)
                            ,SizedBox(width: 3.5,),
                            Text('\$ 900',  style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.normal,

                            ),

                            ),
                            SizedBox(width: 16,)
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 17,)

            ],
          ),
        ),
      ),
    );
  }
}
