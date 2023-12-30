import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/screens/category_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.categoryy }) : super(key: key);
  final ModelCategory categoryy;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  CategoryScreen(category: categoryy.title,)));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Container(
          width: 160,
          height: 95,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(categoryy.image), fit: BoxFit.cover),
              borderRadius: const BorderRadius.all(Radius.circular(16.0))),
          child: Center(
              child: Text(
            categoryy.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
