import 'package:flutter/material.dart';
import 'package:flutter_widget_layout/food_app/widgets/Product_item.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  children: [
                    ProductItem(
                      name: "banana",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                    ProductItem(
                      name: "avacado",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                    ProductItem(
                      name: "apple",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                    ProductItem(
                      name: "mango",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                    ProductItem(
                      name: "kiwi",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                    ProductItem(
                      name: "coconut",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                    ProductItem(
                      name: "cherry",
                      stock: "1000 ready stock",
                      price: "\$15",
                    ),
                    Divider(color: Colors.amber),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
