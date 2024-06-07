import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
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
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Today's apoointment",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 130,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 203, 194, 255),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text('21 Pending Appointment'),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 130,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 203, 194, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text('19 Pending Appointment'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                    width: 100,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 35, 6, 194),
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 900,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Wendsday March 7",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 600,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.calendar_month),
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 200,
                    width: 900,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Row(
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 182, 166, 166),
                                    borderRadius: BorderRadius.circular(10)),
                                height: 50,
                                width: 60,
                                child: const Icon(
                                  Icons.schedule,
                                  size: 50,
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Container(
                                height: 50,
                                width: 200,
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 182, 166, 166),
                                    borderRadius: BorderRadius.circular(10)),
                                child: const Center(
                                  child: Text(
                                    "10:00 AM",
                                    style: TextStyle(fontSize: 30),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 100,
                              ),
                              Container(
                                height: 50,
                                width: 400,
                                // color: Colors.grey,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Color.fromARGB(255, 243, 54, 54)),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Pateint Name",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      width: 80,
                                    ),
                                    Text("X Year"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
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
