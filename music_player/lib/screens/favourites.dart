import 'package:flutter/material.dart';

class favourites extends StatefulWidget {
  const favourites({super.key});

  @override
  State<favourites> createState() => _favouritesState();
}

class _favouritesState extends State<favourites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25),
              child: Text(
                "Search",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.only(right: 25, left: 25),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.white),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    size: 35,
                    color: Colors.black,
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Artist , songs or podcasts",
                    style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            smalltile(context, "Tamil  ", Colors.red, "English", Colors.green,
                "assets/images/ser1.jfif", "assets/images/ser2.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Punjabi",
                Colors.orange,
                "English",
                Colors.yellow,
                "assets/images/ser3.jfif",
                "assets/images/ser4.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Telugu",
                Colors.purple,
                "English",
                Colors.blueAccent,
                "assets/images/ser5.jfif",
                "assets/images/ser6.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Tamil",
                Colors.red[200],
                "English",
                Colors.green[800],
                "assets/images/ser7.jfif",
                "assets/images/ser1.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(context, "Tamil  ", Colors.red, "pop", Colors.green,
                "assets/images/ser1.jfif", "assets/images/ser2.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Punjabi",
                Colors.orange,
                "English",
                Colors.yellow,
                "assets/images/ser3.jfif",
                "assets/images/ser4.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Telugu",
                Colors.purple,
                "English",
                Colors.blueAccent,
                "assets/images/ser5.jfif",
                "assets/images/ser6.jfif"),
            SizedBox(
              height: 10,
            ),
            smalltile(
                context,
                "Tamil",
                Colors.red[200],
                "English",
                Colors.green[800],
                "assets/images/ser7.jfif",
                "assets/images/ser1.jfif"),
          ],
        ),
      ),
    );
  }

  Row smalltile(BuildContext context, String text, final clrs, String text2,
      final clrs2, String imgurl1, String imgurl2) {
    return Row(
      children: [
        Expanded(
            child: Container(
          height: 85,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10, left: 25, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: clrs,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 10, left: 8),
                child: Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  transform: new Matrix4.identity()
                    ..rotateZ(15 * 3.1415927 / -160),
                  child: Image.asset(
                    imgurl1,
                    height: 60,
                    width: 75,
                  ),
                ),
              )
            ],
          ),
        )),
        Expanded(
            child: Container(
          height: 85,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10, left: 25, right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: clrs2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 10, left: 8),
                child: Text(
                  text2,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  transform: new Matrix4.identity()
                    ..rotateZ(15 * 3.1415927 / -160),
                  child: Image.asset(
                    imgurl2,
                    height: 60,
                    width: 75,
                  ),
                ),
              )
            ],
          ),
        )),
      ],
    );
  }
}
