import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:simple_app/constatnts.dart';

class DoctorList extends StatefulWidget {
  DoctorList({super.key});

  @override
  State<DoctorList> createState() => _DoctorListState();
}

class _DoctorListState extends State<DoctorList> {
  List _item = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DoctorList(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                Expanded(
                  child: GridView.builder(
                    itemCount: snapshot.data['doctorList'].length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Card(
                        child: Container(
                          decoration: BoxDecoration(
                            color: ColorsData.backwlight,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 300,
                                margin: EdgeInsets.all(5),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(
                                      snapshot.data['doctorList'][index]
                                          ['doctorImage']),
                                  radius: 60,
                                ),
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 5,
                                      // width: 300,
                                    ),
                                    Text(
                                      snapshot.data['doctorList'][index]
                                          ['doctorName'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      snapshot.data['doctorList'][index]
                                          ['specialization'],
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 20,
                                              width: 120,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(3),
                                                child: RatingBar.builder(
                                                  initialRating: 4,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemSize: 20.0,
                                                  itemBuilder: (context, _) =>
                                                      const Icon(
                                                    Icons.star,
                                                    color: Colors.yellow,
                                                    size: 3,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                    print(rating);
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [Text("512")],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<dynamic> DoctorList() async {
    final String data = await rootBundle.loadString("assets/doctor.json");
    print("json data ${data}");
    final Doctordata = await jsonDecode(data);
    return Doctordata;
  }
}
