import 'package:flutter/material.dart';
import 'package:flutter_widget_layout/food_app/pages/food_home.dart';

class MyGetStarted extends StatelessWidget {
  const MyGetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green),
      body: SafeArea(
        child: Column(
          children: [_lout_bg(), const SizedBox(height: 20), _lout_started()],
        ),
      ),
    );
  }
}

class _lout_started extends StatelessWidget {
  const _lout_started({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Container(
                child: Text(
                  "Complete your\ngrocery need\neasilly",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHome()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Get Started"),
                      const SizedBox(width: 10),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _lout_bg extends StatelessWidget {
  const _lout_bg({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.elliptical(200, 40),
            bottomRight: Radius.elliptical(200, 40),
          ),
        ),
      ),
    );
  }
}
