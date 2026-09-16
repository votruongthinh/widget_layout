import 'package:flutter/material.dart';
import 'package:flutter_widget_layout/shop_app/data/product_data.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 63, 86),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              // =========================
              // HEADER
              // =========================
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Explore",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      const Text(
                        'Find product easier here',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const BackButton(color: Colors.white),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // =========================
              // PRODUCT LIST
              // =========================
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 16),
                  itemCount: bestSellerItems.length,

                  itemBuilder: (context, index) {
                    final item = bestSellerItems[index];

                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15),

                      child: Container(
                        height: 220,

                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),

                        child: Column(
                          children: [
                            // =========================
                            // IMAGE
                            // =========================
                            Expanded(
                              child: Container(
                                width: double.infinity,

                                decoration: BoxDecoration(
                                  color: Colors.blueGrey[400],

                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),

                                child: const Column(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: [
                                    Icon(
                                      Icons.image_outlined,
                                      size: 55,
                                      color: Colors.white,
                                    ),

                                    SizedBox(height: 5),

                                    Text(
                                      "Image Here",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // =========================
                            // PRODUCT NAME
                            // =========================
                            SizedBox(
                              height: 50,
                              width: double.infinity,

                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 12,
                                ),

                                child: Text(
                                  item['name'],

                                  maxLines: 1,

                                  overflow: TextOverflow.ellipsis,

                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
