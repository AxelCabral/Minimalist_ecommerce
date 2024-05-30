import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          // go to cart button
          IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
      body: Center(
          child: Container(
        width: 500,
        alignment: Alignment.topLeft,
        child: const Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                'About',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Text(
                'Minimal stylish ecommerce using clean aspects, builded on a flutter masterclass from Mitch Koko, connect with backend to use.',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
