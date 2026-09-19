import 'package:flutter/material.dart';
import 'package:flutter_widget_layout/shop_app/pages/product_detail.dart';
import '../data/product_data.dart';

class MyStarted extends StatelessWidget {
  const MyStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Started")),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const _Header(),
                const SizedBox(height: 20),
                const _SearchBar(),
                const SizedBox(height: 20),

                // =========================
                // IMAGE HERO
                // =========================
                const _HeroBanner(),

                const SizedBox(height: 10),

                // DOT
                const _PageDots(),
                const SizedBox(height: 20),

                _categoryGrid(),
                const SizedBox(height: 10),

                const _BestSellerHeader(),
                const SizedBox(height: 10),
                _bestSellerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _categoryGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      children: [
        _categoryItem(Icons.music_note_outlined, "Music"),
        _categoryItem(Icons.business_outlined, "Property"),
        _categoryItem(Icons.sports_esports_outlined, "Game"),
        _categoryItem(Icons.phone_android, "Gadget"),

        _categoryItem(Icons.tv_outlined, "Electronic"),
        _categoryItem(Icons.cut_outlined, "Property"),
        _categoryItem(Icons.local_shipping_outlined, "Game"),
        _categoryItem(Icons.book_outlined, "Book"),
      ],
    );
  }

  Widget _bestSellerList() {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bestSellerItems.length,
        itemBuilder: (context, index) {
          final item = bestSellerItems[index];

          return Container(
            width: 155,
            margin: const EdgeInsets.only(right: 10),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // IMAGE
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[400],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.image_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          "Image Here",
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 5),

                  // NAME
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['name'],
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            ...List.generate(
                              5,
                              (index) => const Icon(
                                Icons.star,
                                size: 12,
                                color: Colors.amber,
                              ),
                            ),

                            const SizedBox(width: 4),

                            Text(
                              item['starRate'].toString(),
                              style: const TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // STAR
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _categoryItem(IconData icon, String name) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(icon, color: const Color.fromARGB(255, 59, 131, 191)),
        ),
        const SizedBox(height: 5),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}

class _BestSellerHeader extends StatelessWidget {
  const _BestSellerHeader();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Best Seller",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),

        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductDetail()),
            );
          },
          child: Text(
            "See all",
            style: TextStyle(color: Colors.amber, fontSize: 16),
          ),
        ),
      ],
    );
  }
}

class _PageDots extends StatelessWidget {
  const _PageDots();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(radius: 4, backgroundColor: Colors.orange),
        SizedBox(width: 6),
        CircleAvatar(radius: 4, backgroundColor: Colors.grey),
        SizedBox(width: 6),
        CircleAvatar(radius: 4, backgroundColor: Colors.grey),
        SizedBox(width: 6),
        CircleAvatar(radius: 4, backgroundColor: Colors.grey),
      ],
    );
  }
}

class _HeroBanner extends StatelessWidget {
  const _HeroBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blueGrey[400],
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.image_outlined, size: 55, color: Colors.white),
          SizedBox(height: 5),
          Text("Image Hero", style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  const _SearchBar();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Row(
              children: [
                const SizedBox(width: 12),
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 8),
                const Text("Search Item", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 45,
          decoration: BoxDecoration(
            color: Colors.amber[100],
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.tune_rounded, color: Colors.grey),
        ),
      ],
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome back", style: TextStyle(fontSize: 15)),
            const SizedBox(height: 2),
            const Text(
              "Sammantha William",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Stack(
          children: [
            IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_outlined),
            ),

            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
