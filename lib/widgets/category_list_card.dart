import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key
  });
  
final List<ModelCategory> categories = const [
  ModelCategory(image: "assets/images/business.jpg", title: "Business"),
  ModelCategory(image: "assets/images/entertaiment.jpg", title: "Entertainment"),
  ModelCategory(image: "assets/images/health.jpg", title: "Health"),
  ModelCategory(image: "assets/images/science.jpg", title: "Science"),
  ModelCategory(image: "assets/images/sports.jpg", title: "Sports"),
  ModelCategory(image: "assets/images/technology.jpeg", title: "Technology"),
  ModelCategory(image: "assets/images/general.jpg", title: "General"),
];
  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 95,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return  CategoryCard(categoryy: categories[index],);
        },
      ),
    );
  }
}