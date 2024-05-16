import 'dart:io';

import 'package:flutter/material.dart';
import 'package:invoice_generator/home_screen.dart';
import 'package:invoice_generator/model/product_list.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> listProducts = [];

  int quantity = 1;

  @override
  void initState() {
    super.initState();
    listProducts = removeDuplicates(listAddToCart);
  }

  // Function to remove duplicate items from a list
  List<CartItem> removeDuplicates(List<CartItem> list) {
    Set<String> uniqueTitles = {}; // Track unique titles
    List<CartItem> uniqueList = []; // List for unique items
    for (var item in list) {
      if (!uniqueTitles.contains(item.product.title)) {
        uniqueTitles.add(item.product.title);
        uniqueList.add(item);
      }
    }
    return uniqueList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent[400],
        centerTitle: true,
        title: const Text(
          'Cart Page',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w700),
        ),
        leading: IconButton(
          onPressed: () {
            setState(() {
              listProducts.clear();
            });
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              createDialogBox();
            },
            icon: const Icon(
              Icons.picture_as_pdf_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (listProducts.isEmpty)
            const Expanded(
              flex: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // SizedBox(height: 90,),
                  Center(
                    child: Text(
                      'Add Some Products',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: ListView.builder(
              itemCount: listProducts.length,
              itemBuilder: (context, index) {
                CartItem element = listProducts[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              element.product.title,
                              style: const TextStyle(
                                  fontSize: 30, color: Colors.black),
                            ),
                            Text(
                              'Price : \$${element.product.price.toString()}',
                              style: const TextStyle(
                                  fontSize: 25, color: Colors.grey),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    element.quantity++;
                                  });
                                },
                                icon: const Icon(Icons.add)),
                            Text(
                              element.quantity.toString(),
                              style: const TextStyle(fontSize: 25),
                            ),
                            IconButton(
                                onPressed: () {
                                  if (element.quantity > 1) {
                                    setState(() {
                                      element.quantity--;
                                    });
                                  }
                                },
                                icon: const Icon(Icons.remove)),
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              removeFromCart(index);
                            },
                            icon: const Icon(Icons.delete))
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Subtotal : ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '\$${getSubtotal().toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery : ',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '\$${getDelivery().toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'GST Total (15%):',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        '\$${getGSTTotal().toStringAsFixed(2)}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total (including GST): ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$${getTotalPrice().toStringAsFixed(2)}',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void removeFromCart(int index) {
    setState(() {
      listProducts.removeAt(index);
    });
  }

  double getSubtotal() {
    double subtotal = 0;
    for (var item in listProducts) {
      subtotal += item.product.price * item.quantity;
    }
    return subtotal;
  }

  double getGSTTotal() {
    return getSubtotal() * 0.15; // 15% GST rate
  }

  double getDelivery() {
    double subtotal1 = getSubtotal();
    if (subtotal1 > 1 && subtotal1 <= 10) {
      return 2;
    } else if (subtotal1 > 10 && subtotal1 <= 25) {
      return 5;
    } else if (subtotal1 > 25 && subtotal1 <= 50) {
      return 8;
    } else {
      return 0;
    }
  }

  double getTotalPrice() {
    return getSubtotal() + getGSTTotal() + getDelivery();
  }

  void createDialogBox() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Create PDF'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancel',
                    style: TextStyle(fontSize: 25),
                  )),
              TextButton(
                  onPressed: () {
                    createPdf();
                  },
                  child: const Text(
                    'Create',
                    style: TextStyle(fontSize: 25),
                  )),
            ],
          );
        });
  }

  Future<void> createPdf() async {
    final pdf = pw.Document();
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Center(
            child: pw.Column(
              children: [
                pw.Text('INVOICE GENERATOR',
                    style: pw.TextStyle(fontSize: 30,fontWeight: pw.FontWeight.bold)),
                pw.Divider(),
                pw.Row(children: [
                  pw.Text('BILLED TO:',
                      style: pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                  pw.Spacer(),
                  pw.Text('Kevin H Panchal',
                      style: const pw.TextStyle(fontSize: 15)),
                ]),
                pw.SizedBox(height: 5),
                pw.Row(children: [
                  pw.Text('Pay TO:',
                      style:  pw.TextStyle(fontSize: 15,fontWeight: pw.FontWeight.bold)),
                  pw.Spacer(),
                  pw.Text('Ahmedabad',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.SizedBox(height: 5),
                pw.Row(children: [
                  pw.Text('Bank:',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('HDFC bank',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.SizedBox(height: 5),
                pw.Row(children: [
                  pw.Text('Account Name:',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('Random Name',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.SizedBox(height: 5),
                pw.Row(children: [
                  pw.Text('IFSC:',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('HDFC001515151',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.SizedBox(height: 5),
                pw.Row(children: [
                  pw.Text('Account Number:',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('154225 1510200',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.SizedBox(height: 15),


                pw.Padding(
                  padding: const pw.EdgeInsets.all(0),
                  child: pw.Row(
                    crossAxisAlignment: pw.CrossAxisAlignment.start,
                    mainAxisAlignment: pw.MainAxisAlignment.start,
                    children: [
                      pw.Column(
                        mainAxisAlignment: pw.MainAxisAlignment.start,
                        crossAxisAlignment: pw.CrossAxisAlignment.start,
                        children: [
                          pw.Row(
                              crossAxisAlignment: pw.CrossAxisAlignment.center,
                              mainAxisAlignment: pw.MainAxisAlignment.center,
                              children: [
                                pw.Text('Product Name'),
                                pw.SizedBox(width: 180),
                                pw.Text('Price'),
                                pw.SizedBox(width: 155),
                                pw.Text('Quantity'),
                              ]),
                        ],
                      ),
                      pw.SizedBox(width: 10),
                    ],
                  ),
                ),
                pw.Divider(),
                pw.ListView.builder(
                    itemBuilder: (context, index) {
                      return pw.Padding(
                          padding: const pw.EdgeInsets.only(top: 0),
                          child: pw.Column(children: [
                            pw.Row(children: [
                              pw.Text(listProducts[index].product.title),
                              pw.Spacer(),
                              // pw.SizedBox(width: 150),
                              pw.Text(
                                  listProducts[index].product.price.toString()),
                              pw.Spacer(),
                              pw.Text(listProducts[index].quantity.toString()),
                            ]),
                            pw.Divider(),
                          ]));
                    },
                    itemCount: listProducts.length),
                pw.Row(children: [
                  pw.Text('SubTotal',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('\$${getSubtotal().toStringAsFixed(2)}',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.Row(children: [
                  pw.Text('Delivery(Get free Delivery on bill above \$50)',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('\$${getDelivery().toStringAsFixed(2)}',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.Row(children: [
                  pw.Text('GST Total(15%)',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('\$${getGSTTotal().toStringAsFixed(2)}',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.Divider(),
                pw.Row(children: [
                  pw.Text('Total',
                      style:  pw.TextStyle(fontSize: 15)),
                  pw.Spacer(),
                  pw.Text('\$${getTotalPrice().toStringAsFixed(2)}',
                      style:  pw.TextStyle(fontSize: 15,)),
                ]),
                pw.SizedBox(height: 50),
                pw.Text('Payment is requird within 14 business days of invoice date. Please send remittance to hello@rellygreatsite.com.'),
                pw.SizedBox(height: 50),
                pw.Text('Thank you for your business'),
              ],
            ),
          ); // Center
        },
      ),
    ); //
    final bytes = await pdf.save();
    final Directory appDocumentsDir = await getApplicationDocumentsDirectory();
    final file = File('${appDocumentsDir.path}/Invoice_Generator.pdf');
    print(appDocumentsDir.path);
    await file.writeAsBytes(bytes);

    Printing.sharePdf(bytes: bytes);
    // Printing.layoutPdf(onLayout: (PdfPageFormat format){
    //   return bytes;
    // });
    }
}
