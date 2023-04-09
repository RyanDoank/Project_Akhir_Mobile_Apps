import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

class detailPesanan extends StatelessWidget {
  detailPesanan({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 167.0, start: 22.0),
            Pin(size: 269.0, start: 73.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 22.0, end: 0.0),
            Pin(size: 61.7, middle: 0.4253),
            child: SingleChildScrollView(
              primary: false,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 605.0,
                height: 62.0,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, -197.0, 0.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 20,
                          runSpacing: 20,
                          children: [{}, {}, {}, {}, {}].map((itemData) {
                            return SizedBox(
                              width: 101.0,
                              height: 62.0,
                              child: Stack(
                                children: <Widget>[
                                  Transform.rotate(
                                    angle: -0.0175,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0xffffffff),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        border: Border.all(
                                            width: 1.0,
                                            color: const Color(0xff707070)),
                                      ),
                                      margin: EdgeInsets.all(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 108.0, middle: 0.6801),
            Pin(size: 22.0, start: 73.0),
            child: Text(
              'Sepatu Adidas',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 108.0, middle: 0.6801),
            Pin(size: 22.0, start: 146.0),
            child: Text(
              'Sepatu Adidas',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.36, -0.519),
            child: SizedBox(
              width: 108.0,
              height: 22.0,
              child: Text(
                'Sepatu Adidas',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 17,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.36, -0.358),
            child: SizedBox(
              width: 108.0,
              height: 22.0,
              child: Text(
                'Sepatu Adidas',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 17,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 22.0),
            Pin(size: 22.0, middle: 0.5055),
            child: Text(
              'Category',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 28.0),
            Pin(size: 22.0, middle: 0.6044),
            child: Text(
              'Deskripsi',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 28.0),
            Pin(size: 22.0, middle: 0.6505),
            child: Text(
              'Deskripsi',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, middle: 0.6186),
            Pin(size: 16.0, start: 105.0),
            child: Text(
              'Sepatu Adidas',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 12,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(0.237, -0.611),
            child: SizedBox(
              width: 76.0,
              height: 16.0,
              child: Text(
                'Sepatu Adidas',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 12,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.237, -0.452),
            child: SizedBox(
              width: 76.0,
              height: 16.0,
              child: Text(
                'Sepatu Adidas',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 12,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.237, -0.293),
            child: SizedBox(
              width: 76.0,
              height: 16.0,
              child: Text(
                'Sepatu Adidas',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 12,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 22.0, end: 0.0),
            Pin(size: 26.0, middle: 0.5475),
            child: SingleChildScrollView(
              primary: false,
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 583.0,
                height: 26.0,
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 0.0, -175.0, 0.0),
                      child: SingleChildScrollView(
                        primary: false,
                        child: Wrap(
                          alignment: WrapAlignment.center,
                          spacing: 20,
                          runSpacing: 20,
                          children: [{}, {}, {}, {}, {}].map((itemData) {
                            return SizedBox(
                              width: 99.0,
                              height: 26.0,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      borderRadius: BorderRadius.circular(23.0),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xff707070)),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 28.0, end: 28.0),
            Pin(size: 286.0, end: 12.0),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing\nand typesetting industry. Lorem Ipsum has been \nthe industry\'s standard dummy text ever since the\n 1500s, when an unknown printer took a galley of \ntype and scrambled it to make a type specimen \nbook. It has survived not only five centuries, but \nalso the leap into electronic typesetting, \nremaining essentially unchanged. It was \npopularised in the 1960s with the release of \nLetraset sheets containing Lorem Ipsum \npassages, and more recently with desktop \npublishing software like Aldus PageMaker \nincluding versions of Lorem Ipsum.',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 17,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
