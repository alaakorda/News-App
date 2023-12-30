import 'package:flutter/material.dart ';
import 'package:newsapp/screens/list_service.dart';
class CategoryScreen extends StatelessWidget {
const CategoryScreen({ Key? key, required this.category }) : super(key: key);
final String category;
@override
Widget build(BuildContext context) {
return Scaffold(
  appBar: AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    elevation: 0,
    title: const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "News",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "Cloud",
          style: TextStyle(color: Colors.orange),
        ),
      ],
    ),
  ),
body: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 12.0),
  child:   CustomScrollView(
  
  slivers: [
  
    ListService(category: category,),
  
  ]  
  
  ),
)
);
}
}