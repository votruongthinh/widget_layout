import 'package:flutter/material.dart';
import 'package:flutter_widget_layout/food_app/pages/food_get_started.dart';
import 'package:flutter_widget_layout/shop_app/pages/shop_get_started.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose 1 in 2 pages in this layout")),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              const Text(
                "Grocery app",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyGetStarted()),
                  );
                },
                child: Text("Vào xem"),
              ),
              const Text(
                "Shop app",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyStarted()),
                  );
                },
                child: Text("Vào xem"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
