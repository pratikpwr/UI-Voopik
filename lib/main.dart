import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voopik_test_ui/book_info_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Voopik UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          accentColor: const Color(0xffFFA42E), primaryColor: Colors.white),
      home: MyHomeScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: TabBarView(children: [
          BookInfoScreen(),
          Center(
            child: Text('Inactive'),
          ),
          Center(
            child: Text('Out of Stock'),
          )
        ]),
        bottomNavigationBar: buildBottomNavigationBar(context),
      ),
    );
  }

  BottomNavigationBar buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        items: [
          buildBottomNavigationBarItem('DashBoard', 'assets/home@2x.png'),
          buildBottomNavigationBarItem(
              'Orders', 'assets/shopping-cart-grey@2x.png'),
          buildBottomNavigationBarItem('Inventory', 'assets/storage@2x.png'),
          buildBottomNavigationBarItem('Payment', 'assets/rupee-grey@2x.png'),
          buildBottomNavigationBarItem('Return',
              'assets/iconfinder_undo-back-arrow_2931166-grey@2x.png'),
        ],
        showUnselectedLabels: true,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).accentColor,
      );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
          elevation: 7,
          title: Text(
            'Inventory',
          ),
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: [
            SizedBox(
              height: 24,
              width: 24,
              child: RawMaterialButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  fillColor: Theme.of(context).accentColor,
                  shape: CircleBorder()),
            ),
            SizedBox(
              width: 24,
            ),
            Container(
              height: 26,
              width: 26,
              margin: EdgeInsets.only(right: 16),
              child: Image.asset('assets/Bell black@2x.png'),
            )
          ],
          bottom: TabBar(
            tabs: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 8,
                ),
                child: Text(
                  'ACTIVE',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'INACTIVE',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'OUT OF STOCK',
                  style: TextStyle(fontSize: 12),
                ),
              )
            ],
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
          ));
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      String title, String imagePath) {
    return BottomNavigationBarItem(
      title: Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          title,
          style: TextStyle(fontSize: 12),
        ),
      ),
      icon: Image.asset(
        imagePath,
        height: 24,
        width: 24,
      ),
    );
  }
}
