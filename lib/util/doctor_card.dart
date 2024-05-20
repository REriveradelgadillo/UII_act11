import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String raiting;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    required this.doctorImagePath,
    required this.raiting,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color(0xffcacaca), borderRadius: BorderRadius.circular(12)),
        child: Column(children: [
          // poto doctos
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              doctorImagePath,
              height: 100,
            ),
          ),
          SizedBox(
            height: 10,
          ),

          //rating ouf
          Row(
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow[600],
              ),
              Text(
                raiting,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),

          //doctor name
          Text(
            doctorName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),

          //doctor title
          Text(doctorProfession + ""),
        ]),
      ),
    );
  }
}
