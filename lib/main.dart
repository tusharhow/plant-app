import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:plants_app/items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plants App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/menu.png',
                    scale: 0.10,
                    height: 40,
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Image.asset(
                      'images/account.png',
                      scale: 0.10,
                      height: 40,
                      width: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Spring House Plants',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'The perfect Choice',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                          fontSize: 28),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            ItemRow(),
            SizedBox(
              height: 15,
            ),
            ItemRow(),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Explore',
                    style: TextStyle(
                        fontSize: 32,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ItemRow extends StatelessWidget {
  const ItemRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NewWidget(
            txt: 'Quintin Tree',
            img: 'images/tree1.png',
          ),
          // SizedBox(
          //   height: 20,
          //   width: 30,
          // ),
          NewWidget(
            txt: 'Pamela Tree',
            img: 'images/tree2.png',
          ),
        ],
      ),
    );
  }
}
