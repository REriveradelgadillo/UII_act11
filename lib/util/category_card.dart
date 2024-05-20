import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagePath;
  final String categoryName;

  CategoryCard({
    required this.iconImagePath,
    required this.categoryName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff959595),
        ),
        child: Row(
          children: [
            Image.asset(
              iconImagePath,
              height: 70,
            ),
            SizedBox(
              width: 30,
            ),
            Text(categoryName),
          ],
        ),
      ),
    );
  }
}
