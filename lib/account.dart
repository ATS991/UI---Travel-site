import 'package:eightproject/home.dart';
import 'package:eightproject/site.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatelessWidget {
  Account({super.key});
  List names = ["Matt Padilla", "Will Smith", "Brad Pitt", "Ambi Pure"];
  List distance = ["1.6km", "2.6km", "3.6km", "4.6km"];
  List images = [
    "picture3.jpg",
    "picture4.jpg",
    "picture5.jpeg",
    "picture7.jpeg",
  ];
  List profileImage = [
    "picture2.jpg",
    "picture6.jpg",
    "picture8.jpg",
    "picture6.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => Home()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "Your Location",
              style: GoogleFonts.quicksand(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              "Naantali",
              style: GoogleFonts.quicksand(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.only(right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    filled: true,
                    fillColor: Color.fromARGB(255, 48, 47, 47),
                    isDense: true,
                    prefixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(width: 10),
                        const Icon(CupertinoIcons.search,
                            size: 30, color: Colors.white),
                        const SizedBox(width: 10),
                        Text(
                          "Search items",
                          style: GoogleFonts.quicksand(
                              color: Colors.grey, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    child: Align(
                        child: Text(
                      "All",
                      style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 48, 47, 47),
                    ),
                    child: Align(
                        child: Text(
                      "Sports",
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    )),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 48, 47, 47),
                    ),
                    child: Align(
                        child: Text(
                      "Electronics",
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    )),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 35,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 48, 47, 47),
                    ),
                    child: Align(
                        child: Text(
                      "Tools",
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    )),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Text("New offers",
                  style: GoogleFonts.quicksand(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w800)),
              const SizedBox(height: 20),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => Site(
                                          tag: "img$index",
                                          name: names[index],
                                          heading: "2-4 Person Camping Tent",
                                          img: images[index],
                                          location: "Ratakatu,Naantali",
                                          profile: profileImage[index],
                                          rates: [
                                            "₹5.00",
                                            "₹35.00",
                                            "₹169.00"
                                          ],
                                          text:
                                              "Wheather you are coming in the woods or attending a festival, this tent provides the perfect blend of style and functionality.",
                                        )));
                          },
                           child: Hero(
                             tag: "img$index",
                            child: Container(
                              height: 200,
                              width: 350,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.amber,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/${images[index]}"),
                                      fit: BoxFit.cover)),
                            ),
                           ),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/images/${profileImage[index]}"),
                              radius: 15,
                            ),
                            const SizedBox(width: 10),
                            Text(names[index],
                                style: GoogleFonts.quicksand(
                                    color: Colors.grey)),
                            const SizedBox(width: 160),
                            const Icon(Icons.location_on,
                                color: Color.fromARGB(255, 146, 225, 149)),
                            Text(
                              distance[index],
                              style:
                                  GoogleFonts.quicksand(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text("2-4 Person Camping Tent",
                            style: GoogleFonts.quicksand(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w800)),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text("\$35.00 day",
                                style: GoogleFonts.quicksand(
                                    color: Colors.white)),
                            const SizedBox(width: 10),
                            Text(
                              "\$160.00 week",
                              style:
                                  GoogleFonts.quicksand(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 28, 28, 28),
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded), label: "favorites"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.chat_bubble), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person), label: "Profile"),
          ]),
    );
  }
}

calculator() {
  sum(v1: 21, v2: 43);
}

sum({required int v1, required int v2}) {}
