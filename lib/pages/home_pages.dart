import 'package:flutter/material.dart';
import 'package:rivera0538/util/category_card.dart';

import '../util/doctor_card.dart';

class HomePages extends StatefulWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Column(children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Bienvenido",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Gorras Rivera",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),

                // proile pict
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Color(0xffcacaca),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.person),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 25,
          ),

          // card-> how do you feel?
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xff959595),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(children: [
                // animation or cute picture
                Container(
                  height: 100,
                  width: 100,
                  color: Color(0xff424242),
                  child: Image.asset("lib/images/estacion.png"),
                ),
                SizedBox(
                  width: 25,
                ),

                //how do you feel + get started button
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Como podemos ayudarte?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        "Pide tu gorra",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 12),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Color(0xffffffff),
                            borderRadius: BorderRadius.circular(12)),
                        child: Center(
                          child: Text(
                            "Buscar Gorra",
                            style: TextStyle(color: Color(0xff000000)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),
          ),
          SizedBox(
            height: 25,
          ),

          //  Search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xffcacaca),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Que buscas?",
                ),
              ),
            ),
          ),

          SizedBox(height: 25),

          // horizontal listview -> categires: dentist, surgeon
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CategoryCard(
                  categoryName: "Los Angeles Dodgers",
                  iconImagePath: "lib/icons/clipper.png",
                ),
                CategoryCard(
                  categoryName: "MLB 59FIFTY ",
                  iconImagePath: "lib/icons/navaja.png",
                ),
                CategoryCard(
                  categoryName: "Tigres de Quintana Roo",
                  iconImagePath: "lib/icons/trimmer.png",
                ),
              ],
            ),
          ),

          SizedBox(height: 25),

          // doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Proveedores ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Ver Mas",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[400],
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          Expanded(
            child: ListView(scrollDirection: Axis.horizontal, children: [
              DoctorCard(
                doctorImagePath: "lib/images/barber1.png",
                raiting: "4,5",
                doctorName: "New Era",
                doctorProfession: "Proveedor",
              ),
              DoctorCard(
                doctorImagePath: "lib/images/barber2.png",
                raiting: "4,2",
                doctorName: "      Lids     ",
                doctorProfession: "Proveedor",
              ),
              DoctorCard(
                doctorImagePath: "lib/images/barbero3.png",
                raiting: "5",
                doctorName: "Famcaps",
                doctorProfession: "Proveedor",
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
