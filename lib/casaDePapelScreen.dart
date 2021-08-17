import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CasaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          // appBar: AppBar(),
          body: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade900,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
                child: Container(
                  child: Stack(
                    children: [
                      Container(
                          child: Image(
                        image: AssetImage('images/Movie/casa.png'),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'images/Home/menu_list.png',
                                height: 20,
                                width: 20,
                              ),
                              Image.asset(
                                'images/Home/netflix_logo.png',
                                fit: BoxFit.contain,
                                height: 100,
                                width: 100,
                              ),
                              Image.asset(
                                'images/Movie/love_icon.png',
                                height: 20,
                                width: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 280, 0, 0),
                        width: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                border: Border.all(), //Border.all
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Crime film',
                                  style: GoogleFonts.exo2(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade800,
                                border: Border.all(), //Border.all
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'Thriller ',
                                  style: GoogleFonts.exo2(
                                    textStyle:
                                        Theme.of(context).textTheme.headline4,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade900,
                            border: Border.all(), //Border.all
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              //BoxShadow
                              BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: const Offset(0, 0),
                                blurRadius: 10,
                              ), //Box
                            ]),
                        margin: EdgeInsets.fromLTRB(60, 315, 60, 10),
                        width: 300,
                        height: 60,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.red,
                                      ), //Border.all
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(3),
                                      child: Image(
                                        image: AssetImage(
                                            'images/Movie/share.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Share',
                                      style: GoogleFonts.exo2(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.red,
                                      ), //Border.all
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(3),
                                      child: Image(
                                        image:
                                            AssetImage('images/Movie/rate.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Rate',
                                      style: GoogleFonts.exo2(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.red,
                                      ), //Border.all
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(3),
                                      child: Image(
                                        image:
                                            AssetImage('images/Movie/play.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Play',
                                      style: GoogleFonts.exo2(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    width: 25,
                                    height: 25,
                                    margin: EdgeInsets.fromLTRB(10, 10, 10, 4),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.red,
                                      ), //Border.all
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                    child: Container(
                                      margin: EdgeInsets.all(3),
                                      child: Image(
                                        image: AssetImage(
                                            'images/Movie/download.png'),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      'Download',
                                      style: GoogleFonts.exo2(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('84% match',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  )),
                              Text(
                                '2018',
                                style: GoogleFonts.exo2(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(4)),
                                width: 20,
                                child: Center(
                                  child: Text(
                                    '15',
                                    style: GoogleFonts.exo2(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '1h 34min',
                                style: GoogleFonts.exo2(
                                  textStyle:
                                      Theme.of(context).textTheme.headline4,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'A criminal mastermind who goes by "The Professor" has a plan to pull off the biggest heist in recorded history -- to print billions of euros in the Royal Mint of Spain ... ',
                        style: GoogleFonts.exo2(
                          textStyle: Theme.of(context).textTheme.headline4,
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 0.2,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Cast & Crew',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(
                              'See All',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 130,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'images/Movie/cast_card1.png'),
                                      height: 130,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 90, 14, 0),
                                    child: Text(
                                      'Alvaro Morte',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'images/Movie/cast_card2.png'),
                                      height: 130,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 90, 5, 0),
                                    child: Text(
                                      'Ursula Carbero ',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'images/Movie/cast_card3.png'),
                                      height: 130,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 90, 14, 0),
                                    child: Text(
                                      'Itziar Ituno',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'images/Movie/cast_card1.png'),
                                      height: 130,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(14, 90, 14, 0),
                                    child: Text(
                                      'Alvaro Morte',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7),
                              child: Stack(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                          'images/Movie/cast_card2.png'),
                                      height: 130,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 90, 5, 0),
                                    child: Text(
                                      'Ursula Carbero',
                                      style: TextStyle(
                                        color: Colors.white,
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
                        height: 17,
                      ),
                      Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: 0.2,
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: Stack(
                              children: [
                                Container(
                                  child: Image(
                                    image: AssetImage(
                                        'images/Movie/director_card.png'),
                                    height: 130,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(30, 110, 30, 0),
                                  child: Text(
                                    'Alex Pina',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Director',
                                    style: GoogleFonts.exo2(
                                      textStyle:
                                          Theme.of(context).textTheme.headline4,
                                      fontSize: 25,
                                      color: Colors.white.withOpacity(0.8),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 200,
                                    child: Text(
                                      'Álex Pina is a Spanish television producer, writer, series creator and director, known for the crime drama La Casa de Papel.',
                                      style: GoogleFonts.exo2(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 10,
                                        color: Colors.white.withOpacity(0.9),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 200,
                                    child: Text(
                                      'Know more',
                                      style: GoogleFonts.exo2(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                        fontSize: 5,
                                        color: Colors.white.withOpacity(0.9),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 23,
                      ),
                      Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image(
                                image: AssetImage('images/Movie/similar1.png'),
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image(
                                image: AssetImage('images/Movie/similar2.png'),
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image(
                                image: AssetImage('images/Movie/similar3.png'),
                                height: 50,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image(
                                image: AssetImage('images/Movie/similar1.png'),
                                height: 100,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(3),
                              child: Image(
                                image: AssetImage('images/Movie/similar2.png'),
                                height: 100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
