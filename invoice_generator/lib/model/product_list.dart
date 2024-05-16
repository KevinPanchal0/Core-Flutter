// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  String title;
  int price;
  int quantity;

  Products({
    required this.title,
    required this.price,
    required this.quantity,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    title: json["title"],
    price: json["price"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "price": price,
    "quantity": quantity,
  };
}

class CartItem {
  final Products product; // Product in the cart
  int quantity; // Quantity of the product in the cart

  CartItem({required this.product, this.quantity = 1}); // Default quantity is 1
}