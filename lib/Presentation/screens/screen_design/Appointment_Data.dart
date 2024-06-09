import 'package:flutter/material.dart';

class AppointmentData extends StatelessWidget {
  const AppointmentData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            "Today's apoointment",
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              children: [
                Center(
                  child: Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 203, 194, 255),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text('19/40\nPending Appointment'),
                    ),
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
                    child: Text('21/40 Completed Appointment'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
   
  }
}
