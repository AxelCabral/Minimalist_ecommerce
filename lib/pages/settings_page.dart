import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSwitched = false;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Settings'),
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
              margin: const EdgeInsets.only(top: 20),
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  width: 700,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Text(
                          'Dark Mode',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Switch(value: isSwitched, onChanged: (value) {}),
                      )
                    ],
                  ),
                ),
              ))),
    );
  }
}
