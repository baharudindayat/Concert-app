import 'package:flutter/material.dart';
import 'package:concert/model/concert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:concert/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: const Color.fromARGB(255, 222, 222, 222),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            SizedBox(height: 15,),
                            SizedBox(
                              height: 20,
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search concert',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.account_circle,
                      size: 50,
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SizedBox(
                    height: 620.0,
                    child: ListView.builder(
                      padding: const EdgeInsets.all(5),
                      itemCount: concertlist.length,
                      itemBuilder: (BuildContext context, int index) {
                        Concert concerts = concertlist[index];
                        return Container(
                          padding: const EdgeInsets.all(15.0),
                          height: 360,
                          margin: const EdgeInsets.only(right: 20, bottom: 10),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(215, 255, 255, 255),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 240, 240, 240),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  concertlist[index].imageasset,
                                  width: 380,
                                  height: 180,
                                ),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: const [Text('      ')],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        concertlist[index].name,
                                        style: GoogleFonts.raleway(
                                          color: Colors.black,
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: const [Text('      ')],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            'Location ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: const [
                                              Text(
                                                'Date',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 10.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            concertlist[index].location,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            concertlist[index].date,
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: const [Text('      ')],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            '\$ ${concertlist[index].price}',
                                            style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: ((context) =>
                                                          DetailPage(
                                                              concerts:
                                                                  concerts))));
                                            },
                                            child: const Text(
                                              'Book Now',
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
