import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_app/Presentation/screens/screen_design/Appointment_Data.dart';
import 'package:simple_app/Presentation/screens/screen_design/Doctor_list.dart';
import 'package:simple_app/Presentation/screens/screen_design/List_view.dart';
import 'package:simple_app/constatnts.dart';

class DoctorPanel extends StatelessWidget {
  final String? userName;
  DoctorPanel({this.userName});

  @override
  Widget build(BuildContext context) {
    var name = userName;
    // double tWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Drawer(
              width: 250,
              backgroundColor: ColorsData.backBlue,
              child: Column(
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  const Text(
                    'SAPDOS',
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.category,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Cartgory',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.schedule,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Appointment',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.chat,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Chat',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Setting',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: InkWell(
                        onTap: () {},
                        child: const Row(
                          children: [
                            Icon(
                              Icons.logout,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              'Logout',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              // color: Colors.orange,
              height: 800,
              margin: const EdgeInsets.fromLTRB(50, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 900,
                    //  color: Colors.grey,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Hello!',
                              style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            // SizedBox(
                            //   height: 10,
                            // ),
                            Text(
                              '$name',
                              style: TextStyle(fontSize: 45),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 550,
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage('image/person.jpg'),
                          radius: 60,
                        )
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   height: 30,
                  // ),
                  // AppointmentData(),
                  const SizedBox(
                    height: 40,
                    width: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ColorsData.backBlue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 40,
                    width: 900,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Doctor List",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 700,
                        ),
                        Container(
                          // width: 0,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 226, 228, 235),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.filter_alt_rounded),
                            color: Color.fromARGB(255, 6, 5, 78),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // DropDownAppointData(),
                  Container(
                    width: 900,
                    height: 350,
                    child: DoctorList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
