class Product {
  int qty;
  final String id;
  final String title;
  final String description;
  final int price;
  final String rating;
  final String stock;
  final String brand;
  final String category;
  final dynamic images;


  Product({this.qty=0,required this.id, required this.title, required this.description, required this.price, required this.rating, required this.stock, required this.brand, required this.category, required this.images});

}

final List<Product> arrProducts = [
  Product(
      id: '1',
      qty: 0,
      title: 'iPhone 15',
      description: 'An apple mobile which is nothing like apple',
      price: 899,
      rating: '4.69',
      stock: '94',
      brand: 'Apple',
      category: 'SmartPhones',
      images: 'assets/Iphone15.png'
  ),
  Product(
      id: '2',
      qty: 0,
      title: 'iPhone X',
      description: 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with',
      price: 899,
      rating: '4.79',
      stock: '94',
      brand: 'Apple',
      category: 'SmartPhones',
      images: 'assets/iphone-x.png'
  ),
  Product(
      id: '3',
      qty: 0,
      title: 'Samsung Universe 9',
      description: 'Samsung new variant which goes beyond Galaxy to the Universe',
      price: 1249,
      rating: '4.09',
      stock: '36',
      brand: 'Samsung',
      category: 'SmartPhones',
      images: 'assets/Samsung_Universe_9.png'
  ),
  Product(
      id: '4',
      qty: 0,
      title: 'OPPOF19',
      description: 'OPPO F19 is officially announced on April 2021.',
      price: 280,
      rating: '4.3',
      stock: '123',
      brand: 'OPPO',
      category: 'SmartPhones',
      images: 'assets/OPPO_F19.png'
  ),
  Product(
      id: '5',
      qty: 0,
      title: 'Huawei P30',
      description: 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.',
      price: 499,
      rating: '4.09',
      stock: '32',
      brand: 'OPPO',
      category: 'SmartPhones',
      images: 'assets/Huawei_P30.png'
  ),
  Product(
      id: '6',
      qty: 0,
      title: 'MacBook Pro',
      description: 'MacBook Pro 2021 with mini-LED display may launch between September, November',
      price: 1749,
      rating: '4.57',
      stock: '83',
      brand: 'Apple',
      category: 'Laptops',
      images: 'assets/Macbook.png'
  ),
  Product(
      id: '7',
      qty: 0,
      title: 'Samsung Galaxy Book',
      description: 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched',
      price: 1499,
      rating: '4.25',
      stock: '50',
      brand: 'Samsung',
      category: 'Laptops',
      images: 'assets/Samsung-Galaxy-Book.jpg'
  ),
  Product(
      id: '8',
      qty: 0,
      title: 'Microsoft Surface Laptop 4',
      description: 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.',
      price: 1499,
      rating: '4.43',
      stock: '68',
      brand: 'Microsoft Surface',
      category: 'Laptops',
      images: 'assets/Microsoft-Surface-Laptop-4.jpg'
  ),
  Product(
      id: '9',
      qty: 0,
      title: 'Infinix INBOOK',
      description: 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty',
      price: 1099,
      rating: '4.54',
      stock: '96',
      brand: 'Infinix',
      category: 'Laptops',
      images: 'assets/Infinix-inbook.jpg'
  ),
  Product(
      id: '10',
      qty: 0,
      title: 'HP Pavilion 15-DK1056WM',
      description: 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10',
      price: 1099,
      rating: '4.43',
      stock: '89',
      brand: 'HP Pavilion',
      category: 'Laptops',
      images: 'assets/HP-Pavilion-15-DK1056WM.jpg'
  ),
];

class CartItem {
  final Product product; // Product in the cart
  int quantity; // Quantity of the product in the cart

  CartItem({required this.product, this.quantity = 1}); // Default quantity is 1
}
