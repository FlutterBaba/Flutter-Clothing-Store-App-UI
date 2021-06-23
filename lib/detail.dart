import 'package:carousel_slider/carousel_slider.dart';
import 'package:clothing_store_app_ui/home.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  List<String> images = [
    "images/1.jpg",
    "images/2.jpg",
    "images/3.jpg",
    "images/4.jpg",
  ];

  Widget buildSizeButton({title, isSeleted}) {
    return MaterialButton(
      height: 40,
      minWidth: 40,
      elevation: 0,
      color: isSeleted ? Color(0xff8f7fc4) : Color(0xffe8e8e8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSeleted ? Colors.white : Color(0xff727274),
          ),
        ),
      ),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    scrollPhysics: ScrollPhysics(
                      parent: BouncingScrollPhysics(),
                    ),
                    height: double.infinity,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    autoPlay: true,
                  ),
                  items: images
                      .map(
                        (e) => Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xffb2adca).withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 10.0,
                                offset: -Offset(0, 3),
                              )
                            ],
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(e),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ),
                                    );
                                  },
                                  icon: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Color(0xffae9fe0),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.shopping_bag_rounded,
                                      color: Color(0xffae9fe0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Berrylush",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff39393b),
                          ),
                        ),
                        Text(
                          "\$120",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff39393b),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Price Incluslve of all Texes",
                      style: TextStyle(
                        color: Color(0xff979797),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Choose Size",
                          style: TextStyle(
                            color: Color(0xff979797),
                          ),
                        ),
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffac9ddd),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            buildSizeButton(
                              title: "S",
                              isSeleted: false,
                            ),
                            buildSizeButton(
                              title: "M",
                              isSeleted: false,
                            ),
                            buildSizeButton(
                              title: "L",
                              isSeleted: true,
                            ),
                            buildSizeButton(
                              title: "XL",
                              isSeleted: false,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Color(0xff317aaf),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xfff19a9c),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description"),
                            Container(
                              width: 50,
                              child: Divider(
                                thickness: 3,
                                color: Color(0xff6b648f)
                             ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Delivery"),
                            Container(
                              width: 50,
                              child: Divider(
                                  thickness: 3, color: Colors.transparent),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Reviews"),
                            Container(
                              width: 50,
                              child: Divider(
                                thickness: 3,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Berrylush is a casualwear In Wastern syle that is",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffb2b2b2),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "relaxed,occasinal and suited fir everyday use.",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xffb2b2b2),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: MaterialButton(
                        onPressed: () {},
                        height: 66,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0)),
                        textColor: Colors.white,
                        padding: EdgeInsets.all(0.0),
                        child: Container(
                          height: 66,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xff9f91cc),
                                Color(0xff8471bb),
                              ],
                            ),
                          ),
                          padding: EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              "Add to Cart\t\t\t\$120",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
