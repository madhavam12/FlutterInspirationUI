import 'package:flutter/material.dart';

void main() {
  runApp(Route());
}

class Route extends StatelessWidget {
  const Route({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {
              print("Search");
            },
          ),
        ),
        backgroundColor: Color.fromRGBO(244, 243, 243, 1),
        body: Container(
          color: Colors.white,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(15.0),
                    margin: EdgeInsets.only(top: 15.0),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      margin: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find your",
                            style: TextStyle(fontSize: 45.0),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Insipiration",
                            style: TextStyle(
                                fontSize: 45.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          Container(
                            padding: EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(244, 243, 243, 1),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                prefixIcon:
                                    Icon(Icons.search, color: Colors.black87),
                                border: InputBorder.none,
                                hintText: "Search what you're looking for....",
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 15.0),
                            height: 200.0,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return AspectRatio(
                                    aspectRatio: 2 / 3,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(30.0),
                                        ),
                                      ),
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: Image(
                                        fit: BoxFit.cover,
                                        image: img[index],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          Container(
                            height: 200,
                            padding: EdgeInsets.all(5.0),
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                              child: Image(
                                image: img[2],
                                fit: BoxFit.cover,
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
          ),
        ),
      ),
    );
  }
}

List<ImageProvider> img = [
  AssetImage("assets/images/four.jpg"),
  AssetImage("assets/images/three.jpg"),
  AssetImage("assets/images/two.jpg"),
  AssetImage("assets/images/one.jpg"),
];
