import 'package:flutter/material.dart';
import 'package:invoice_generator/cart_page.dart';

import 'model/product_list.dart';

List<CartItem> listAddToCart = [];
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Products> productList = [
    Products(title: 'Usb Cable', price: 2, quantity: 1),
    Products(title: 'C to C cable', price: 5, quantity: 1),
    Products(title: 'Hdmi cable', price: 7, quantity: 1),
    Products(title: 'Hands free', price: 15, quantity: 1),
    Products(title: 'Airpods pro', price: 20, quantity: 1),
    Products(title: 'Case cover', price: 40, quantity: 1),
    Products(title: 'Power bank', price: 80, quantity: 1),
    Products(title: 'Headphone', price: 90, quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        centerTitle: true,
        title: const Text(
          'Invoice Generator',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const CartPage()));
              },
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 25,
              ))
        ],
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final products = productList[index];
                return Card(
                  elevation: 3,
                  color: index%2==0? Colors.redAccent[200]: Colors.redAccent[100] ,
                  child: ListTile(
                    // tileColor: Colors.redAccent[100],
                    title: Text(
                      productList[index].title,
                      style: const TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    subtitle: Text(
                      'Price : \$${productList[index].price.toString()}',
                      style:
                      const TextStyle(color: Colors.white70, fontSize: 25),
                    ),

                    trailing: IconButton(
                        onPressed: () {
                          addToCart(products);
                        },
                        icon: const Icon(Icons.add_shopping_cart,size: 37,color: Colors.white,)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addToCart(Products products){
    CartItem cartItem = CartItem(product: products);
    listAddToCart.add(cartItem);
  }

}