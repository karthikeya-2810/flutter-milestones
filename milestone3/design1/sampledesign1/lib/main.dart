import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() => runApp(MaterialApp(
      home: MyWidget(),
    ));

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: AppBar(
          title: Text('sign up'),
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.lightGreen,
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                      child: Text('I am looking for a teacher',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20))),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                      child: Text('I am looking a teacher',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20))),
                ),
              ),
            ),
            Container(
              width: 350,
              height: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                      child: Text('I am looking for a teacher',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20))),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.home),
              color: Colors.white,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
              icon: Icon(Icons.search),
              color: Colors.white,
            ),
            label: ' ',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
              color: Colors.white,
            ),
            label: ' ',
          )
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            title: Text(
              'search result',
              style: TextStyle(fontSize: 25),
            ),
            centerTitle: true,
            backgroundColor: Colors.lightGreen,
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(15),
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.filter_list),
                        border: InputBorder.none,
                        filled: true,
                        fillColor: Colors.grey[200],
                      ),
                    ),
                  ),
                )),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 220,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5Xd1MjNmBYBFy3lmxS5kapwbiJf0Q5MSCIg&usqp=CAU'),
                                radius: 40.0,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Virat Kohli',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'virat kohli is a profession indian cricketer.Right handed batsman',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Text("5 rating")
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Profile'),
                                style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(120, 50)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 30,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Hire'),
                                style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(120, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.pinkAccent),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
              Container(
                width: 360,
                height: 220,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5Xd1MjNmBYBFy3lmxS5kapwbiJf0Q5MSCIg&usqp=CAU'),
                                radius: 40.0,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Virat Kohli',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'virat kohli is a profession indian cricketer.Right handed batsman',
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Icon(Icons.star, color: Colors.yellow),
                                      Text("4 rating")
                                    ],
                                  ),
                                ],
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                            width: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text('Profile'),
                                style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(120, 50)),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                                width: 30,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text('Hire'),
                                style: ButtonStyle(
                                  minimumSize:
                                      MaterialStateProperty.all(Size(120, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.pinkAccent),
                                  foregroundColor:
                                      MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.lightGreen,
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.home),
                color: Colors.white,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                icon: Icon(Icons.search),
                color: Colors.white,
              ),
              label: ' ',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.person),
                color: Colors.white,
              ),
              label: ' ',
            )
          ],
        ));
  }
}
