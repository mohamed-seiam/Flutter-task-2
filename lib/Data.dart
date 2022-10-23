import 'package:flutter/material.dart';

class pizza {
  int id;
  int CategoryId;
  int price;
  String Name;
  String image;
  pizza({
    required this.id,
    required this.CategoryId,
    required this.price,
    required this.Name,
    required this.image,
  });
}

class Section {
  int id;
  String Name;
  String Description;
  String img;
  Section({
    required this.id,
    required this.Description,
    required this.Name,
    required this.img,
  });
}

class Data {
  List<Section> SectionList = [
    Section(
        id: 1,
        Description: "Great pizza From domino's Pizza",
        Name: "domino's Pizza",
        img: "assets/img/Dominos.svg.png"),
    Section(
        id: 2,
        Description: "Tasty Pizza From papa Jhon's Pizza",
        Name: "Jhon's Pizza",
        img: "assets/img/Papa-Johns.webp"),
    Section(
        id: 3,
        Description: "Tasty Pizza From Pizza hut Pizza",
        Name: "Pizza hut Pizza",
        img: "assets/img/pizzahut.png"),
    Section(
        id: 4,
        Description: "Tasty Pizza From Pizza Egypt Pizza",
        Name: "Egypt Pizza",
        img: "assets/img/pizzaegypt.webp"),
  ];

  List<pizza> PizzaList = [
    pizza(
        id: 1,
        CategoryId: 1,
        price: 10,
        Name: "pizza Chicken",
        image: "assets/img/domino1.jpg"),
    pizza(
        id: 1,
        CategoryId: 1,
        price: 20,
        Name: "pizza Cheese",
        image: "assets/img/domino2.jpg"),
    pizza(
        id: 1,
        CategoryId: 1,
        price: 30,
        Name: "pizza Meat",
        image: "assets/img/domino1.jpg"),
    pizza(
        id: 1,
        CategoryId: 1,
        price: 40,
        Name: "pizza Mix",
        image: "assets/img/domino4.jpg"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 23,
        Name: "pizza Chicken Flavor",
        image: "assets/img/papa1.png"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 27,
        Name: "pizza Cheese Flavor",
        image: "assets/img/Papa2.jpg"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 100,
        Name: "pizza Mix",
        image: "assets/img/papa3.jpg"),
    pizza(
        id: 1,
        CategoryId: 2,
        price: 19,
        Name: "pizza Meat flavor",
        image: "assets/img/papa3.jpg"),
    pizza(
        id: 1,
        CategoryId: 3,
        price: 120,
        Name: "pizza Chicken Mix",
        image: "assets/img/masr3.jpg"),
    pizza(
        id: 1,
        CategoryId: 3,
        price: 30,
        Name: "pizza Vegatables",
        image: "assets/img/masr3.jpg"),
    pizza(
        id: 1,
        CategoryId: 3,
        price: 45,
        Name: "pizza Cheese Mix",
        image: "assets/img/hut3.webp"),
    pizza(
        id: 1,
        CategoryId: 4,
        price: 40,
        Name: "pizza Chicken",
        image: "assets/img/masr1.jpg"),
    pizza(
        id: 1,
        CategoryId: 4,
        price: 80,
        Name: "pizza Meat Mix",
        image: "assets/img/masr2.jpg"),
    pizza(
        id: 1,
        CategoryId: 4,
        price: 220,
        Name: "pizza Mix Of All",
        image: "assets/img/masr3.jpg"),
  ];

  List<pizza> filterBySection(int id) 
  {
    return this.PizzaList.where((element) => element.CategoryId == id).toList();
  }
}
