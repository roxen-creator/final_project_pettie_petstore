// ignore_for_file: prefer_const_constructors

import 'package:equatable/equatable.dart';


class Category extends Equatable{
  final String name;
  final String imageUrl;
  
 const Category({
  required this.name, 
  required this.imageUrl,
});


@override
List<Object?> get props => [name, imageUrl];
  
  
  static List<Category> catagories = [
Category(
  name: "Dog Food", imageUrl:"https://images.unsplash.com/photo-1604544203292-0daa7f847478?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1827&q=80"),


Category(
  name: "Bird Food", imageUrl:"https://images.unsplash.com/photo-1604544203292-0daa7f847478?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1827&q=80"),
  Category(
  name: "Cat Food", imageUrl:"https://images.unsplash.com/photo-1604544203292-0daa7f847478?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1827&q=80"),

  ];
  
  
  
  }