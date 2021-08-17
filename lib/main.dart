import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:netflix_app/casaDePapelScreen.dart';
// ignore: unused_import
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  List imgList = [
    'images/Home/frozen.png',
    'images/Home/visAVis.png',
    'images/Home/casaDePapel.png',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // ignore: deprecated_member_use
          leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                'images/Home/menu_list.png',
                height: 20,
                width: 20,
              )),
          backgroundColor: Colors.grey.shade900,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/Home/netflix_logo.png',
                fit: BoxFit.contain,
                height: 100,
                width: 100,
              ),
            ],
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Container(
                    width: 50,
                    height: 50,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/profil.png'))))),
          ],
        ),
        body: Stack(children: <Widget>[
          Container(
            color: Colors.grey.shade900,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //first Part
                  CarouselSlider(
                    items: imgList.map((item) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            child: GestureDetector(
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.fill,
                                ),
                                onTap: () {
                                  if (item == imgList[2]) {
                                    Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CasaScreen(),
                                      ),
                                    );
                                  }
                                }),
                          );
                        },
                      );
                    }).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      aspectRatio: 2.0,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //second Part
                  Container(
                    margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'CONTINUE',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'WATCHING',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Image(
                                    image: AssetImage(
                                        'images/Home/arrow_down.png'),
                                    height: 7,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 200,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'images/Home/watching1.png'),
                                      fit: BoxFit.cover,
                                    ), //DecorationImage
                                    border: Border.all(), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      //BoxShadow
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 130,
                                            height: 5,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 100,
                                            height: 5,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 60,
                                        margin: EdgeInsets.only(
                                          top: 170,
                                        ),
                                        child: new ClipRect(
                                          child: new BackdropFilter(
                                            filter: new ImageFilter.blur(
                                              sigmaX: 10,
                                              sigmaY: 10,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'S1:E1',
                                                    style: GoogleFonts.exo2(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline4,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'images/Home/play_miniature.png'),
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'images/Home/watching2.png'),
                                      fit: BoxFit.cover,
                                    ), //DecorationImage
                                    border: Border.all(), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      //BoxShadow
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 130,
                                            height: 5,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 10,
                                            height: 5,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 60,
                                        margin: EdgeInsets.only(
                                          top: 170,
                                        ),
                                        child: new ClipRect(
                                          child: new BackdropFilter(
                                            filter: new ImageFilter.blur(
                                              sigmaX: 10,
                                              sigmaY: 10,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'S1:E1',
                                                    style: GoogleFonts.exo2(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline4,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'images/Home/play_miniature.png'),
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'images/Home/watching3.png'),
                                      fit: BoxFit.cover,
                                    ), //DecorationImage
                                    border: Border.all(), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      //BoxShadow
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 130,
                                            height: 5,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 50,
                                            height: 5,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 60,
                                        margin: EdgeInsets.only(
                                          top: 170,
                                        ),
                                        child: new ClipRect(
                                          child: new BackdropFilter(
                                            filter: new ImageFilter.blur(
                                              sigmaX: 10,
                                              sigmaY: 10,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'S1:E1',
                                                    style: GoogleFonts.exo2(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline4,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'images/Home/play_miniature.png'),
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'images/Home/watching1.png'),
                                      fit: BoxFit.cover,
                                    ), //DecorationImage
                                    border: Border.all(), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      //BoxShadow
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 130,
                                            height: 5,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 60,
                                            height: 5,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 60,
                                        margin: EdgeInsets.only(
                                          top: 170,
                                        ),
                                        child: new ClipRect(
                                          child: new BackdropFilter(
                                            filter: new ImageFilter.blur(
                                              sigmaX: 10,
                                              sigmaY: 10,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'S1:E1',
                                                    style: GoogleFonts.exo2(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline4,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'images/Home/play_miniature.png'),
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'images/Home/watching2.png'),
                                      fit: BoxFit.cover,
                                    ), //DecorationImage
                                    border: Border.all(), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      //BoxShadow
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 130,
                                            height: 5,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 60,
                                            height: 5,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 60,
                                        margin: EdgeInsets.only(
                                          top: 170,
                                        ),
                                        child: new ClipRect(
                                          child: new BackdropFilter(
                                            filter: new ImageFilter.blur(
                                              sigmaX: 10,
                                              sigmaY: 10,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'S1:E1',
                                                    style: GoogleFonts.exo2(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline4,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'images/Home/play_miniature.png'),
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  width: 120,
                                  height: 200,
                                  //BoxDecoration Widget
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'images/Home/watching3.png'),
                                      fit: BoxFit.cover,
                                    ), //DecorationImage
                                    border: Border.all(), //Border.all
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      //BoxShadow
                                      BoxShadow(
                                        color: Colors.black,
                                        offset: const Offset(0.0, 0.0),
                                        blurRadius: 0.0,
                                        spreadRadius: 0.0,
                                      ), //BoxShadow
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 130,
                                            height: 5,
                                            color: Colors.white,
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 165,
                                            ),
                                            width: 60,
                                            height: 5,
                                            color: Colors.red,
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 130,
                                        height: 60,
                                        margin: EdgeInsets.only(
                                          top: 170,
                                        ),
                                        child: new ClipRect(
                                          child: new BackdropFilter(
                                            filter: new ImageFilter.blur(
                                              sigmaX: 10,
                                              sigmaY: 10,
                                            ),
                                            child: Container(
                                              padding: EdgeInsets.only(
                                                  left: 8, right: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'S1:E1',
                                                    style: GoogleFonts.exo2(
                                                      textStyle:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline4,
                                                      fontSize: 15,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                  Image(
                                                    image: AssetImage(
                                                        'images/Home/play_miniature.png'),
                                                    height: 15,
                                                  ),
                                                  Text(
                                                    'Play',
                                                    style: TextStyle(
                                                        fontSize: 8,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //third Part
                  Container(
                    margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'MY',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'LIST',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Image(
                                    image: AssetImage(
                                        'images/Home/arrow_down.png'),
                                    height: 7,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 130,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image: AssetImage('images/Home/list1.png'),
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image: AssetImage('images/Home/list2.png'),
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image: AssetImage('images/Home/list3.png'),
                                  height: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image: AssetImage('images/Home/list4.png'),
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image: AssetImage('images/Home/list5.png'),
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //third Part
                  Container(
                    margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 160,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'NETFLIX',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  'ORIGINALS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Image(
                                    image: AssetImage(
                                        'images/Home/arrow_down.png'),
                                    height: 7,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        //4th Part
                        Container(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image:
                                      AssetImage('images/Home/original2.png'),
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image:
                                      AssetImage('images/Home/original3.png'),
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image:
                                      AssetImage('images/Home/original1.png'),
                                  height: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image:
                                      AssetImage('images/Home/original3.png'),
                                  height: 100,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Image(
                                  image:
                                      AssetImage('images/Home/original2.png'),
                                  height: 100,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38, spreadRadius: 0, blurRadius: 10),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
                child: SnakeNavigationBar.color(
                  backgroundColor: Colors.grey.shade800,
                  snakeViewColor: Colors.grey.shade900,
                  showSelectedLabels: false,
                  padding: EdgeInsets.all(8),
                  items: [
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: ImageIcon(
                            AssetImage(
                              "images/Home/mainHome_icon.png",
                            ),
                            color: Colors.white),
                      ),
                      label: ('Home'),
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: ImageIcon(
                            AssetImage(
                              "images/Home/search_icon.png",
                            ),
                            color: Colors.white),
                      ),
                      label: ('Search'),
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: ImageIcon(
                            AssetImage(
                              "images/Home/youtube_icon.png",
                            ),
                            color: Colors.white),
                      ),
                      label: ('Explore'),
                    ),
                    BottomNavigationBarItem(
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: ImageIcon(
                            AssetImage(
                              "images/Home/download_icon.png",
                            ),
                            color: Colors.white),
                      ),
                      label: ('Donwload'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
