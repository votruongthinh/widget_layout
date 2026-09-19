import 'package:flutter/material.dart';
import 'package:flutter_widget_layout/food_app/widgets/product_item.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [_button_back(), _info_item_detail()]),
        ),
      ),
    );
  }
}

class _info_item_detail extends StatelessWidget {
  const _info_item_detail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ProductItem(name: "banana", stock: "1000 ready stock", price: "\$15"),
          Divider(color: Colors.amber),
          ProductItem(
            name: "avacado",
            stock: "1000 ready stock",
            price: "\$15",
          ),
          Divider(color: Colors.amber),
          ProductItem(name: "apple", stock: "1000 ready stock", price: "\$15"),
          Divider(color: Colors.amber),
          ProductItem(name: "mango", stock: "1000 ready stock", price: "\$15"),
          Divider(color: Colors.amber),
          ProductItem(name: "kiwi", stock: "1000 ready stock", price: "\$15"),
          Divider(color: Colors.amber),
          ProductItem(
            name: "coconut",
            stock: "1000 ready stock",
            price: "\$15",
          ),
          Divider(color: Colors.amber),
          ProductItem(name: "cherry", stock: "1000 ready stock", price: "\$15"),
          Divider(color: Colors.amber),
        ],
      ),
    );
  }
}

class _button_back extends StatelessWidget {
  const _button_back({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ],
    );
  }
}
