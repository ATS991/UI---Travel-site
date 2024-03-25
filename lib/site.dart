import 'package:eightproject/account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Site extends StatelessWidget {
  Site(
      {super.key,
      required this.tag,
      required this.img,
      required this.name,
      required this.profile,
      required this.heading,
      required this.text,
      required this.location,
      required this.rates});
  final String tag;
  final String img;
  final String name;
  final String profile;
  final String heading;
  final String text;
  final String location;
  final List rates;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Color.fromARGB(255, 28, 28, 28),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => Account()));
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: tag,
              child: Container(
                height: 350,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/${img}"),
                        fit: BoxFit.cover)),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/${profile}"),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: GoogleFonts.quicksand(color: Colors.white),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star,
                                    color: Colors.amber, size: 16),
                                const Icon(Icons.star,
                                    color: Colors.amber, size: 16),
                                const Icon(Icons.star,
                                    color: Colors.amber, size: 16),
                                const Icon(Icons.star,
                                    color: Colors.amber, size: 16),
                                const Icon(Icons.star,
                                    color: Colors.amber, size: 16),
                                const SizedBox(width: 5),
                                Text("4.9",
                                    style: GoogleFonts.quicksand(
                                        color: Colors.white)),
                                const SizedBox(width: 190),
                                const Icon(CupertinoIcons.heart,
                                    color: Colors.white),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      heading,
                      style: GoogleFonts.quicksand(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      text,
                      style: GoogleFonts.quicksand(
                          color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const Icon(Icons.location_on,
                            color: Color.fromARGB(255, 146, 225, 149)),
                        const SizedBox(width: 5),
                        Text(
                          location,
                          style: GoogleFonts.quicksand(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.1)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text("\$5.00",
                              style:
                                  GoogleFonts.quicksand(color: Colors.white)),
                          Text(
                            "hourly",
                            style: GoogleFonts.quicksand(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("\$35.00",
                              style:
                                  GoogleFonts.quicksand(color: Colors.white)),
                          Text(
                            "daily",
                            style: GoogleFonts.quicksand(color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("\$160.00",
                              style:
                                  GoogleFonts.quicksand(color: Colors.white)),
                          Text(
                            "weekly",
                            style: GoogleFonts.quicksand(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                height: 55,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 146, 225, 149),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Lease",
                      style: GoogleFonts.quicksand(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
