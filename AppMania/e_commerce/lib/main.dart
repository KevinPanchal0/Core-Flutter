import 'package:flutter/material.dart';
import 'package:flutter_cart/cart.dart';
import 'all_products.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var cart = FlutterCart();
  await cart.initializeCart(isPersistenceSupportEnabled: true);
runApp(const Myapp());
}


class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  final List<String> categories= [
    'SmartPhones',
    'Laptops'
  ];
  List<String> selectedCategories = [];
  @override
  Widget build(BuildContext context) {
    final filterProducts = arrProducts.where((arrProducts){
      return selectedCategories.isEmpty  ||
      selectedCategories.contains(arrProducts.category);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce',style: TextStyle(fontFamily: 'EncodeSansExpanded',color: Colors.white,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){

            },
                icon: const Icon(Icons.shopping_cart,color: Colors.white,)),
          )
      ],
        shadowColor: Colors.grey,
        elevation: 8,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: categories.map((category) => FilterChip(
                  selected: selectedCategories.contains(category),
                  label: Text(category,style: const TextStyle(
                    fontFamily: 'EncodeSansExpanded'
                  ),
                  ),
                  onSelected: (selected){
                    setState(() {
                      if (selected){
                        selectedCategories.add(category);
                      }
                      else{
                        selectedCategories.remove(category);
                      }
                    });
                  }),
              ).toList(),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: filterProducts.length,
                  itemBuilder: (context, index){
                  final product = filterProducts[index];
                    return Card(
                      elevation: 8.0,
                      margin: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push((context), MaterialPageRoute(builder: (context)=> Details(id: product.id,qty: product.qty as int, title: product.title, description: product.description, price: product.price as int, rating: product.rating, stock: product.stock, brand: product.brand, category: product.category,images: product.images,)));
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          title: Text(product.title,style: const TextStyle(fontFamily: 'EncodeSansExpanded'),),
                          subtitle:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rating ${product.rating}',style: const TextStyle(fontFamily: 'EncodeSansExpanded',),),
                              IconButton(onPressed: (){

                              }, icon: const Icon(Icons.add_shopping_cart)),
                            ],
                          ),
                          leading: Image.asset(product.images,scale: 10,),
                        ),
                      ),
                    );
                  }
              )
          )
        ],
      ),
    );
  }
}

class Details extends StatelessWidget {
  final String id;
  final int qty;
  final String title;
  final String description;
  final int price;
  final String rating;
  final String stock;
  final String brand;
  final String category;
  final dynamic images;
  const Details({super.key, required this.id, required this.qty,required this.title, required this.description, required this.price, required this.rating, required this.stock, required this.brand, required this.category, this.images, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Product Detail',style: TextStyle(
          fontFamily: 'EncodeSansExpanded',
          color: Colors.white
        ),),
        leading: IconButton(icon: const Icon(Icons.chevron_left,size: 35,color: Colors.white,),onPressed: (){
          Navigator.pop(context);
        },),
        backgroundColor: Colors.black,
        elevation: 8,
        shadowColor: Colors.grey[200],
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              if(qty == 0) {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    CartPage(id: id,
                        qty: qty,
                        title: title,
                        description: description,
                        price: price,
                        rating: rating,
                        stock: stock,
                        brand: brand,
                        category: category)));
              }
             },
                icon: const Icon(Icons.shopping_cart,color: Colors.white,)),
          )
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(images.toString(),height: 390,)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(title,style: const TextStyle(fontSize: 30,fontFamily: 'EncodeSansExpanded'),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('by $brand',style: const TextStyle(fontFamily: 'EncodeSansExpanded'),),
            ),
            // Spacer(),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('\$${price.toString()}',style: const TextStyle(fontSize: 30,color: Colors.redAccent,fontFamily: 'EncodeSansExpanded'),),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Description',style: TextStyle(fontFamily: 'EncodeSansExpanded',fontWeight: FontWeight.w600,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Stock',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontFamily: 'EncodeSansExpanded'),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(stock,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Rating',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(rating,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Category',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontFamily: 'EncodeSansExpanded'),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(category,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  height: 60,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      print('tapped');
                      if(qty ==0){
                        qty == 1;
                      }
                    },
                     child: const Padding(
                       padding: EdgeInsets.all(8.0),
                       child:  Text(
                          'Add to Cart',
                         style: TextStyle(
                           fontSize: 20
                         ),
                        ),
                     ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}



class CartPage extends StatefulWidget {
  final String id;
  final int qty;
  final String title;
  final String description;
  final int price;
  final String rating;
  final String stock;
  final String brand;
  final String category;
  final dynamic images;

  const CartPage(
      {super.key, required this.id, required this.qty, required this.title, required this.description, required this.price, required this.rating, required this.stock, required this.brand, required this.category, this.images});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Text(widget.title),
    );
  }
}
