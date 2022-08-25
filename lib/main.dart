// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/models/classmodel.dart';
import 'package:flutter_expandable_text/flutter_expandable_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainHome(),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  var index1 = 0;
  double imagesize = 50;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(children: [
        Container(
          color: Colors.white,
          width: double.infinity,
          height: size.height / 1.8,
          child: Stack(
            children: [
              //background image
              Container(
                width: double.infinity,
                height: size.height / 2.1,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60)),
                    image: DecorationImage(
                        image: AssetImage(modellist[index1].image),
                        fit: BoxFit.cover)),
              ),
              //Icons
              Positioned(
                right: 0,
                left: 0,
                top: 20,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //lessthan icon
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(192, 255, 255, 255)),
                        child: const Icon(
                          CupertinoIcons.lessthan,
                          size: 22,
                        ),
                      ),
                      //heart icon
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(192, 255, 255, 255)),
                        child: const Icon(CupertinoIcons.heart),
                      )
                    ],
                  ),
                ),
              ),
              //listview
              Positioned(
                bottom: 0,
                right: 0,
                top: 100,
                child: SizedBox(
                  width: 90,
                  height: double.maxFinite,
                  child: ListView.builder(
                    itemCount: modellist.length,
                    itemBuilder: (context, index) {
                      return methodListViewImage(index);
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                left: size.width / 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      modellist[index1].name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Row(
                      children: [
                        const Icon(CupertinoIcons.placemark_fill,
                            color: Colors.black),
                        Text(
                          modellist[index1].location,
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
            color: Colors.white,
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                          side: const BorderSide(
                              color: Color.fromARGB(70, 0, 0, 0), width: 2)),
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Population",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              modellist[index1].population,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                          side: const BorderSide(
                              color: Color.fromARGB(70, 0, 0, 0), width: 2)),
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Temp",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              modellist[index1].temp,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22),
                          side: const BorderSide(
                              color: Color.fromARGB(70, 0, 0, 0), width: 2)),
                      child: Container(
                        width: 90,
                        height: 90,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "Rating",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              modellist[index1].rating,
                              style: const TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Discription",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      ExpandableText(
                        modellist[index1].discription,
                        readMoreText: "Read More",
                        readLessText: "Read Less",
                        textDirection: TextDirection.ltr,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Total Price"),
                          Text(
                            modellist[index1].price,
                            style: const TextStyle(
                                fontSize: 32, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: const Icon(CupertinoIcons.greaterthan,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ))
      ]),
    )));
  }

  //widget listview
  Widget methodListViewImage(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                index1 = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(modellist[index].image))),
              width: index1 == index ? imagesize + 15 : imagesize,
              height: index1 == index ? imagesize + 12 : imagesize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
