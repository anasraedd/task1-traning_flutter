import 'package:flutter/material.dart';
import 'package:traning_flutter/widget_tabs/products_tab.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  final controller = PageController(
    viewportFraction: 1,
    keepPage: true,
  );
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right:18, left:18,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text('Categories', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white, ), ),
            SizedBox(height: 16,),

               SizedBox(
                 height: 50,
                 child: TabBar(


                     controller: _tabController,
                     isScrollable: true,


                     overlayColor: MaterialStateProperty.all(Colors.transparent),

                     labelColor: Colors.white,
                     unselectedLabelColor: Color(0xFF454D5A),
                     indicatorColor: Colors.transparent,
                     indicator: MyTabIndicator(),
                     indicatorPadding: EdgeInsetsDirectional.only(bottom: 35),



                     //labelPadding: EdgeInsets.symmetric(horizontal: 0),
                     labelStyle:
                     TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                     onTap: (int selectedTabIndex) {

                     },
                     tabs: [
                       Tab(
                         text: 'ALL',
                       ),
                       Tab(
                         text: 'PS5',
                       ),
                       Tab(
                         text: 'PS4',
                       ),
                       Tab(
                         text: 'Xbox one',

                       ),
                       Tab(
                         text: 'Xbox two',

                       ),
                       Tab(
                         text: 'Xbox three',

                       ),
                     ]),
               ),


            Expanded(
              child: TabBarView(
                  controller: _tabController,

                  children: [
                   ProductsTab(),
                    ProductsTab(category: 'PSS',),
                    ProductsTab(category: 'PS4',),
                    ProductsTab(category: 'xbox one',),
                    ProductsTab(category: 'xbox two',),
                    ProductsTab(category: 'xbox three',),


                  ]),
            ),

          ],

      ),
    );
  }
}
