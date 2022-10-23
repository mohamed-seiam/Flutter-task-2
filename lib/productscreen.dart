import 'package:flutter/material.dart';
import 'package:product/Data.dart';

class ProductScreen extends StatelessWidget {
  Data pizza = Data();
  @override
  Widget build(BuildContext context) {
    var args =
        ModalRoute.of(context)?.settings.arguments! as Map<String, Object>;
    var list = pizza.filterBySection(args["id"] as int);
    print(list);
    return Scaffold(
      appBar: AppBar(
        title: Text(args["name"] as String),
      ),
      body: GridView.builder(
        itemCount: list.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 20),
        itemBuilder: (context, index) => PizzaScreen(pizzaitem: list[index]),
      ),
    );
  }
}

class PizzaScreen extends StatelessWidget {
  pizza pizzaitem;
  PizzaScreen({required this.pizzaitem});
  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          height: 100,
          child: Image.asset(
            pizzaitem.image,
            // fit: BoxFit.none,
            width: 100,
            height: 200,
            scale: 4,
          ),
        ),
        
      ),
      header: Container(
        margin: EdgeInsets.symmetric(vertical:10),
        child: Text(pizzaitem.Name,textAlign: TextAlign.center,style: TextStyle(fontStyle: FontStyle.italic,
        fontSize:20,color: Colors.purple),)),

      footer: Container(
        child: Text(" Price:${pizzaitem.price}\$",textAlign: TextAlign.center,style: TextStyle(fontSize: 22,fontStyle: FontStyle.italic,
        color: Colors.purple[900]),)),
    );
  }
}
