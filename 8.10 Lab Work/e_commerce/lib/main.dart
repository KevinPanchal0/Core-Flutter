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

  String selectedCategory = 'All'; // Default selected category
  List<Product> filteredProducts = []; // Filtered product list

  @override
  void initState(){
        super.initState();
        filteredProducts.addAll(arrProducts);
  }

  void filterProducts(String category) {
    setState(() {
      if (category == 'All') {
        // Show all products
        filteredProducts.clear();
        filteredProducts.addAll(arrProducts);
      } else {
        // Filter products based on selected category
        filteredProducts.clear();
        filteredProducts.addAll(arrProducts.where((product) => product.category == category).toList());
      }
      selectedCategory = category; // Update selected category
    });
  }

  // final List<String> categories= [
  //   'SmartPhones',
  //   'Laptops',
  // ];
  // List<String> selectedCategories = [];
  @override
  Widget build(BuildContext context) {
    // final filterProducts = arrProducts.where((arrProducts){
    //   return selectedCategories.isEmpty  ||
    //   selectedCategories.contains(arrProducts.category);
    // }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('E-commerce',style: TextStyle(fontFamily: 'EncodeSansExpanded',color: Colors.white,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
            Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
              },
                icon: const Icon(Icons.shopping_cart,color: Colors.white,)),
          )
      ],
        shadowColor: Colors.grey,
        elevation: 8,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(10),
              dropdownColor: Colors.grey[200],
              value: selectedCategory,
              onChanged: (String? newValue) {
                if (newValue != null) {
                  filterProducts(newValue);
                }
              },
              items: const [
                DropdownMenuItem(
                  value: 'All',
                  child: Text('All Categories'),
                ),
                DropdownMenuItem(
                  value: 'SmartPhones',
                  child: Text('SmartPhones'),
                ),
                DropdownMenuItem(
                  value: 'Laptops',
                  child: Text('Laptops'),
                ),
                // Add more categories as needed
              ],

              style: const TextStyle(
                fontFamily: 'EncodeSansExpanded',
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                itemCount: filteredProducts.length,
                  itemBuilder: (context, index){
                  final product = filteredProducts[index];
                    return Card(
                      elevation: 8.0,
                      margin: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push((context), MaterialPageRoute(builder: (context)=> Details(id: product.id,qty: product.qty as int, title: product.title, description: product.description, price: product.price as int, rating: product.rating, stock: product.stock, brand: product.brand, category: product.category,images: product.images, product: product,)));
                        },
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          title: Text(product.title,style: const TextStyle(fontFamily: 'EncodeSansExpanded'),),
                          subtitle:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rating ${product.rating}',style: const TextStyle(fontFamily: 'EncodeSansExpanded',),),
                              IconButton(onPressed: (){
                                addToCart(product);
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Product added to cart'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
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

void addToCart(Product product) {
  // Add the product to the cart
  CartItem cartItem = CartItem(product: product);
  cartList.add(cartItem);
}

List<CartItem> cartList = [];

class Details extends StatefulWidget {
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
   const Details({super.key, required this.id, required this.qty,required this.title, required this.description, required this.price, required this.rating, required this.stock, required this.brand, required this.category, this.images, required this.product, });

    final Product product;
  @override
  State<Details> createState() => _DetailsState();
}


class _DetailsState extends State<Details> {
int _quantity = 1;


void _decrementQuantity() {
  if (_quantity > 1) {
    setState(() {
      _quantity--;
    });
  }
}

void _incrementQuantity() {
  setState(() {
    _quantity++;
  });
}

void _addToCart() {
  // Add the product to the cart with the selected quantity
  CartItem cartItem = CartItem(product: widget.product, quantity: _quantity);
  cartList.add(cartItem);

  ScaffoldMessenger.of(context).showSnackBar(
    const SnackBar(
      content: Text('Product added to cart'),
      duration: Duration(seconds: 2),
    ),
  );
}
double cartAmount = 0;
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
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CartPage(),
                ),
              );
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
            Center(child: Image.asset(widget.images.toString(),height: 390,)),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(widget.title,style: const TextStyle(fontSize: 30,fontFamily: 'EncodeSansExpanded'),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('by ${widget.brand}',style: const TextStyle(fontFamily: 'EncodeSansExpanded'),),
            ),
            // Spacer(),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('\$${widget.price.toString()}',style: const TextStyle(fontSize: 30,color: Colors.redAccent,fontFamily: 'EncodeSansExpanded'),),
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
                  child: Text(widget.description,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
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
                  child: Text(widget.stock,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
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
                  child: Text(widget.rating,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
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
                  child: Text(widget.category,style: const TextStyle(fontSize: 15,fontFamily: 'EncodeSansExpanded'),),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Quantity',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,fontFamily: 'EncodeSansExpanded'),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                color: Colors.blue,
                  icon: const Icon(Icons.remove,size: 30,),
                  onPressed: _decrementQuantity,
                ),
                Text(_quantity.toString(),style: const TextStyle(fontFamily: 'EncodeSansExpanded',fontSize: 25),),
                IconButton(
                  color: Colors.blue,
                  icon: const Icon(Icons.add,size: 30,),
                  onPressed: _incrementQuantity,
                ),
                const SizedBox(width: 20,),
                SizedBox(
                    height: 60,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: (){
                        _addToCart();
                      },
                      child: const Icon(Icons.add_shopping_cart_outlined,size: 30,color: Colors.redAccent,),
                    ),
                ),
                const SizedBox(),
              ],
            ),
            const SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          final cartItem = cartList[index];
          return ListTile(
            title: Text(cartItem.product.title),
            subtitle: Text('\$${cartItem.product.price}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(cartItem.quantity.toString()),
                IconButton(
                  icon: const Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                    removeFromCart(index);
                    });
                  },
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total: \$${calculateTotalPrice()}'),
              ElevatedButton(
                onPressed: () {
                  // Implement checkout functionality
                  // You can navigate to a checkout page or show a confirmation dialog
                },
                child: const Text('Checkout'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateQuantity(int index, int newQuantity) {
    cartList[index].quantity = newQuantity;
  }

  void removeFromCart(int index) {
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        title: const Text('Confirm Deletion',style: TextStyle(fontFamily: 'EncodeSansExpanded'),),
        content: const Text('Are you sure you want to remove this item from the cart?',style: TextStyle(fontFamily: 'EncodeSansExpanded'),),
        actions: [
          TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Cancle',style: TextStyle(fontFamily: 'EncodeSansExpanded'),)),
          TextButton(onPressed: (){
            setState(() {
              cartList.removeAt(index);
            });
            Navigator.pop(context);
          }, child: const Text('Delete')),
        ],
      );
    });
  }

  int calculateTotalPrice() {
    int total = 0;
    for (var cartItem in cartList) {
      total += cartItem.product.price * cartItem.quantity;
    }
    return total;
  }
}