import 'package:flutter/material.dart';
import 'medication.dart';

class MedicationManager extends StatelessWidget {
  List<Medication> meds = [
    Medication(1, "Xanax", 1030, 3.5),
    Medication(2, "Acetaminophen", 920, 600),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meds.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 5,
          margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name and ID column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ID
                      Text(
                        'ID: ${meds[index].id}',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 8.0),

                      // Name
                      Text(
                        meds[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[800],
                        ),
                      ),
                    ],
                  ),
                ),

                // Dose and Time column
                Container(
                  width: 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Dose
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.local_hospital,
                            color: Colors.blueGrey[700],
                            size: 20,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '${meds[index].dose} mg',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey[700],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.0),

                      // Time
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.blueGrey[700],
                            size: 20,
                          ),
                          SizedBox(width: 4.0),
                          Text(
                            '${meds[index].time}',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.blueGrey[700],
                            ),
                          ),
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
    );
  }
}