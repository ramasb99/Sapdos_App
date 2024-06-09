import 'package:flutter/material.dart';

class DropDownAppointData extends StatefulWidget {
  const DropDownAppointData({super.key});

  @override
  State<DropDownAppointData> createState() => _DropDownAppointDataState();
}

class _DropDownAppointDataState extends State<DropDownAppointData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
                      color: const Color.fromARGB(255, 182, 166, 166),
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
                      color: const Color.fromARGB(255, 182, 166, 166),
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
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color.fromARGB(255, 243, 54, 54)),
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
                            fontSize: 15, fontWeight: FontWeight.bold),
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
    );
  }
}
